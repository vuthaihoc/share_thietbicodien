<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class PagesController extends AdminAppController
{
    /**
     * Models
     *
     * @var array
     **/
    public $uses = array('Admin.User', 'Admin.Group', 'Page');

    /**
     * Controller callback - beforeFilter()
     * 
     * @return void
     */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->set('title_for_layout', __d('admin', 'Pages'));
    }
    
    /**
     * admin_index
     */
    public function admin_index(){
        
    }
    
    /**
     * index
     */
    public function index(){
        
    }

    /**
     * admin_add
     */
    public function admin_add(){
        if ( !empty( $this->request->data ) ) {
			$this->Page->create();			
			if ( $this->Page->save( $this->request->data ) ) {
				$this->Session->setFlash(__d('admin', 'Page saved.'), 'flash_success');
				$this->redirect(array('action' => 'index'));
			}
		}
    }
    
    public function admin_edit($id = null){
        if ( !$id ) {
			$this->Session->setFlash(__d('admin', 'Invalid ID'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
		if ( !empty( $this->request->data ) ) {
			if ( $this->User->save($this->request->data) ) {
				$this->Session->setFlash(__d('admin', 'Page was saved.'), 'flash_success');
			}
		}
        $this->request->data = $this->Page->read(null, $id);
        $this->set('page_id', $id);
    }
}

