<div class="container" id="page_footer">
    <div class="row">
        <div class="col-sm-6 col-xs-12">
            <a href="<?php echo $this->Html->url("/"); ?>">
                <?php echo $this->Html->image('logo_lagre.png', array("height" => 100)); ?>
            </a>
        </div>
        <div class="col-sm-6 col-xs-12 text-center" id="top_flash_item">
            <?php echo Configure::read('Config.bottom_address'); ?>
            <div>Tel: <?php echo Configure::read('Config.admin_phone'); ?></div>
            <div>Email: <?php echo Configure::read('Config.admin_email'); ?></div>
        </div>
        <div class="clear"></div>
        <div id="footer_counter">
            Lượt truy cập : 1234 | Online : 5
        </div>
    </div>
</div>