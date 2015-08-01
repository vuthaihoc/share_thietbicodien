<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App::uses('AdminAppModel', 'Admin.Model');

class Category extends AdminAppModel{
    
    public $hasMany = array(
        'Product' => array(
            'dependence' => true
        )
    );


    public $actsAs = array(
                        'Tree',
                        'Containable',
                        'Media.Media' => array(
                            // You can set up the path where your medias will be saved (optional)
                            'path' => 'img/uploads/%y/%m/%f',

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
				'message' => 'Name fields is required.',
				'last' => true,
			)
        )
    );
    
    public function buildPageUrl($id){
        $title = $this->field('name', array('id' => $id));
        return array(
            'plugin' => null,
            'controller' => 'san_pham',
            'action' => 'category',
            'id' => $id,
            'slug' => slug($title)
        );
    }
    
}
