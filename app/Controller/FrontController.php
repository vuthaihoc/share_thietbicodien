<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses("AppController", 'Controller');


class FrontController extends AppController{
    
    public $uses = array(
        'Category',
        'Page',
        'User',
        'Product',
        'Slide',
        'Manufacturer'
    );
    
    public $components = array('Cookie', 'Session', 'Paginator');
    
    public $helpers = array(
        'Html', 'Js', 'Time', 'Tera', 
        'Paginator' => array('className' => 'BoostCake.BoostCakePaginator')
    );
    
    public function beforeRender() {
        parent::beforeRender();
        if ($this->request->params['controller'] == 'home' 
                && $this->request->params['action'] == "display") {
            //mark this page as homepage
            $this->set("is_home_page", true);
        }
        //menu
        $categories = $this->Category->find('threaded', array(
            'recursive' => -1,
            'order' => array("lft" => "asc")
        ));
        $this->set('categories', $categories);
        
        $top_link = Cache::read('top_menu_links');
        if($top_link === false){
            $top_link = array();
            $top_link_db = $this->Page->find('all', array(
                'conditions' => array(
                    'is_draft' => 0,
                    'showmenu' => array("top_1", "top_2", "top_3", "top_4")
                ),
                "recursive" => -1
            ));
            
            foreach($top_link_db as $k=>$v){
                $top_link[$v['Page']['showmenu']] = $v;
            }
            Cache::write("top_menu_links", $top_link);
        }
        $this->set('top_links', $top_link);
        
        
        // boottom menu
        $bottom_pages = Cache::read('bottom_pages');
        if($bottom_pages === false){
            $bottom_pages = $this->Page->find('all', array(
                'conditions' => array(
                    'is_draft' => 0,
                    'showmenu' => "home_bottom"
                ),
                "recursive" => -1
            ));
            Cache::write('bottom_pages', $bottom_pages);
        } 
        $this->set("bottom_pages", $bottom_pages);
        
        //new product
        
        //first level product sample
        
    }
    
}

