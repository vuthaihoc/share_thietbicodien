<?php echo $this->Form->create('Category', array('class' => 'form-horizontal', 'role' => 'form')); 
        echo $this->Form->input('id');
        
        //pr($this->validationErrors);
?>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Nhóm cha'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Form->select('parent_id',
              $options_categories, array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              'empty' => __('Nhóm gốc')
              ));
           ?>
        </div>
      </div>
      <div class="form-group">
        <label class="col-sm-2 control-label"><?php echo __d('admin', 'Tiêu đề'); ?></label>
        <div class="col-sm-10">
          <?php 
            echo $this->Form->input('name', array(
              'div' => false,
              'label' => false,
              'class' => 'form-control',
              ));
           ?>
        </div>
      </div>
      <div class="form-group">
        <div class="col-sm-offset-2 col-xs-5">
           <?php echo $this->Form->end(array('label' => __d('admin', 'Lưu'), 'class' => 'btn btn-success')); ?>
        </div>
        <div class="col-xs-5">
           <?php echo $this->Html->link(__d('admin', 'Hủy'), array('action' => 'index') ,array('class' => 'btn btn-primary')); ?>
        </div>
      </div>

    <div class="form-group">
        <div><?php echo __("Quản lý hình ảnh") ?></div>
        <?php echo $this->Media->iframe('Category',$category_id); ?>
    </div>