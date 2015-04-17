<?php
/**
 * Page Model
 *
 * @author HocVT
 * @category Model
 * @package Plugin.Admin
 */
App::uses('AdminAppModel', 'Admin.Model');

class Page extends AdminAppModel{
    
    public $validate = array(
		
		'title' => array(
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Title fields is required.',
				'last' => true,
			),			
		),
		'content' => array(
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Content fields is required.',
				'last' => true,
			),			
		)
    );
    
    public $actsAs = array(
        'Containable',
        'Media.Media' => array(
            // You can set up the path where your medias will be saved (optional)
            'path' => 'img/uploads/%y/%m/%f',
            
                'resize_width' => 1200,
                'resize_height' => 1200,
        )
    );
    
}