<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm nhóm'), 
                                array('plugin' => 'admin', 
                                    'controller' => 'categories', 
                                    'action'=>'add', 
                                    'admin' => true)); ?>
		  </li>
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm sản phẩm'), 
                                array('plugin' => 'admin', 
                                    'controller' => 'products', 
                                    'action'=>'add', 
                                    'admin' => true)); ?>
		  </li>
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Toàn bộ sản phẩm'), 
                                array('plugin' => 'admin', 
                                    'controller' => 'products', 
                                    'action'=>'index',
                                    'admin' => true)); ?>
		  </li>
		</ul>
	</div>
</div>
<div style="height: 8px;"></div>
<div class="row">
	<div class="col-md-12">
		<div class="table-responsive">
			<table class="table table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Thao tác</th>
                                    <th>Tên</th>
                                    <th>Cập nhật</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $flag = 0;
                                    foreach ($tree_categories as $key => $value) {
                                        $content_preview = "";
                                        $actions = $this->Html->link(__d('admin', 'Sửa'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'edit',
						'admin' => true,
						$key
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Xóa'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'delete',
						'admin' => true,
						$key
					), array('class' => 'btn btn-danger btn-xs'));
					$actions .= '<br/>'.$this->Html->link(__d('admin', 'Lên'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'move_up',
						'admin' => true,
						$key
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Xuống'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'move_down',
						'admin' => true,
						$key
					), array('class' => 'btn btn-primary btn-xs'));
                                        ?>
                                <tr>
                                    <td><?php echo $all_categories[$flag]['Category']['id']; ?></td>
                                    <td><?php echo $actions; ?></td>
                                    <td><?php 
                                    echo $this->Html->link("+" . $value, array(
						'plugin' => 'admin',
						'controller' => 'products',
						'action' => 'index',
                                                'cat' => $key,
						'admin' => true
					));
                                    ?></td>
                                    <td><?php echo $all_categories[$flag]['Category']['updated_at']; ?></td>
                                </tr>
                                            <?php
                                    $flag++;
                                    }
                                ?>
                            </tbody>
			
			</table>
		</div>
	</div>
</div>
<?php echo $this->Html->script('/admin/js/acl.js'); ?>
<script type="text/javascript">
	$(function(){
		$('[data-rel=tooltip]').tooltip({placement: 'left'});
	})
</script>