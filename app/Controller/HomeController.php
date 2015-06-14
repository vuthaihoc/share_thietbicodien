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
        $path = func_get_args();

        $count = count($path);
        if (!$count) {
            return $this->redirect('/');
        }
        $page = $subpage = $title_for_layout = null;

        if (!empty($path[0])) {
            $page = $path[0];
        }
        if (!empty($path[1])) {
            $subpage = $path[1];
        }
        if (!empty($path[$count - 1])) {
            $title_for_layout = Inflector::humanize($path[$count - 1]);
        }
        $this->set(compact('page', 'subpage', 'title_for_layout'));

        try {
            $this->render(implode('/', $path));
        } catch (MissingViewException $e) {
            if (Configure::read('debug')) {
                throw $e;
            }
            throw new NotFoundException();
        }
    }

    public function beforeRender() {
        parent::beforeRender();
        // new product 
        $new_products = $this->Product->find("all", array(
            "conditions" => array(
                "Product.is_draft" => 0
            ),
            "order" => array(
                "Product.updated_at" => "desc",
                "Product.created_at" => "desc"
            )
        ));
        $this->set("new_products", $new_products);
        //slide 
        $slides = $this->Slide->find('first', array(
            'conditions' => array(
                "is_draft" => 0,
                "position" => "home_main"
            ),
            'order' => array(
                "updated_at" => "desc"
            )
        ));
        $this->set("slides", $slides);
        // category
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
                    "is_draft" => 0,
                    "category_id" => $_cat_ids
                ),
                "order" => array("updated_at" => "desc"),
                "limit" => 12
            ));
            $root_categories[$i]['products'] = $cat_products;
        }

        $this->set("root_categories", $root_categories);
    }

}
