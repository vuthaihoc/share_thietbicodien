<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses('AppModel', 'Model');

class ContentModel extends AppModel{
    
    
    public function create_draft($user_id){
        $init_data = array('created_at' => date('UTC', time()), 'user_id' => $user_id);
        $this->save($init_data, FALSE);
    }
    
}

