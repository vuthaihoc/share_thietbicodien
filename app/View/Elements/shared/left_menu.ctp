<div class="sidebar-nav">
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
                <span class="sr-only">Danh mục sản phẩm</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <span class="visible-xs navbar-brand">Danh mục sản phẩm</span>
        </div>
        <div class="navbar-collapse collapse sidebar-navbar-collapse">
            <ul class="nav navbar-nav">
            <?php
            foreach ($categories as $key1 => $value1) {
                $t_child_class = "";
                $t_caret = '';
                $t_link_options = array();
                $t_list_open = "";
                $t_list_close = "";
                if(count($value1['children']))
                {
                    $t_child_class = "dropdown";
                    $t_caret = '<b class="caret"></b>';
                    $t_list_open = '<ul class="dropdown-menu">';
                    $t_list_close = "</ul>";
                    $t_link_options = array(
                        'class' => 'dropdown-toggle',
                        'data-toggle' => 'dropdown',
                        'escapeTitle' => false
                    );
                }
                $t_link = $this->Html->link(
                        $value1['Category']['name'] . $t_caret, 
                        array(
                    'plugin' => null,"controller" => "san_pham",
                            "action" => "category",
                            "id" => $value1['Category']['id'],
                            "slug" => $this->Tera->build_slug($value1["Category"]["name"])), 
                        $t_link_options);
                ?>
                <li class="<?php echo $t_child_class; ?>">
                    <?php echo $t_link; ?>
                    <?php 
                    echo $t_list_open;
                    foreach ($value1['children'] as $key2 => $value2) {
                    $t_link = $this->Html->link($value2['Category']['name'] , array(
                    'plugin' => null,"controller" => "san_pham",
                            "action" => "category",
                            "id" => $value2['Category']['id'],
                            "slug" => $this->Tera->build_slug($value2["Category"]["name"])) );
                        ?>
                    <li> <?php echo $t_link; ?> </li>
                    <?php
                    }
                    echo $t_list_close;
                    ?>
                </li>
                <?php
            }
            ?>
            </ul>
            <!--ul class="nav navbar-nav">
                <li class="">
                    <a href="#">Dây & Cáp điện</a>
                </li>
                <li>
                    <a href="#">
                        TB điện dân dụng<span class="badge">14</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        TB điện công nghiệp<span class="badge">25</span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        Gel chống cháy<span class="badge">41</span>
                    </a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Thiết bị chiếu sáng<b class="caret"></b><span class="badge">34</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Đèn Halogen</a></li>
                        <li><a href="#">Đèn Compact</a></li>
                        <li><a href="#">Đèn Led</a></li>
                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        Quạt điện 
                        <b class="caret"></b>
                        <span class="badge">99+</span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Quạt thông gió</a></li>
                        <li><a href="#">Quạt làm mát</a></li>
                    </ul>
                </li>
            </ul-->
        </div><!--/.nav-collapse -->
    </div>
</div>