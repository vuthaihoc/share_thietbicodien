<div class="container bottom-menu">
    <ul class="nav nav-pills nav-footer">
        <li><a href="<?php echo $this->Html->url("/"); ?>">Trang chủ</a></li>
        <?php
        foreach($bottom_pages as $key => $value){
            echo "<li>";
            echo $this->Html->link($value['Page']['title'],array(
                    'plugin' => null,
                "controller" => "bai_viet",
                "action" => "index",
                "id" => $value['Page']['id'],
                "slug" => $this->Html->build_slug($value['Page']['title'])
            ));
            echo "</li>";
        }
        
        ?>
        <li><a href="<?php echo $this->Html->url(array(
            'controller' => 'sitemap',
            'plugin' => 'sitemap'
        )); ?>"><?php echo __("Sơ đồ trang"); ?></a></li>
    </ul>
</div>