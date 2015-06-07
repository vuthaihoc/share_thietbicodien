<div class="row">
	<div class="col-md-4 col-md-offset-4">
		<div class="well bg-white">
			<?php echo $this->Form->create('User', array('role' => 'form', 'class' => 'form-signin')); ?>
			  <?php 
				echo $this->Form->input('username', array(
						'label' =>  __d('admin', 'Tên truy cập') . $this->Html->tag('span', ' *', array('class' => 'asterisk')),
						'div' => 'form-group',
						'class' => 'form-control',
						'placeholder' => __d('admin', 'Tên truy cập')
					));
					echo $this->Form->input('password', array(
							'label' => __d('admin','Mật khẩu') . $this->Html->tag('span', ' *', array('class' => 'asterisk')),
							'div' => 'form-group',
							'class' => 'form-control',
							'placeholder' => __d('admin', 'Mật khẩu'),
							'type' => 'password'
						));
			   ?>
			<?php echo $this->Form->end(array('label' => __d('admin', 'Đăng nhập'), 'class' => 'btn btn-lg btn-primary btn-block')); ?>
			</div>
	</div>
</div>