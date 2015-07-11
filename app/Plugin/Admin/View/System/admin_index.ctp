<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo __("Cài đặt Cache") ?></h3>
    </div>
    <div class="panel-body">
        <div>
            <?php echo __("Hãy thận trong với lựa chọn này khi website của bạn có lượng dữ liệu lớn.") ?>
        </div>
        <a class="btn btn-danger" href="<?php echo $this->Html->url(array("action" => "clear_all_cache", "admin" => true)) ?>">Clear CACHE</a>
    </div>
</div>