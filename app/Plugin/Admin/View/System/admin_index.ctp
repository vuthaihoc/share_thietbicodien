<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo __("Cài đặt Cache") ?></h3>
    </div>
    <div class="panel-body">
        <div class="">
            <?php echo __("Hãy thận trong với lựa chọn này khi website của bạn có lượng dữ liệu lớn.") ?>
        </div>
        <div class="list-group">
            <a class="list-group-item list-group-item-danger" 
                href="<?php echo $this->Html->url(array(
                                             "action" => "clear_all_cache", 
                                             "admin" => true)) ?>">
                <?php echo __("Xóa bộ nhớ CACHE"); ?>
            </a>
            <a class="list-group-item list-group-item-warning" 
                href="<?php echo $this->Html->url(array(
                                             "action" => "update_counter", 
                                             "admin" => true)) ?>">
                <?php echo __("Cập nhật bộ đếm sản phẩm"); ?>
            </a>
        </div>   
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo __("Cài đặt biến") ?></h3>
    </div>
    <div class="panel-body">
        <form method="post" action="">
            <div>
                <?php echo __("Sau khi thay đổi hãy xóa cache để thấy các thay đổi trên hệ thống") ?>
            </div>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>
                            <?php echo __("Tên cài đặt") ?>
                        </th>
                        <th>
                            <?php echo __("Giá trị cài đặt") ?>
                        </th>
                        <th>
                            <?php echo __("Thao tác") ?>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($settings as $setting){
                        $input = "";
                        if($setting['Setting']['stype'] == "text"){
                            $input = "<input type='text' class='form-control' value='" . 
                                    $setting['Setting']['svalue'] . 
                                    "' name='setting_" . $setting['Setting']['id'] . "' />";
                        }elseif ($setting['Setting']['stype'] == "select") {
                            $input = "<select  class='form-control' name='setting_" . $setting['Setting']['id'] . "'>";

                            $options = explode("|",$setting['Setting']['svalues']);

                            foreach($options as $v){
                                if($v == $setting['Setting']['svalue']){
                                    $input .= "<option selected='selected' value='".$v."'>" . $v . "</option>";
                                }  else {
                                    $input .= "<option value='".$v."'>" . $v . "</option>";
                                }
                            }

                            $input .= "</select>";
                        }elseif ($setting['Setting']['stype'] == "plaintext") {
                            $input = "<textarea class='form-control' name='setting_" . 
                                            $setting['Setting']['id'] . "'>";
                            $input .= $setting['Setting']['svalue'] . "</textarea>";
                        }
                        ?>
                    <tr>
                        <td>
                            <?php echo __($setting['Setting']['setting'], array("default" => $setting['Setting']['setting'])); ?>
                        </td>
                        <td>
                            <?php echo $input; ?>
                        </td>
                        <td>
                            <button class="btn btn-default"><?php echo __("Mặc định"); ?></button>
                        </td>
                    </tr>
                            <?php
                    } ?>
                </tbody>
            </table>
            <div class="text-center">
                <input type="hidden" name="submit" value="hehehehe" />
                <button type="submit" name="" class="btn btn-danger"><?php echo __("Lưu"); ?></button>
                <button type="reset" class="btn btn-default"><?php echo __("Reset"); ?></button>
            </div>
        </form>
    </div>
</div>