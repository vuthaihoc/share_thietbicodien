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
        $init_data = array('created_at' => date('UTC', time()), 'user_id' => $user_id);
        $this->save($init_data, FALSE);
    }
    
}

 ?>