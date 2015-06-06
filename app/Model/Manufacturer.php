<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App::uses('AdminAppModel', 'Admin.Model');

class Manufacturer extends AdminAppModel{
    
    public $actsAs = array(
                        'Containable',
                        'Media.Media' => array(
                            // You can set up the path where your medias will be saved (optional)
                            'path' => 'img/manufacturer/%id',

                                'resize_width' => 200,
                                'resize_height' => 200,
                        )
                    );
    
    public $validate = array(
        'name' => array(
            'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Name fields is required.',
				'last' => true,
			)
        )
    );
    
}
