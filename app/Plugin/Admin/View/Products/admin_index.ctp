<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm mới'), array('plugin' => 'admin', 'action'=>'add', 'admin' => true, 'cat'=>$cat)); ?>
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
                                    <th>Hình ảnh</th>
                                    <th>Ngày tạo</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($products as $key => $value) {
                                        $content_preview = "";
                                        $actions = $this->Html->link(__d('admin', 'Sửa'), array(
						'plugin' => 'admin',
						'action' => 'edit',
						'admin' => true,
						$value['Product']['id']
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Xóa'), array(
						'plugin' => 'admin',
						'action' => 'delete',
						'admin' => true,
						$value['Product']['id']
					), array('class' => 'btn btn-danger btn-xs'));
                                        ?>
                                <tr>
                                    <td><?php echo $value['Product']['id']; ?></td>
                                    <td><?php echo $value['Product']['name']; ?></td>
                                    <td>
                                        <?php 
                                        if (isset($value['Product']['thumb'])) {
                                                echo $this->Html->image($value['Product']['thumb'], array("width" => 100));
                                        }elseif(count($value['Media']) > 0) {
                                            echo $this->Html->image(reset($value['Media'])['file'], array("width" => 100));
                                        }
                                        ?>
                                    </td>
                                    <td><?php echo $value['Product']['created_at']; ?></td>
                                    <td><?php echo $actions; ?></td>
                                </tr>
                                            <?php
                                    }
                                ?>
                            </tbody>
			
			</table>
		</div>
	</div>
</div>
<?php echo $this->Paginator->pagination(array(
	'ul' => 'pagination'
)); ?>
<?php echo $this->Html->script('/admin/js/acl.js'); ?>
<script type="text/javascript">
	$(function(){
		$('[data-rel=tooltip]').tooltip({placement: 'left'});
	})
</script>