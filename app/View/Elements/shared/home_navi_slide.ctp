<div class="container" id="home_navi_slide">
    <div class="row">
        <div class="col-md-3">
            <?php echo $this->element('shared/left_menu'); ?>
        </div>
        <div class="col-md-9">
            <?php if($slides){
                $slide_images = $slides['Media'];
                if(count($slide_images)){
                    $counter = 0;
                ?>
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <?php foreach ($slide_images as $key => $value) {?>
                    <li data-target="#carousel-example-generic" 
                        data-slide-to="<?php echo $counter; ?>" 
                        class=" <?php echo $counter == 0 ? "active" : "" ?>"></li>
                                    <?php $counter++;} ?>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <?php $counter = 0;
                    foreach ($slide_images as $key => $value) {?>
                    <div class="item <?php echo $counter == 0 ? "active" : "" ?>">
                        <img src="<?php echo $this->Html->assetUrl($value['file']); ?>" alt="<?php echo $value['name']; ?>">
                        <div class="carousel-caption">
                            <?php echo $value['name']; ?>
                        </div>
                    </div>
                    <?php $counter++;} ?>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only"><?php echo __("Trước"); ?></span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only"><?php echo __("Sau"); ?></span>
                </a>
            </div>
            
                <?php
            }} ?>
        </div>
    </div>
</div>
