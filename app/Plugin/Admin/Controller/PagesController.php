<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class PagesController extends AdminAppController
{
    
    public $positions = array(
                                'no' => 'Không dùng',
                                'home_bottom' => "Menu chân trang chủ"
                            );
    
    
    /**
     * Models
     *
     * @var array
     **/
    public $uses = array('Admin.User', 'Admin.Group', 'Page');

    public $paginate = array(
        'Page' => array('limit' => 20,
                    'order' => array(
                        'Page.created_at' => 'desc'
                    )
            )
    );
    
    /**
     * Controller callback - beforeFilter()
     * 
     * @return void
     */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->set('title_for_layout', __d('admin', 'Trang'));
            $this->set('positions', $this->positions);
    }
    
    /**
     * admin_index
     */
    public function admin_index(){
        $page = 1;
        
        
        
        $this->Components->load('Paginator');
        $pages = $this->Paginator->paginate('Page');
        $this->set('pages', $pages);
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
        $this->Page->create_draft($this->Auth->user('id'));
        
        $inserted_id = $this->Page->getInsertID();
        
        $this->redirect(array('action' => 'edit', 'admin' => true,$inserted_id));
        
        return;
        
//        if ( !empty( $this->request->data ) ) {
//			$this->Page->create();			
//			if ( $this->Page->save( $this->request->data ) ) {
//				$this->Session->setFlash(__d('admin', 'Đã luu trang.'), 'flash_success');
//				$this->redirect(array('action' => 'index'));
//			}
//		}
    }
    
    public function admin_edit($id = null){
        
        $all_page = $this->Page->find('list', array(
            'conditions' => array('is_draft' => 0,
                'id !=' => $id),
                'field' => array('title')
        ));
        
        
        
        if ( !$id ) {
			$this->Session->setFlash(__d('admin', 'ID không hợp lệ'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
        if ( !empty( $this->request->data ) ) {
                if ($this->Page->save($this->request->data) ) {
                        $this->Session->setFlash(__d('admin', 'Đã lưu trang.'), 'flash_success');
                        $this->redirect(array("action" => "index"));
                }
        }  else {
            $this->request->data = $this->Page->read(null, $id);
        }
        
        $this->set('page_id', $id);
        $this->set('all_page', $all_page);
    }
}

