<?php echo $this->element('shared/top_bottom_line'); ?>
<div class="container">
    <div class="col-md-3">
        <?php echo $this->element('shared/left_menu'); ?>
    </div>
    <div class="col-md-9">
        <h1 id="js-overview" class="page-header">
            <?php echo __("Tìm kiếm"); ?>
        </h1>
        <div class="page-content text-content">
            <form action="<?php echo $this->Html->url(array('controller'=>'home', 'action' => 'search')); ?>" method="get">
                <input type="text" 
                           name="q" 
                           class="form-control" 
                           placeholder="<?php echo __("Nhập từ khóa rồi ấn Enter"); ?>" 
                           aria-describedby="basic-addon1"
                           value="<?php echo $this->request->query('q'); ?>">
            </form>
            <script>
                (function() {
                  var cx = '002887477083570069302:itnfxefztqo';
                  var gcse = document.createElement('script');
                  gcse.type = 'text/javascript';
                  gcse.async = true;
                  gcse.src = (document.location.protocol == 'https:' ? 'https:' : 'http:') +
                      '//cse.google.com/cse.js?cx=' + cx;
                  var s = document.getElementsByTagName('script')[0];
                  s.parentNode.insertBefore(gcse, s);
                })();
            </script>
              <gcse:searchresults-only></gcse:searchresults-only>
            
        </div>
        
        <?php if(count($new_products)){ ?>
        <div class="a_box">
            <div class="box_header">
                <h2> <span class="glyphicon glyphicon-equalizer"></span> <?php echo __("Sản phẩm mới"); ?></h2>
            </div>
            <div class="box_body">
                <?php 
                foreach ($new_products as $key => $value) {
                            $this->Tera->showProduct($value, 4); 
                        }
                ?>
                <div class="clear"></div>
            </div>
        </div>
        <?php } ?>
    </div>
</div>