<?php
/**
 * Admin AppModel
 *
 * @author Luis Fred G S <luis.fred.gs@gmail.com>
 * @category Model
 * @package Plugin.Admin
 */
App::uses('AppModel', 'Model'); 
App::uses('AclBehavior', 'Model/Behavior');

class AdminAppModel extends AppModel{
	
    public function create_draft($user_id){
        $init_data = array();
        if($this->hasField('created_at')){
                $init_data['created_at'] = date('Y-m-d H:i:s', time());
            }
        if($this->hasField('user_id')){
                $init_data['user_id'] = $user_id;
            }
        if($this->hasField('is_draft')){
                $init_data['is_draft'] = 1;
            }
        if($this->hasField('amount')){
                $init_data['amount'] = 100;
            }
        $this->save($init_data, FALSE);
    }
    
    public function afterSave($created, $options = array()) {
        parent::afterSave($created, $options);
        $this->read();
        if(!$created){
            if($this->hasField('is_draft') 
                    && $this->data[$this->name]['is_draft'] == 1){
                    $this->data[$this->name]['is_draft'] = 0;
                    $this->save();
                }
        }
            
    }
}

 ?>