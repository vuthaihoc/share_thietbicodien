<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


App::uses('AdminAppModel', 'Admin.Model');

class Category extends AdminAppModel{
    
    public $actsAs = array(
                        'Tree',
                        'Containable',
                        'Media.Media' => array(
                            // You can set up the path where your medias will be saved (optional)
                            'path' => 'img/uploads/%y/%m/%f',

                                'resize_width' => 1200,
                                'resize_height' => 1200,
                        )
                    );
    
}
