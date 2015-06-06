<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class SlidesController extends AdminAppController
{


    public $positions = array(
        'no' => 'No',
        'home_main' => 'HomeMain'
    );


    /**
     * Models
     *
     * @var array
     **/
    public $uses = array('Admin.User', 'Admin.Group', 'Slide');

    
    /**
     * Controller callback - beforeFilter()
     * 
     * @return void
     */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->main_model = $this->Slide;
            $this->set('title_for_layout', __d('admin', 'Slide'));
            $this->set('positions', $this->positions);
    }
    
    /**
     * admin_index
     */
    public function admin_index(){
        $slides = $this->Slide->find('all');
        $this->set('slides', $slides);
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
        //create new page with an id and mark as draft
        $this->Slide->create_draft($this->Auth->user('id'));
        
        $inserted_id = $this->Slide->getInsertID();
        
        $this->redirect(array('action' => 'edit', 'admin' => true,$inserted_id));
        
        return;
        
//        if ( !empty( $this->request->data ) ) {
//			$this->Page->create();			
//			if ( $this->Page->save( $this->request->data ) ) {
//				$this->Session->setFlash(__d('admin', 'Page saved.'), 'flash_success');
//				$this->redirect(array('action' => 'index'));
//			}
//		}
    }
    
    public function admin_edit($id = null){
        
        if ( !$id ) {
			$this->Session->setFlash(__d('admin', 'Invalid ID'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
        if ( !empty( $this->request->data ) ) {
                if ($this->Slide->save($this->request->data) ) {
                        $this->Session->setFlash(__d('admin', 'Slide was saved.'), 'flash_success');
                }
        }  else {
            $this->request->data = $this->Slide->read(null, $id);
        }
        
        $this->set('slide_id', $id);
    }
    
    public function _can_delete($id) {
        return true;
    }
}

