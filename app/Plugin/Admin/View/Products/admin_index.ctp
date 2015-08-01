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
            <?php echo $this->Paginator->pagination(array(
                    'ul' => 'pagination'
            )); ?>
		<div class="table-responsive">
			<table class="table table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th><?php echo $this->Paginator->sort('id', __("ID"), array()); ?></th>
                                    <th>Thao tác</th>
                                    <th>Hình ảnh</th>
                                    <th><?php echo $this->Paginator->sort('name', __("Tên"), array()); ?></th>
                                    <th><?php echo $this->Paginator->sort('price', __("Giá"), array()); ?></th>
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
                                        $view_link = $this->Html->url(array(
                                            'plugin' => '',
                                            'admin' => false,
                                            'controller' => 'san_pham',
                                            'id' => $value['Product']['id'],
                                            'action' => 'index',
                                            'slug' => slug($value['Product']['name'])
                                            ), true);
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
                                            <a target="_blank" href="<?php echo $view_link; ?>">
                                                <?php echo $value['Product']['name']; ?>
                                            </a>
                                        </div>
                                        <div class="text-danger">
                                            <?php echo __d("admin", "Nhóm : ") . $value['Category']['name']; ?>
                                        </div>
                                        <div class="text-danger">
                                            <?php echo __d("admin", "Hãng sản xuất : ") . $value['Manufacturer']['name']; ?>
                                        </div>
                                    </td>
                                    <td>
                                        <a href="javascript:void(0);" 
                                           data-id="<?php echo $value['Product']['id']; ?>" 
                                           class="edit_price"
                                           data-link="<?php echo $this->Html->url(array('action' => 'quick_edit')); ?>">
                                            <?php echo $value['Product']['price']; ?>
                                        </a><br/>
                                        <span class="small">
                                            <?php echo __("0: Liên hệ<br/>-1: Xem báo giá<br/>"); ?>
                                        </span></td>
                                    <td><?php echo $value['Product']['created_at']; ?></td>
                                </tr>
                                            <?php
                                    }
                                ?>
                            </tbody>
			
			</table>
		</div>
            <?php echo $this->Paginator->pagination(array(
                    'ul' => 'pagination'
            )); ?>
	</div>
</div>
<?php echo $this->Html->script('/admin/js/acl.js'); ?>
<!--<script type="text/javascript">
	$(function(){
		$('[data-rel=tooltip]').tooltip({placement: 'left'});
	})
</script>-->