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
    
    public function beforeRender() {
        parent::beforeRender();
        if ($this->request->params['action'] == "display") {
            //mark this page as homepage
            $this->set("is_home_page", true);
        }
        //menu
        $categories = $this->Category->find('threaded', array(
            'recursive' => -1,
            'order' => array("lft" => "asc")
        ));
        $this->set('categories', $categories);
        
        // boottom menu
        $bottom_pages = $this->Page->find('all', array(
            'conditions' => array(
                'is_draft' => 0,
                'showmenu' => "home_bottom"
            ),
            "recursive" => -1
        ));
        $this->set("bottom_pages", $bottom_pages);
        
        //new product
        
        //first level product sample
        
    }
    
}

