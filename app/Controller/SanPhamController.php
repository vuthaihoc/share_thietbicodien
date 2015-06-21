<?php

/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
App::uses('FrontController', 'Controller');

/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link http://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class SanPhamController extends FrontController {

    /**
     * This controller does not use a model
     *
     * @var array
     */
    public $uses = array(
        'Category',
        'Page',
        'User',
        'Product',
        'Slide',
        'Manufacturer'
    );
    
    //public $name = 'Page';
    
    //public $layout = 

    /**
     * Displays a view
     *
     * @return void
     * @throws NotFoundException When the view file could not be found
     * 	or MissingViewException in debug mode.
     */
    public function index() {
        $id = $this->request->param('id');
        $product = $this->Product->find('first', array(
            'conditions' => array(
                'Product.is_draft' => 0,
                'Product.id' => $id
            )
        ));
        
        if(!$product)return $this->_not_found ();
        
        $product_category = $product['Product']['category_id'];
        $category = $this->Category->findById($product_category);
        
        $relative_products = $this->Product->find('all', array(
            'conditions' => array(
                'Product.is_draft' => 0,
                'Product.category_id' => $product_category
            ),
            'order' => array("Product.created_at" => "desc"),
            'limit' => 6
        ));
        
        $this->set('product' , $product);
        $this->set('category' , $category);
        $this->set('relative_products', $relative_products);
    }
    
    public function category(){
        
    }

    public function beforeRender() {
        parent::beforeRender();
        
    }

}
