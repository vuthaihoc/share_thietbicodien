<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App::uses('AdminAppModel', 'Admin.Model');

class Product extends AdminAppModel{
    
    public $belongsTo = array(
        'Category' => array(
            'counterCache' => true,
            'counterScope' => array(
                'Product.is_draft' => 0
                )
        ),
        'Manufacturer'
    );


    public $actsAs = array(
                        'Containable',
                        'Media.Media' => array(
                            // You can set up the path where your medias will be saved (optional)
                            'path' => 'img/product/%id',

                                'resize_width' => 1200,
                                'resize_height' => 1200,
                        ),
                        'Sitemap.Sitemap' => array(
                            'primaryKey' => 'id', // Default primary key field
                            'loc' => 'buildPageUrl', // Default function called that builds a url, passes parameters (Model $Model, $primaryKey)
                            'lastmod' => 'updated_at', // Default last modified field, can be set to FALSE if no field for this
                            'changefreq' => 'daily', // Default change frequency applied to all model items of this type, can be set to FALSE to pass no value
                            'priority' => '0.9', // Default priority applied to all model items of this type, can be set to FALSE to pass no value
                            'conditions' => array(
                                'is_draft' => 0
                            ), // Conditions to limit or control the returned results for the sitemap
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
    
    public function buildPageUrl($id){
        $title = $this->field('name', array('id' => $id));
        return array(
            'plugin' => null,
            'controller' => 'san_pham',
            'action' => 'index',
            'id' => $id,
            'slug' => slug($title)
        );
    }
    
}
