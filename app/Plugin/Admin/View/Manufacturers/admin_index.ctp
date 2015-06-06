<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm mới'), array('plugin' => 'admin', 'action'=>'add', 'admin' => true)); ?>
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
                                    <th><?php echo __("ID") ?></th>
                                    <th><?php echo __("Tên") ?></th>
                                    <th><?php echo __("Hình ảnh") ?></th>
                                    <th><?php echo __("Ngày cập nhật") ?></th>
                                    <th><?php echo __("Thao tác") ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($manufacturers as $key => $value) {
                                        $content_preview = "";
                                        $actions = $this->Html->link(__d('admin', 'Sửa'), array(
						'plugin' => 'admin',
						'action' => 'edit',
						'admin' => true,
						$value['Manufacturer']['id']
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Xóa'), array(
						'plugin' => 'admin',
						'action' => 'delete',
						'admin' => true,
						$value['Manufacturer']['id']
					), array('class' => 'btn btn-danger btn-xs'));
                                        ?>
                                <tr>
                                    <td><?php echo $value['Manufacturer']['id']; ?></td>
                                    <td><?php echo $value['Manufacturer']['name']; ?></td>
                                    <td>
                                        <?php 
                                        if (count($value['Media']) > 0) {
                                                echo $this->Html->image(reset($value['Media'])['file'], array("width" => 100));
                                            }
                                        ?>
                                    </td>
                                    <td><?php echo $value['Manufacturer']['updated_at']; ?></td>
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
<script type="text/javascript">
	$(function(){
		$('[data-rel=tooltip]').tooltip({placement: 'left'});
	});
</script>