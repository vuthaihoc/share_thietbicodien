<?php echo $this->element('shared/top_bottom_line'); ?>
<div class="container">
    <div class="col-md-3">
        <?php echo $this->element('shared/left_menu'); ?>
    </div>
    <div class="col-md-9">
        <h1 id="js-overview" class="page-header">
            <?php echo $page['Page']['title']; ?>
        </h1>
        <div class="page-content">
            <?php echo $page['Page']['content']; ?>
        </div>
        <div class="page-content">
            <?php 
            
            foreach($page_children as $key => $value){ 
                $title = $value['Page']['title'];
                $description = $value['Page']['description'];
                if($description == ""){
                    $description = $this->Text->truncate(strip_tags($value['Page']['content']), 300);
                }
                if(isset($value['Page']['thumb'])){
                    $image = $value['Page']['thumb'];
                }else{
                    if(count($value['Media'])){
                        
                        $image = "";
                        
                    }else $image = "";
                }
                $link = $this->Html->url(array(
                    "controller" => "bai_viet",
                    "action" => "index",
                    "id" => $value['Page']["id"],
                    "slug" => $this->Html->build_slug($title)
                    ));
                ?>
            <div class="media">
                <div class="media-left">
                    <a href="<?php echo $link; ?>">
                        <?php if($image != ""){ 
                            echo $this->Html->image($image, array("height" => 100, "width" => 100, "class" => "media-object"));
                        }?>
                    </a>
                </div>
                <div class="media-body">
                    <h4 class="media-heading"><a href="<?php echo $link; ?>"><?php echo $title; ?></a></h4>
                    <?php echo $description; ?>
                    
                </div>
            </div>
            <?php } ?>
        </div>
    </div>
</div>