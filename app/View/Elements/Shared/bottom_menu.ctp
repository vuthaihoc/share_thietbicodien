<div class="container bottom-menu">
    <ul class="nav nav-pills nav-footer">
        <li><a href="<?php echo $this->Html->url("/"); ?>">Trang chủ</a></li>
        <?php
        foreach($bottom_pages as $key => $value){
            echo "<li>";
            echo $this->Html->link($value['Page']['title'],array(
                "controller" => "bai_viet",
                "action" => "index",
                "id" => $value['Page']['id'],
                "slug" => $this->Html->build_slug($value['Page']['title'])
            ));
            echo "</li>";
        }
        
        ?>
<!--        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages</a></li>
        <li><a href="#">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages</a></li>
        <li><a href="#">Home</a></li>
        <li><a href="#">Profile</a></li>
        <li><a href="#">Messages</a></li>
        <li role="presentation" class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
                Dropdown <span class="caret"></span>
            </a>
            <ul class="dropdown-menu" role="menu">
                <li><a>sfddsaf dsa f d fads</a></li>
                <li><a>sfddsaf dsa f d fads</a></li>
                <li><a>sfddsaf dsa f d fads</a></li>
                <li><a>sfddsaf dsa f d fads</a></li>
                <li><a>sfddsaf dsa f d fads</a></li>
            </ul>
        </li>-->
    </ul>
</div>