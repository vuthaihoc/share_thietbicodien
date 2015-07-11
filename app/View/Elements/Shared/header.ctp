<div class="container-fluid" id="top_links">
    <div class="container">
        <div id="top_links_container" class="row">
            <div class="col-md-5 col-sm-6 col-xs-12">
                <a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-phone-alt"></span>
                    04.62539598
                </a>

                <a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-envelope"></span>
                    infoscttech@gmail.com
                </a>

                <!--a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-time"></span>
                    Hỗ trợ khách hàng 24/7
                </a-->
            </div>
            <div class="col-md-5 col-sm-5 col-xs-12" id="top_search_box">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Tìm kiếm</span>
                    <input type="text" class="form-control" placeholder="Nhập từ khóa rồi ấn Enter" aria-describedby="basic-addon1">
                </div>
            </div>
            <div class="col-md-2 text-right col-sm-1 col-xs-12">
                <?php if($this->Session->read('Auth.User.id') != null && $this->Session->read('Auth.User.id') > 0){ ?>
                <a href="<?php echo $this->Html->url("/"); ?>">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="hidden-sm"><?php echo $this->Session->read('Auth.User.name') ?></span>
                </a>
                <?php } else { ?>
                <a href="<?php echo $this->Html->url(array('controller'=>'users', 'action' => 'login', 'plugin' => 'admin', 'admin' => true)); ?>">
                    <span class="glyphicon glyphicon-user"></span>
                    <span class="hidden-sm">Đăng nhập</span>
                </a>
                <?php } ?>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="container" id="top_banner">
    <div class="row">
        <div class="col-md-4 col-sm-6 col-xs-12 text-center">
            <a href="<?php echo $this->Html->url("/"); ?>">
                <?php echo $this->Html->image('logo_lagre.png', array("height" => 100)); ?>
            </a>
            <span id="site_slogan">thietbicodienSCT.com</span>
        </div>
        <div class="col-md-8 col-sm-6" id="top_flash_item">
            <div class="col-md-3 col-xs-6">
                <div class="item_border">
                    <a href="<?php echo isset($top_links) && isset($top_links['top_1']) ? $this->Html->url(array("controller" => "bai_viet", "action" => "index", "id" => $top_links["top_1"]["Page"]["id"], "slug" => $this->Tera->build_slug($top_links["top_1"]["Page"]["title"]))) : "#" ?>">
                    <?php echo $this->Html->image('muahang5.png'); ?>
                    <span>Mua hàng linh hoạt</span>
                    </a>
                </div>
                
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="item_border">
                    <a href="<?php echo isset($top_links) && isset($top_links['top_2']) ? $this->Html->url(array("controller" => "bai_viet", "action" => "index", "id" => $top_links["top_2"]["Page"]["id"], "slug" => $this->Tera->build_slug($top_links["top_2"]["Page"]["title"]))) : "#" ?>">
                    <?php echo $this->Html->image('giaohang.png'); ?>
                    <span>Giao hàng nhanh chóng</span>
                    </a>
                </div>
                
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="item_border">
                    <a href="<?php echo isset($top_links) && isset($top_links['top_3']) ? $this->Html->url(array("controller" => "bai_viet", "action" => "index", "id" => $top_links["top_3"]["Page"]["id"], "slug" => $this->Tera->build_slug($top_links["top_3"]["Page"]["title"]))) : "#" ?>">
                    <?php echo $this->Html->image('thanhtoan.png'); ?>
                    <span>Thanh toán thông minh</span>
                    </a>
                </div>
                
            </div>
            <div class="col-md-3 col-xs-6">
                <div class="item_border">
                    <a href="<?php echo isset($top_links) && isset($top_links['top_4']) ? $this->Html->url(array("controller" => "bai_viet", "action" => "index", "id" => $top_links["top_4"]["Page"]["id"], "slug" => $this->Tera->build_slug($top_links["top_4"]["Page"]["title"]))) : "#" ?>">
                    <?php echo $this->Html->image('baogia.png'); ?>
                    <span>Báo giá</span>
                    </a>
                </div>
                
            </div>
        </div>
    </div>
</div>
<?php if($is_home_page == true){ ?>
<?php echo $this->element('shared/top_bottom_line'); ?>
<?php }else{ ?>
<?php echo $this->element('shared/top_menu'); ?>
<?php }
