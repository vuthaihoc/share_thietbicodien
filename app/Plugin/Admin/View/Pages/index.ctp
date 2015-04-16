<?php
    echo $this->Html->link(__d('admin', 'Add'), array(
            'plugin' => 'admin', 
            'controller' => 'pages', 
            'action' => 'add', 
            'admin' => true
            )
    ); 