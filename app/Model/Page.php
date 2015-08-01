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
    
    public function buildPageUrl($id){
        $title = $this->field('title', array('id' => $id));
        return array(
            'plugin' => null,
            'controller' => 'bai_viet',
            'action' => 'index',
            'id' => $id,
            'slug' => slug($title)
        );
    }
    
}