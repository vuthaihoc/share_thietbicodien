<ul class="nav nav-pills col-md-offset-2">
  <li class="active">
    <?php 
      echo $this->Html->link(__d('admin', 'Đặt lại mật khẩu'), array(
        'plugin' => 'admin',
        'controller' => 'users',
        'action' => 'reset_password',
        'admin' => true,
        $this->request->pass[0]
        )); 
    ?>
  </li>
</ul>
<div style="height: 8px;"></div>
<?php 
	echo $this->Form->create('User', array('class' => 'form-horizontal', 'role' => 'form')); 
	echo $this->Form->input('id');
?>
<div class="form-group">
<label class="col-sm-2 control-label"><?php echo __d('admin', 'Nhóm'); ?>:</label>
<div class="col-sm-10">
  <?php 
	echo $this->Form->input('group_id', array(
	  'div' => false,
	  'label' => false,
	  'class' => 'form-control',
	  ));
   ?>
</div>
</div>
<div class="form-group <?php echo $this->Form->isFieldError('name') ? 'has-error' : '' ?>">
<label class="col-sm-2 control-label"><?php echo __d('admin', 'Tên'); ?>:</label>
<div class="col-sm-10">
  <?php 
	echo $this->Form->input('name', array(
	  'div' => false,
	  'label' => false,
	  'class' => 'form-control',
	  'placeholder' => __("Tên")
	  ));
   ?>
</div>
</div>
<div class="form-group <?php echo $this->Form->isFieldError('email') ? 'has-error' : '' ?>">
<label for="inputPassword3" class="col-sm-2 control-label"><?php echo __("Email") ?></label>
<div class="col-sm-10">
  <?php 
	echo $this->Form->input('email', array(
	  'div' => false,
	  'label' => false,
	  'class' => 'form-control',
	  'placeholder' => __("Email")
	  ));
   ?>
</div>
</div>
<div class="form-group <?php echo $this->Form->isFieldError('username') ? 'has-error' : '' ?>">
<label for="inputPassword3" class="col-sm-2 control-label"><?php echo __d('admin', 'Tên truy cập'); ?></label>
<div class="col-sm-10">
  <?php 
	echo $this->Form->input('username', array(
	  'div' => false,
	  'label' => false,
	  'class' => 'form-control',
	  'placeholder' => __("Tên truy cập")
	  ));
   ?>
</div>
</div>
<div class="form-group">
  <label for="inputPassword3" class="col-sm-2 control-label"><?php echo __d('admin', 'Trạng thái'); ?></label>
  <div class="col-sm-10">
    <?php 
      echo $this->Form->input('status', array(
        'div' => false,
        'label' => false,
        'class' => 'form-control',
        'type' => 'select',
        'options' => array(
          1 => __d('admin', 'Bình thường'),
          0 => __d('admin', 'Bị khóa'),
          )
        ));
     ?>
  </div>
</div>
<div class="form-group">
<div class="col-sm-offset-2 col-sm-6">
   <?php echo $this->Form->end(array('label' => __d('admin', 'Lưu'), 'class' => 'btn btn-success')); ?>
</div>
<div class="col-sm-4">
    <?php echo $this->Html->link(__d('admin', 'Hủy'), array('action' => 'index') ,array('class' => 'btn btn-primary')); ?>
</div>
</div>