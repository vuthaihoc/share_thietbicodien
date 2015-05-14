<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class CategoriesController extends AdminAppController{
    
    public $uses = array('Admin.User', 'Admin.Group', 'Category');
    
    public function beforeFilter() {
        parent::beforeFilter();
        //$this->loadModel("Category");
    }

    public function admin_index(){
        
        _prepair_data();
        
        debug($all_categories); die;
    }
    
    public function admin_add(){
        $this->Category->create_draft($this->Auth->user('id'));
        $this->redirect(array(
            'action' => 'edit',
            'admin' => true,
            $this->Category->getInsertID()
        ));
    }
    
    public function admin_edit($id){
        
        
        $this->set('category_id', $id);
        $this->_prepair_data();
    }
    
    public function admin_move_up($id){
        $this->_prepair_data();
    }
    
    public function admin_move_down($id){
        $this->_prepair_data();
    }
    
    private function _prepair_data(){
        $all_categories = $this->Category->find('all', array(
            'order' => array(
                'lft asc'
            )
        ));
            
        $tree_categories = $this->Category->generateTreeList(
          null,
          null,
          null,
          '+++'
        );
        
        $this->set('all_categories', $all_categories);
        $this->set('tree_categories', $tree_categories);
    }
    
}