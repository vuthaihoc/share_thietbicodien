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
class HomeController extends FrontController {

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

    /**
     * Displays a view
     *
     * @return void
     * @throws NotFoundException When the view file could not be found
     * 	or MissingViewException in debug mode.
     */
    public function display() {
        $this->set('page_title', __("Trang chủ"));
    }
    
    public function search(){
        $this->set("is_home_page", FALSE);
    }

    public function beforeRender() {
        parent::beforeRender();
        // new product 
        $new_products = Cache::read('new_products');
        if($new_products === false){
            $new_products = $this->Product->find("all", array(
                "conditions" => array(
                    "Product.is_draft" => 0
                ),
                "order" => array(
                    "Product.updated_at" => "desc",
                    "Product.created_at" => "desc"
                ),
                "limit" => 12
            ));
            Cache::write('new_products', $new_products);
        } 
        $this->set("new_products", $new_products);
        //slide 
        $slides = $this->Slide->find('first', array(
            'conditions' => array(
                "Slide.is_draft" => 0,
                "Slide.position" => "home_main"
            ),
            'order' => array(
                "Slide.updated_at" => "desc"
            )
        ));
        $this->set("slides", $slides);
        // category
        $root_categories = Cache::read('root_categories');
        if($root_categories === false){
            $root_categories = $this->Category->find("all", array(
                'conditions' => array(
                    'OR' => array(
                        "Category.parent_id" => 0,
                        "Category.parent_id is NULL"
                    ),
                    "is_draft" => 0
                ),
                'contain' => "Media",
                'recursive' => -1,
                'order' => array("lft" => "asc")
            ));
            $total_root_cat = count($root_categories);
            for ($i = 0; $i < $total_root_cat; $i++) {
                $curent_cat = $root_categories[$i];
                $_cat_ids = array($curent_cat['Category']['id']);
                $cat_childrent = $this->Category->children($curent_cat['Category']['id'], false, "id");
                //pr($cat_childrent);die();
                foreach ($cat_childrent as $key => $value) {
                    $_cat_ids[] = $value['Category']['id'];
                }
                $cat_products = $this->Product->find("all", array(
                    'conditions' => array(
                        "Product.is_draft" => 0,
                        "Product.category_id" => $_cat_ids
                    ),
                    "order" => array("Product.updated_at" => "desc"),
                    "limit" => 12
                ));
                $root_categories[$i]['products'] = $cat_products;
            }
            Cache::write('root_categories', $root_categories);
        }
        $this->set("root_categories", $root_categories);
    }

}
