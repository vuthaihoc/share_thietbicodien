<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AdminAppController', 'Admin.Controller');

class ProductsController extends AdminAppController
{


    /**
     * Models
     *
     * @var array
     **/
    public $uses = array('Admin.User', 'Admin.Group', 'Product', 'Category', 'Manufacturer');
    private $cat = null;


    /**
     * Controller callback - beforeFilter()
     * 
     * @return void
     */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->main_model = $this->Product;
            $this->_get_cat();
            $this->set('cat', $this->cat);
            $this->set('title_for_layout', __d('admin', 'Sản phẩm'));
            $this->_prepair_data();
    }
    
    /**
     * admin_index
     */
    public function admin_index(){
        
        $conditions = array();
        
        $named_params = $this->request->param('named');
        
        if(isset($named_params['cat'])){
            $conditions['category_id'] = $named_params['cat'];
            $cat_name = $this->Category->field('name', array('id' => $named_params['cat']));
            $this->set('title_for_layout', __d('admin', 'Sản phẩm :: ' . $cat_name));
        }
        
        $this->Paginator->settings = array('limit' => 10,
                    'order' => array(
                        'Product.created_at' => 'desc',
                        'Product.updated_at' => 'desc'
                    ),
                    'conditions' => $conditions
            );
        $products = $this->Paginator->paginate('Product');
        $this->set('products', $products);
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
        $this->Product->create_draft($this->Auth->user('id'));
        
        $inserted_id = $this->Product->getInsertID();
        
        $this->redirect(array('action' => 'edit', 'admin' => true,$inserted_id, 'cat' => $this->cat));
        
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
			$this->Session->setFlash(__d('admin', 'ID không hợp lệ'), 'flash_error');
			$this->redirect(array('action' => 'index'));
		}
        if ( !empty( $this->request->data ) ) {
                if ($this->Product->save($this->request->data) ) {
                        $this->Session->setFlash(__d('admin', 'Đã lưu thông tin sản phẩm.'), 'flash_success');
                        if($this->cat){
                            $this->redirect(array('action' => 'index', 'cat' => $this->cat));
                        }else{
                            $this->redirect(array('action' => 'index'));
                        }
                }
        }  else {
            $new_roduct = $this->Product->read(null, $id);
            if($this->cat)$new_roduct['Product']['category_id'] = $this->cat;
            $this->request->data = $new_roduct;
        }
        
        $this->set('product_id', $id);
    }
    
    public function _can_delete($id) {
        return true;
    }
    
    private function _prepair_data(){
        $all_categories = $this->Category->find('all', array(
            'order' => array(
                'lft asc'
            )
        ));
        
        $tree_categories = $this->Category->generateTreeList(null,null,null,
          '---'
        );
        
        $flag = 0;
        $options_categories = [];
        foreach ($tree_categories as $key => $value) {
            if($all_categories[$flag]['Category']['is_draft'] == 0){
                $options_categories[$key] = $value;
            }
            $flag++;
        }
        
        $this->set('options_categories', $options_categories);
        
        $this->set('manufacturers', $this->Manufacturer->find('list', array(
            'conditions' => array('is_draft' => 0)
        )));
    }
    
    public function _get_cat(){
        $named_params = $this->request->param('named');
        
        if(isset($named_params['cat'])){
            $this->cat = $named_params['cat'];
        }else{
            $this->cat = null;
        }
        return $this->cat;
    }
}

