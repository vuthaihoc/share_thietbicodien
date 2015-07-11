<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

App::uses("AppHelper", "View");

class TeraHelper extends AppHelper{
    
    public $helpers = array(
        "Html"
    );


    /**
     * 
     * @param type $product
     * @param type $a_row 6 4 3 2
     */
    public  function showProduct($product, $a_row = 6){
        $price = $product['Product']['price'];
        $title = $product['Product']['name'];
        $image = "/img/updating.gif";
        if(isset($product["Product"]['thumb'])){
            $image = $product["Product"]['thumb'];
        }elseif(count($product["Media"])){
            $first_image = reset($product["Media"]);
            $image = $first_image['icon'];
        }
        $link = $this->Html->url(
                array(
                    'controller' => "san_pham",
                    "action" => 'index',
                    "id" => $product['Product']['id'],
                    "slug" => $this->build_slug($title)
                ));
        $image = $this->assetUrl($image);
        
        $class_lg = " col-lg-" . intval(12/$a_row);
        $class_md = " col-md-" . intval(12*1.5/$a_row);
        $class_sm = " col-sm-" . intval(12*2/$a_row);
        $class_xs = " col-xs-" . intval(12*3/$a_row);
        $class_cols = $class_lg . $class_md . $class_sm . $class_xs;
        
        ?>
        <div class="a_item <?php echo $class_cols; ?>">
            <div class="a_item_container">
                <div class="img">
                    <a href="<?php echo $link; ?>">
                        <div class="vimage" style="background-image: url(<?php echo $image; ?>)"></div>
                    </a>
                </div>
                <div class="caption">
                    <a href="<?php echo $link; ?>"><?php echo $title; ?></a>
                </div>
                <div class="price">
                    <?php echo $this->priceFormat($price); ?>
                </div>
            </div>
        </div>    
        <?php
    }
    
    public function priceFormat($price = 0, $unit = "VND"){
        if($price == "" || $price == 0){
            return __("Liên hệ");
        }
        if($price == -1){
            return __("Xem báo giá");
        }
        $price = intval($price);
        return number_format($price) . " " . $unit;
    }
    
    public function build_slug($str) {
        $str = preg_replace('/(à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ)/', 'a', $str);
        $str = preg_replace('/(è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ)/', 'e', $str);
        $str = preg_replace('/(ì|í|ị|ỉ|ĩ)/', 'i', $str);
        $str = preg_replace('/(ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ)/', 'o', $str);
        $str = preg_replace('/(ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ)/', 'u', $str);
        $str = preg_replace('/(ỳ|ý|ỵ|ỷ|ỹ)/', 'y', $str);
        $str = preg_replace('/(đ)/', 'd', $str);
        $str = preg_replace('/(À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ)/', 'A', $str);
        $str = preg_replace('/(È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ)/', 'E', $str);
        $str = preg_replace('/(Ì|Í|Ị|Ỉ|Ĩ)/', 'I', $str);
        $str = preg_replace('/(Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ)/', 'O', $str);
        $str = preg_replace('/(Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ)/', 'U', $str);
        $str = preg_replace('/(Ỳ|Ý|Ỵ|Ỷ|Ỹ)/', 'Y', $str);
        $str = preg_replace('/(Đ)/', 'D', $str);
        $str = str_replace(' ', '-', str_replace('&*#39;','',$str));
        $str = preg_replace('/[^a-zA-Z0-9\-_.]/', '', $str);
        return $str;
    }
    
    
}