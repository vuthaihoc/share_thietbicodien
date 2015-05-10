<?php
/**
 * Application level Controller
 *
 * This file is application-wide controller file. You can put all
 * application-wide controller-related methods here.
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

App::uses('Controller', 'Controller');

/**
 * Application Controller
 *
 * Add your application-wide methods in the class below, your controllers
 * will inherit them.
 *
 * @package		app.Controller
 * @link		http://book.cakephp.org/2.0/en/controllers.html#the-app-controller
 */
class AppController extends Controller {
    public $components = array(
        'Auth',
        'Acl',
        'Admin.AclPermissions',
        'Session'
    );
    
    public $helpers = array(
        'Form', 'Html', 'Js', 'Time','Media.Media'
    );


    public function beforeFilter() {
        parent::beforeFilter();
        $this->AclPermissions->filter();
        
        //assign some default value
        $this->set("is_home_page", false);
        
    }
    
    public function canUploadMedias($model, $id){
        //if($model == 'User' & $id = $this->Session->read('Auth.User.id')){
            return true; // Everyone can edit the medias for their own record
        //}
        //return $this->Session->read('Auth.User.role') == 'admin'; // Only admins can upload medias for everything else
    }
    
    public function beforeRender() {
        parent::beforeRender();
    }
}
