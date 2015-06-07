<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class ManufacturersController extends AdminAppController
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
    public $uses = array('Admin.User', 'Admin.Group', 'Manufacturer');

    
    /**
     * Controller callback - beforeFilter()
     * 
     * @return void
     */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->main_model = $this->Manufacturer;
            $this->set('title_for_layout', __d('admin', 'Hãng sản xuất'));
    }
    
    /**
     * admin_index
     */
    public function admin_index(){
        $manufacturers = $this->Manufacturer->find('all');
        $this->set('manufacturers', $manufacturers);
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
        $this->Manufacturer->create_draft($this->Auth->user('id'));
        
        $inserted_id = $this->Manufacturer->getInsertID();
        
        $this->redirect(array('action' => 'edit', 'admin' => true,$inserted_id));
        
        return;
        
//        if ( !empty( $this->request->data ) ) {
//			$this->Page->create();			
//			if ( $this->Page->save( $this->request->data ) ) {
//				$this->Session->setFlash(__d('admin', 'Đã lưu trang.'), 'flash_success');
//				$this->redirect(array('action' => 'index'));
//			}
//		}
    }
    
    public function admin_edit($id = null){
        
        if ( !$id ) {
			$this->Session->setFlash(__d('admin', 'ID không hợp lệ'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
        if ( !empty( $this->request->data ) ) {
                if ($this->Manufacturer->save($this->request->data) ) {
                        $this->Session->setFlash(__d('admin', 'Thông tin nhà sản xuất đã được lưu.'), 'flash_success');
                        $this->redirect(array('action' => 'index', 'admin' => true));
                }
        }  else {
            $this->request->data = $this->Manufacturer->read(null, $id);
        }
        
        $this->set('manufacturer_id', $id);
    }
    
    public function _can_delete($id) {
        return true;
    }
}

