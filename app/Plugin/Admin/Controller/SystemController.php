<?php
/**
 * Users Controller
 *
 * @author Luis Fred G S <luis.fred.gs@gmail.com>
 * @category Controller
 * @package Plugin.Admin
 */
App::uses('AdminAppController', 'Admin.Controller');

class SystemController extends AdminAppController
{
    
    /**
    * Controller callback - beforeFilter()
    * 
    * @return void
    */
    public function beforeFilter()
    {
            parent::beforeFilter();
            $this->set('title_for_layout', __d('admin', 'Các cài đặt hệ thống'));
    }
    
    public function admin_index(){
        
    }
    
    public function admin_clear_all_cache(){
        Cache::clear();
        $this->redirect(array("action" => "index", "admin" => true));
    }
    
    
}