<div class="row">
	<div class="col-md-12">
		<ul class="nav nav-pills">
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Thêm mới'), 
                                array('plugin' => 'admin', 'action'=>'add', 'admin' => true, 'cat'=>$cat)); ?>
		  </li>
		  <li class="active">
			<?php echo $this->Html->link(__d('admin', 'Nhóm sản phẩm'), 
                                array('plugin' => 'admin', 
                                    'controller' => "categories", 
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
                                    <th>Hình ảnh</th>
                                    <th>Tên</th>
                                    <th>Giá</th>
                                    <th>Ngày tạo</th>
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
					$actions .= '<br/>'.$this->Html->link(__d('admin', 'Xóa'), array(
						'plugin' => 'admin',
						'action' => 'delete',
						'admin' => true,
						$value['Product']['id']
					), array('class' => 'btn btn-danger btn-xs',
                                                'confirm' => __d("admin", "Bạn muốn xóa sản phẩm ") . $value['Product']['name'] . " ?"));
                                        $image_manage_link = $this->Html->url(array(
                                            'plugin' => "media",
                                            'admin' => false,
                                            'controller' => "medias",
                                            'action' => "index",
                                            'Product',
                                            $value['Product']['id']
                                        ));
                                        ?>
                                <tr>
                                    <td><?php echo $value['Product']['id']; ?></td>
                                    <td><?php echo $actions; ?></td>
                                    <td>
                                        <a href='javascript:void(0);' data-toggle='modal' 
                                                    data-target="#imageUploadModal" data-remote='false'
                                                    data-link='<?php echo $image_manage_link; ?>'>
                                        <?php 
                                        if (isset($value['Product']['thumb'])) {
                                                echo $this->Html->image($value['Product']['thumb'], array("width" => 100));
                                        }elseif(count($value['Media']) > 0) {
                                            echo $this->Html->image(reset($value['Media'])['file'], array("width" => 100));
                                        }else{
                                            echo __("Thêm ảnh");
                                        }
                                        ?>
                                        </a>
                                    </td>
                                    <td>
                                        <div>
                                            <?php echo $value['Product']['name']; ?>
                                        </div>
                                        <div class="text-danger">
                                            <?php echo __d("admin", "Nhóm : ") . $value['Category']['name']; ?>
                                        </div>
                                        <div class="text-danger">
                                            <?php echo __d("admin", "Hãng sản xuất : ") . $value['Manufacturer']['name']; ?>
                                        </div>
                                    </td>
                                    <td><?php echo $this->Tera->priceFormat($value['Product']['price']); ?></td>
                                    <td><?php echo $value['Product']['created_at']; ?></td>
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
<!--<script type="text/javascript">
	$(function(){
		$('[data-rel=tooltip]').tooltip({placement: 'left'});
	})
</script>-->