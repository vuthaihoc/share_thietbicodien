<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm mới'), array('plugin' => 'admin', 'controller' => 'slides', 'action'=>'add', 'admin' => true)); ?>
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
                                    <th>Tiêu đề</th>
                                    <th>Hình ảnh</th>
                                    <th>Ngày tạo</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                    foreach ($slides as $key => $value) {
                                        $content_preview = "";
                                        $actions = $this->Html->link(__d('admin', 'Edit'), array(
						'plugin' => 'admin',
						'controller' => 'slides',
						'action' => 'edit',
						'admin' => true,
						$value['Slide']['id']
					), array('class' => 'btn btn-primary btn-xs'));
					$actions .= '&nbsp;'.$this->Html->link(__d('admin', 'Delete'), array(
						'plugin' => 'admin',
						'controller' => 'slides',
						'action' => 'delete',
						'admin' => true,
						$value['Slide']['id']
					), array('class' => 'btn btn-danger btn-xs'));
                                        ?>
                                <tr>
                                    <td><?php echo $value['Slide']['id']; ?></td>
                                    <td><?php echo $value['Slide']['name']; ?></td>
                                    <td>
                                        <?php 
                                        if (count($value['Media']) > 0) {
                                                echo $this->Html->image(reset($value['Media'])['file'], array("width" => 100));
                                            }
                                        ?>
                                    </td>
                                    <td><?php echo $value['Slide']['created_at']; ?></td>
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