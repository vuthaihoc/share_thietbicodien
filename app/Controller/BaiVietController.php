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
class BaiVietController extends FrontController {

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
        $slug = $this->request->param('slug');
        $page = $this->Page->find('first', array(
            'conditions' => array(
                'Page.is_draft' => 0,
                'Page.id' => $id
            )
        ));
        // check page exist
        if(!$page){
            $this->redirect("/", 404);
        }
        // check slug
        $page_slug = slug($page['Page']['title']);
        if( $page_slug != $slug){
            $this->redirect(array(
                'id' => $id,
                'slug' => $page_slug
            ), 404);
        }
        $page_children = $this->Page->find('all', array(
            'conditions' => array(
                'Page.is_draft' => 0,
                'Page.parent_id' => $id
            ),
            'order' => array("created_at" => "desc")
        ));
        
        $this->set('page' , $page);
        $this->set('page_title', $page['Page']['title']);
        $this->set('page_children', $page_children);
    }

    public function category() {
        
    }

    public function beforeRender() {
        parent::beforeRender();
        
    }

}
