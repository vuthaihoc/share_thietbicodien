<?php echo $this->Form->create('Product', array(
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
		'placeholder' => __('Tên sản phẩm'),
		'label' => __('Tên sản phẩm'),
	)); ?>

    <?php echo $this->Form->input('code', array(
                'type' => 'text',
		'placeholder' => __('Mã sản phẩm'),
		'label' => __('Mã sản phẩm'),
	)); ?>

    <?php echo $this->Form->input('category_id', array(
		'label' => array(
			'text' => 'Nhóm sản phẩm'
		),
		'empty' => __("Chưa chọn"),
		'options' => $options_categories
	)); ?>

    <?php echo $this->Form->input('manufacturer_id', array(
		'label' => array(
			'text' => 'Hãng sản xuất'
		),
		'empty' => __("Chưa chọn"),
		'options' => $manufacturers
	)); ?>

    <?php echo $this->Form->input('hight_light', array(
		'placeholder' => __('Mô tả nổi bật'),
		'label' => __('Mô tả nổi bật'),
                'type' => 'textarea'
	)); ?>

    <?php echo $this->Form->input('amount', array(
		'placeholder' => __('Số lượng'),
		'label' => __('Số lượng'),
        'type' => 'number'
	)); ?>

    <?php echo $this->Form->input('color', array(
		'placeholder' => __('Màu sắc'),
		'label' => __('Màu sắc'),
	)); ?>

    <?php echo $this->Form->input('capacity', array(
		'placeholder' => __('Công suất'),
		'label' => __('Công suất'),
	)); ?>

    <?php echo $this->Form->input('intensity', array(
		'placeholder' => __('Cường độ dòng điện'),
		'label' => __('Cường độ dòng điện'),
	)); ?>

    <?php echo $this->Form->input('voltage', array(
		'placeholder' => __('Điện áp'),
		'label' => __('Điện áp'),
	)); ?>

    <?php echo $this->Form->input('other_spec', array(
		'placeholder' => __('Thông số kỹ thuật khác'),
		'label' => __('Thông số kỹ thuật khác'),
                'type' => 'textarea'
	)); ?>

    <?php echo $this->Media->tinymce('introduction', $options = array (
        'placeholder' => __('Giới thiệu'),
        'label' => __('Giới thiệu'),
        'type' => 'textarea' ));
//    echo $this->Form->input('introduction', array(
//		'placeholder' => __('Giới thiệu'),
//		'label' => __('Giới thiệu'),
//                'type' => 'textarea'
//	)); ?>
      
      <div class="form-group">
        <div class="col-sm-offset-2 col-xs-5">
           <?php echo $this->Form->end(array('label' => __d('admin', 'Lưu'), 'class' => 'btn btn-success')); ?>
        </div>
        <div class="col-xs-5">
           <?php echo $this->Html->link(__d('admin', 'Cancel'), array('action' => 'index') ,array('class' => 'btn btn-primary')); ?>
        </div>
      </div>

        <div class="form-group">
            <div><?php echo __("Quản lý hình ảnh") ?></div>
            <?php echo $this->Media->iframe('Product',$product_id); ?>
        </div>