<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App::uses('AdminAppModel', 'Admin.Model');

class Product extends AdminAppModel{
    
    public $belongsTo = array(
        'Category',
        'Manufacturer'
    );


    public $actsAs = array(
                        'Containable',
                        'Media.Media' => array(
                            // You can set up the path where your medias will be saved (optional)
                            'path' => 'img/product/%id',

                                'resize_width' => 1200,
                                'resize_height' => 1200,
                        )
                    );
    
    public $validate = array(
        'name' => array(
            'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Tên sản phẩm không được bỏ trống.'
			)
        ),
        'category_id' => array(
            'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Hãy chọn một nhóm sản phẩm.'
			)
        )
    );
    
}
