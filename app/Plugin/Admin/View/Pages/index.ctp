<?php
    echo $this->Html->link(__d('admin', 'Thêm'), array(
            'plugin' => 'admin', 
            'controller' => 'pages', 
            'action' => 'add', 
            'admin' => true
            )
    ); 