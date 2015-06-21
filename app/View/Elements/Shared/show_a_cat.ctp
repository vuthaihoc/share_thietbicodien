<?php 
if(isset($cat_info)):
    $cat_title = $cat_info['Category']['name'];
    //pr($cat_info);
    $cat_products = $cat_info['products'];
    $cat_cover = "";
    if(isset($cat_info['Category']["thumb"])){
        $cat_cover = $cat_info['Category']["thumb"];
    }elseif(count($cat_info['Media'])){
        $cat_media = reset($cat_info['Media']);
        $cat_cover = $cat_media['file'];
    }
    if($cat_cover != ""){
        $cat_cover = $this->Html->assetUrl($cat_cover);
    }
?>

<div class="a_box">
    <div class="box_header">
        <h2> <span class="glyphicon glyphicon-th"></span> <?php echo $cat_title; ?></h2>
    </div>
    <div class="box_body">
        <?php if($cat_cover != ""){ ?>
        <div class="body-left hidden-sm hidden-xs col-lg-3 col-md-3 cat-cover-vertical">
            <div>
                <img src="<?php echo $cat_cover; ?>"/>
            </div>
        </div>
        <?php } ?>
        <div class="body-right <?php echo $cat_cover == "" ? "" : "col-lg-9 col-md-9"; ?>">
            <?php 
            foreach ($cat_products as $key => $value) {
                $this->Tera->showProduct($value, 4);
            }
            ?>
            
        </div>

        <div class="clear"></div>
    </div>
</div>
<?php
endif;