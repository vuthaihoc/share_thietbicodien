<?php //pr($root_categories); ?>
<div id="body_home" class="row">
    <?php if(count($new_products)){ ?>
    <div class="a_box">
        <div class="box_header">
            <h2> <span class="glyphicon glyphicon-equalizer"></span> <?php echo __("Sản phẩm mới"); ?></h2>
        </div>
        <div class="box_body">
            <?php 
            foreach ($new_products as $key => $value) {
                        $this->Tera->showProduct($value); 
                    }
            ?>
            <div class="clear"></div>
        </div>
    </div>
    <?php } ?>
    <?php foreach($root_categories as $value){
        echo $this->element('shared/show_a_cat', array('cat_info'=> $value));
    }?>
    
</div>