<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo $title_for_layout; ?></title>
    <?php 
      echo $this->Html->css(array(
        '/admin/css/bootstrap.min.css',
        '/admin/css/dashboard.css',
        ));
      echo $this->Html->script('jquery1.11.3');
     ?>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <?php 
          $app = array();
          $app['basePath'] = Router::url('/');
          $app['params'] = array(
            'controller' => $this->params['controller'],
            'action' => $this->params['action'],
            'named' => $this->params['named'],
          );
          echo $this->Html->scriptBlock('var App = ' . $this->Js->object($app) . ';');
        echo $this->fetch('css');
     ?>
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
              <span class="sr-only"><?php echo __d('admin', 'Mở menu') ?></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><?php echo __d('admin', 'TeraVN CMS') ?></a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li><?php echo $this->Html->link(__d('admin', 'Dashboard'), '/admin'); ?></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo __d('admin', 'Languages'); ?> <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu">
                <li>
                  <?php
                   echo $this->Html->image("Admin.flags/por.png", array(
                       "alt" => __d('admin', "Brazilian"),
                       'url' => '/admin/languages/pt-br',
                       'class' => 'lang-flag'
                   ));
                   ?>
                </li>
                <li>
                  <?php 
                    echo $this->Html->image("Admin.flags/eng.png", array(
                        "alt" => __d('admin', "English"),
                        'url' => '/admin/languages/eng',
                        'class' => 'lang-flag'
                    ));
                   ?>
                </li>                
              </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo __d('admin', 'Quản lý') ?><b class="caret"></b></a>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <?php echo $this->Html->link(__d('admin', 'Quản lý trang'), array('plugin' => 'admin', 'controller' => 'pages', 'action' => 'index', 'admin' => true)); ?>
                    </li>
                    <li>
                        <?php echo $this->Html->link(__d('admin', 'Quản lý sản phẩm'), array('plugin' => 'admin', 
                                    'controller' => 'categories', 
                                    'action'=>'index', 
                                    'admin' => true)); ?>
                    </li>
                    <li>
                        <?php echo $this->Html->link(__d('admin', 'Quản lý bài viết'), array('plugin' => 'admin', 
                                    'controller' => 'categories', 
                                    'action'=>'index', 
                                    'admin' => true)); ?>
                    </li>
                </ul>
            </li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo __d('admin', 'User control'); ?> <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu">
                <li>
                  <?php echo $this->Html->link(__d('admin', 'Users'), array('plugin' => 'admin', 'controller' => 'users', 'action' => 'index', 'admin' => true)); ?>
                </li>
                <li class="divider"></li>
                <li>
                  <?php echo $this->Html->link(__d('admin', 'Logout'), array('plugin' => 'admin', 'controller' => 'users', 'action' => 'logout', 'admin' => true)); ?>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </div>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12 col-md-12 main">
          <!-- <h1 class="page-header">Dashboard</h1> -->

          <div class="row-fluid">
            <?php 
              echo $this->Session->flash();
              echo $this->Session->flash('auth');
              ?>
            <h2 class="sub-header"><?php echo $title_for_layout; ?></h2>
            <?php echo $this->fetch('content'); ?>
          </div>
      </div>
    </div>
    <?php 
      echo $this->Html->script('/admin/js/bootstrap.min.js');
      echo $this->fetch('script');
     ?>
     <script type="text/javascript">
      $(function(){
        $('.lang-flag').each(function(i, val){
          $alt = val.alt;
          $(this).parent('a').append(' '+$alt);
        });
      });
     </script>
     <?php pr($this->params); ?>
  </body>
</html>
