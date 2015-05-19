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
        $this->_prepair_data();
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
        
        if ( !$id ) {
			$this->Session->setFlash(__d('admin', 'Invalid ID'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
        if ( !empty( $this->request->data ) ) {
                if ($this->Category->save($this->request->data) ) {
                        $this->Session->setFlash(__d('admin', 'Category was saved.'), 'flash_success');
                }
        }
        
        $this->set('category_id', $id);
        $this->request->data = $this->Category->read(null, $id);
        $this->_prepair_data($id);
    }
    
    public function admin_move_up($id){
        $this->_prepair_data();
    }
    
    public function admin_move_down($id){
        $this->_prepair_data();
    }
    
    private function _prepair_data($exclude = 0){
        $all_categories = $this->Category->find('all', array(
            'order' => array(
                'lft asc'
            ),
            'conditions' => array(
                'id !=' => $exclude
            )
        ));
            
        $tree_categories = $this->Category->generateTreeList(
          array(
              'id !=' => $exclude
          ),
          null,
          null,
          '---'
        );
        
        $this->set('all_categories', $all_categories);
        $this->set('tree_categories', $tree_categories);
        $flag = 0;
        $options_categories = [];
        foreach ($tree_categories as $key => $value) {
            if($all_categories[$flag]['Category']['is_draft'] == 0){
                $options_categories[$key] = $value;
            }
            $flag++;
        }
        $this->set('options_categories', $options_categories);
    }
    
}