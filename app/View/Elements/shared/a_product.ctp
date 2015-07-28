<div class="a_item <?php echo $class_cols; ?>">
    <div class="a_item_container">
        <div class="img">
            <a href="<?php echo $link; ?>">
                <div class="vimage img_hover_zoom" data-zoomed="<?php echo $image; ?>">
                    <img class="" src="<?php echo $image; ?>"/>
                </div>
            </a>
        </div>
        <div class="caption">
            <a href="<?php echo $link; ?>" title="<?php echo $title; ?>"><?php echo $title; ?></a>
        </div>
        <div class="price">
            <?php echo $this->Tera->priceFormat($price); ?>
        </div>
    </div>
</div> 