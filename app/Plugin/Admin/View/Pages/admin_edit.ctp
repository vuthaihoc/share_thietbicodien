<?php
echo $this->Form->create('Page', array('class' => 'form-horizontal', 'role' => 'form'));
echo $this->Form->input('id');

//pr($this->validationErrors);
?>
<div class="form-group">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Tiêu đề'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Form->input('title', array(
            'div' => false,
            'label' => false,
            'class' => 'form-control',
        ));
        ?>
    </div>
</div>

<div class="form-group">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Bài viết cha'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Form->select('parent_id', $all_page, array(
            'div' => false,
            'label' => false,
            'class' => 'form-control',
            'empty' => __('Gốc')
        ));
        ?>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Hiển thị menu'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Form->select('showmenu', $positions, array(
            'div' => false,
            'label' => false,
            'class' => 'form-control',
            'empty' => __('Không dùng')
        ));
        ?>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Keywords - Từ khóa'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Form->input('keywords', array(
            'div' => false,
            'label' => false,
            'class' => 'form-control',
            'type' => 'textarea'
        ));
        ?>
    </div>
</div>
<div class="form-group">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Description - Mô tả'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Form->input('decsriptions', array(
            'div' => false,
            'label' => false,
            'class' => 'form-control',
            'type' => 'textarea'
        ));
        ?>
    </div>
</div>
<div class="form-group <?php echo $this->Form->isFieldError('name') ? 'has-error' : '' ?>">
    <label class="col-sm-2 control-label"><?php echo __d('admin', 'Nội dung'); ?></label>
    <div class="col-sm-10">
        <?php
        echo $this->Media->tinymce('content', $options = array());
//            echo $this->Form->input('content', array(
//              'div' => false,
//              'label' => false,
//              'class' => 'form-control',
//              ));
        ?>
    </div>
</div>
<div class="form-group">
    <div class="col-sm-offset-2 col-xs-5">
        <?php echo $this->Form->end(array('label' => __d('admin', 'Lưu'), 'class' => 'btn btn-success')); ?>
    </div>
    <div class="col-xs-5">
        <?php echo $this->Html->link(__d('admin', 'Hủy'), array('action' => 'index'), array('class' => 'btn btn-primary')); ?>
    </div>
</div>

<div class="form-group">
    <div><?php echo __("Quản lý hình ảnh") ?></div>
    <?php echo $this->Media->iframe('Page', $page_id); ?>
</div>