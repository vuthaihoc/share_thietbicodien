<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm mới'), 
                                array('plugin' => 'admin', 
                                    'controller' => 'categories', 
                                    'action'=>'add', 
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
                                    <th>Tên</th>
                                    <th>Cập nhật</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    $flag = 0;
                                    foreach ($tree_categories as $key => $value) {
                                        $content_preview = "";
                                        $actions = $this->Html->link(__d('admin', 'Edit'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'edit',
						'admin' => true,
						$key
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Delete'), array(
						'plugin' => 'admin',
						'controller' => 'categories',
						'action' => 'delete',
						'admin' => true,
						$key
					), array('class' => 'btn btn-danger btn-xs'));
                                        ?>
                                <tr>
                                    <td><?php echo $all_categories[$flag]['Category']['id']; ?></td>
                                    <td>+<?php echo $value; ?></td>
                                    <td><?php echo $all_categories[$flag]['Category']['updated_at']; ?></td>
                                    <td><?php echo $actions; ?></td>
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