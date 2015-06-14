<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

if(!isset($cakeDescription)){
    $cakeDescription = __('Thiết bị cơ điện SCT');
}
if (!isset($cakeTitle)) {
    $cakeTitle = __('Thiết bị cơ điện SCT');
}
?>
<!DOCTYPE html>
<html>
<head>
	<?php echo $this->Html->charset(); ?>
	<title>
		<?php echo $cakeTitle ?>:
	</title>
	<?php
		echo $this->Html->meta('icon');

		echo $this->Html->css('bootstrap.min');
		echo $this->Html->css('site');

		echo $this->fetch('meta');
		echo $this->fetch('css');
	?>
</head>
<body>
    <?php echo $this->element('shared/header'); ?>
    <?php if($is_home_page){
        echo $this->element('shared/home_navi_slide');
    } ?>
    <!-- show flash message if have -->
    <?php 
    echo $this->Session->flash();
    ?>
    
    <?php echo $this->element('shared/default_content_container'); ?>
    
    <?php echo $this->element('shared/bottom_menu'); ?>
    <?php echo $this->element('shared/footer'); ?>
	<!--div id="container">
		<div id="header">
			<h1><?php //echo $this->Html->link($cakeDescription, 'http://cakephp.org'); ?></h1>
		</div>
		<div id="content">

			<?php //echo $this->Session->flash(); ?>

			<?php //echo $this->fetch('content'); ?>
		</div>
		<div id="footer">
			<?php //echo $this->Html->link(
				//	$this->Html->image('cake.power.gif', array('alt' => $cakeDescription, 'border' => '0')),
				//	'http://www.cakephp.org/',
				//	array('target' => '_blank', 'escape' => false, 'id' => 'cake-powered')
				//);
			?>
			<p>
				<?php //echo $cakeVersion; ?>
			</p>
		</div>
	</div-->
    <?php //echo pr($this->request->params); ?>
    <?php //echo $this->element('sql_dump'); ?>
<?php
    // include library
    echo $this->Html->script('jquery1.11.3');
    echo $this->Html->script('bootstrap.min');
    // include custom js file
    echo $this->Html->script('site');

    // include fly js assigned
    echo $this->fetch('script');
?>
</body>
</html>
