<?php
/**
 * Admin AppController
 * @author Luis Fred G S <luis.fred.gs@gmail.com>
 * @category Controller
 * @package Plugin.Admin
 */
App::uses('AppController', 'Controller');

class AdminAppController extends AppController{

	/**
	 * Settings for paginate
	 *
	 * @var array
	 **/
	public $paginate = array(
		"limit" => 10
		);

        public $main_model = null;


                /**
	 * Helpers
	 *
	 * @var array
	 **/
	public $helpers = array(
		'Session',
		'Js',
		'Html' => array('className' => 'BoostCake.BoostCakeHtml'),
		'Form' => array('className' => 'BoostCake.BoostCakeForm'),
                'Paginator' => array('className' => 'BoostCake.BoostCakePaginator'),
                'Tera'
	);

	/**
	 * Components
	 *
	 * @var array
	 **/
	public $components = array(
		'Session',
		'Paginator'
	);

	public function beforeFilter()
	{
            parent::beforeFilter();
            if ( $this->params['plugin'] == 'admin' ) {
                    $this->layout = 'admin';
            }	
	}
        
        public function admin_quick_edit(){
            $return = array("success" => false, "message" => __("Lỗi!"));
            $id = $this->request->data('id');
            
            if(empty($id)){
                $id = $this->request->query('id');
            }
            
            if($this->main_model == NULL){
                $return['message'] = __("Chưa cài đặt model");
                echo json_encode($return);
                exit();
            }
            if(!$this->_quickedit_fields()){
                $return['message'] = __("Chưa hỗ trợ");
                echo json_encode($return);
                exit();
            }
            $fieldList = $this->_quickedit_fields();
            $fieldList = is_array($fieldList) ? $fieldList : array($fieldList);
            $data = array('id' => $id);
            foreach ($fieldList as $v){
                if($this->request->data($v) !== false){
                    $data[$v] = $this->request->data($v);
                }
            }
            $save_check = $this->main_model->save($data, true, $fieldList);
            if($save_check){
                $return['success'] = true;
                $return['message'] = __("Lưu thành công");
                $return['data'] = $data;
                echo json_encode($return);
            }  else {
                $return['message'] = __("Không lưu được bản ghi");
                $return['data'] = $data;
                $return['data1'] = $this->request->data;
                echo json_encode($return); 
            }
            exit();
        }

        public function admin_delete(){
            
            $id = $this->request->param('id');
            
            if($id === FALSE){
                $id = $this->request->params['pass'][0];
            }
            
            if($this->main_model == NULL){
                echo "Please define a main model for delete action";
                exit();
            }  
            
            try{
                if($this->_can_delete($id) === "tree"){
                    $check = $this->main_model->removeFromTree($id, true);
                    if($check){
                        $this->Session->setFlash(__('Đã xóa bản ghi!'),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-success'
                                            ));
                    }  else {
                        $this->Session->setFlash(__('Có lỗi khi xóa!'),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-danger'
                                            ));
                    }
                }elseif ($this->_can_delete($id)) {
                    $check = $this->main_model->delete($id);
                    if($check){
                        $this->Session->setFlash(__('Đã xóa bản ghi!'),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-success'
                                            ));
                    }  else {
                        $this->Session->setFlash(__('Có lỗi khi xóa!'),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-danger'
                                            ));
                    }
                }  else {
                    $this->Session->setFlash(__('Không thể xóa bản ghi này!'),'alert', array(
                                                    'plugin' => 'BoostCake',
                                                    'class' => 'alert-warning'
                                            ));
                }
            }  catch (ErrorException $ex){
                echo $ex->getMessage();
            }
            
            $this->render('adminapp/admin_delete');
            
        }

        public function _can_delete($id){
            return FALSE;
        }
        
        public function _quickedit_fields(){
            return false;
        }
}

 