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
        $this->loadModel('Setting');
        
        if($this->request->data("submit")){
            $data_array = array();
            foreach ($this->request->data as $k => $v){
                if(preg_match("/^setting_\d+$/", $k)){
                    $data_array[] = array(
                        'Setting' => array(
                            'id' => str_replace("setting_", "", $k),
                            'value' => $v
                        )
                    );
                }
            }
            $check_save = $this->Setting->saveAll($data_array, array(
                                'fieldList' => array('value')
                            ));
            if($check_save === true){
                $this->Session->setFlash(__("Lưu thành công cài đặt, hãy xóa cache để thấy thay đổi"),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-success'
                                            ));
            }else{
                $this->Session->setFlash(__("Chưa lưu cài đặt, hãy thử lại."),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-danger'
                                            ));
            }
        }
        $settings = $this->Setting->find("all");
        $this->set('settings', $settings);
    }
    
    public function admin_clear_all_cache(){
        Cache::clear();
        $this->redirect(array("action" => "index", "admin" => true));
    }
    
    
}