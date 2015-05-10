<div class="container-fluid" id="top_links">
    <div class="container">
        <div id="top_links_container">
            <div class="col-md-6">
                <a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-phone-alt"></span>
                    0123 456 789
                </a>

                <a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-envelope"></span>
                    info@thietbicodien.com
                </a>

                <a href="javascript:void(0);" class="">
                    <span class="glyphicon glyphicon-time"></span>
                    Hỗ trợ khách hàng 24/7
                </a>
            </div>
            <div class="col-md-4" id="top_search_box">
                <div class="input-group">
                    <span class="input-group-addon" id="basic-addon1">Tìm kiếm</span>
                    <input type="text" class="form-control" placeholder="Nhập từ khóa rồi ấn Enter" aria-describedby="basic-addon1">
                </div>
            </div>
            <div class="col-md-2 text-right">
                <a href="javascript:void(0);">
                    <span class="glyphicon glyphicon-user"></span>
                    Đăng nhập/Đăng ký
                </a>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>
<div class="container" id="top_banner">
    <div class="row">
        <div class="col-md-4">
            <?php echo $this->Html->image('logo_lagre.png', array("height" => 100)); ?>
            <span id="site_slogan">thietbicodienSCT.com</span>
        </div>
        <div class="col-md-8" id="top_flash_item">
            <div class="col-md-3">
                <?php echo $this->Html->image('muahang5.png'); ?>
                Mua hàng linh hoạt
            </div>
            <div class="col-md-3">
                <?php echo $this->Html->image('giaohang.png'); ?>
                Giao hàng nhanh chóng
            </div>
            <div class="col-md-3">
                <?php echo $this->Html->image('thanhtoan.png'); ?>
                Thanh toán thông minh
            </div>
            <div class="col-md-3">
                <?php echo $this->Html->image('baogia.png'); ?>
                Báo giá
            </div>
        </div>
    </div>
</div>
<?php if($is_home_page == true){ ?>
<?php echo $this->element('shared/top_bottom_line'); ?>
<?php }else{ ?>
<?php echo $this->element('shared/top_menu'); ?>
<?php }
