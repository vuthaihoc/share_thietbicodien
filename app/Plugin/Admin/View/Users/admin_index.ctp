<ul class="nav nav-pills">
  <li class="active">
  	<?php 
  	echo $this->Html->link(__d('admin', 'Thêm'), array(
  		'plugin' => 'admin', 
  		'controller' => 'users', 
  		'action' => 'add', 
  		'admin' => true
  		)
  	); 
  	?>
  </li>
  <li>
  	<?php 
  		echo $this->Html->link(__d('admin', 'Quyền truy cập'), array(
  			'plugin' => 'admin',
  			'controller' => 'permissions',
  			'action' => 'index',
  			'admin' => true
  			));
  	 ?>
  </li>
  <li>
  <?php echo $this->Html->link(__d('admin', 'Nhóm'), '/admin/groups'); ?>
</li>
</ul>
<div class="row">
	<div class="col-md-12">
		<table class="table table-hover">
		      <?php 
		      	$tableHeaders = array(
		      		__d('admin', 'Tên'),
		      		__d('admin', "Nhóm"),
		      		__('Email'),
		      		__d('admin', 'Tên truy cập'),
		      		__d('admin', 'Thao tác')
		      	);
		      	$tableHeaders =  $this->Html->tableHeaders($tableHeaders);
		      	echo $this->Html->tag('thead', $tableHeaders);
		       ?>
		      <tbody>
		       <?php 
		       	$rows = array();
		       	foreach ($users as $user) {
		       		$actions = $this->Html->link(__d('admin', 'Sửa'), array(
		       			'plugin' => 'admin',
		       			'controller' => 'users',
		       			'action' => 'edit',
		       			'admin' => true,
		       			$user['User']['id']
		       			), array('class' => 'btn btn-primary btn-xs'));
                                if($user['User']['status'] > 0){
                                    $actions.= '&nbsp;'. $this->Html->link(__d('admin', 'Khóa'), array(
                                            'plugin' => 'admin',
                                            'controller' => 'users',
                                            'action' => 'lock',
                                            'admin' => true,
                                            $user['User']['id']
                                            ), array('class' => 'btn btn-danger btn-xs'));
                                }else{
                                    $actions.= '&nbsp;'. $this->Html->link(__d('admin', 'Mở khóa'), array(
                                            'plugin' => 'admin',
                                            'controller' => 'users',
                                            'action' => 'unlock',
                                            'admin' => true,
                                            $user['User']['id']
                                            ), array('class' => 'btn btn-primary btn-xs'));
                                }
                                    
		       		$rows[] = array(
		       			$user['User']['name'],
		       			$user['Group']['name'],
		       			$user['User']['email'],
		       			$user['User']['username'],
		       			$actions
		       			); 
		       	}
		       	echo $this->Html->tableCells($rows);
		        ?>
		      </tbody>		      
		    </table>
		    <div class="row-fluid">
		    	<ul class="pagination pull-right">
		    		<?php echo $this->Paginator->numbers( array('tag' => 'li', 'currentClass' => 'active', 'currentTag' => 'a', 'separator' => '') ); ?>
		    	</ul>
		    </div>
	</div>
</div>	