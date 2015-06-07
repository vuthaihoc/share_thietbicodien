<?php echo $this->Form->create('Manufacturer', array(
            'inputDefaults' => array(
                    'div' => 'form-group',
                    'label' => array(
                            'class' => 'col col-md-3 control-label'
                    ),
                    'wrapInput' => 'col col-md-9',
                    'class' => 'form-control'
            ),
            'class' => 'well form-horizontal', 
            'role' => 'form')); 
        echo $this->Form->input('id');
        
        //pr($this->validationErrors);
?>
    <?php echo $this->Form->input('name', array(
		'placeholder' => __('Tên nhà sản xuất')
	)); ?>
      
      <div class="form-group">
        <div class="col-sm-offset-2 col-xs-5">
           <?php echo $this->Form->end(array('label' => __d('admin', 'Lưu'), 'class' => 'btn btn-success')); ?>
        </div>
        <div class="col-xs-5">
           <?php echo $this->Html->link(__d('admin', 'Hủy/Quay lại'), array('action' => 'index') ,array('class' => 'btn btn-primary')); ?>
        </div>
      </div>

        <div class="form-group">
            <div><?php echo __("Quản lý hình ảnh") ?></div>
            <?php echo $this->Media->iframe('Manufacturer',$manufacturer_id); ?>
        </div>