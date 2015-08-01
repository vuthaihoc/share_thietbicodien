<?php echo $this->element('shared/top_bottom_line'); ?>
<div class="container">
    <div class="col-md-3">
        <?php echo $this->element('shared/left_menu'); ?>
    </div>
    <div class="col-md-9">
        <div>
            <ol class="breadcrumb">
                <li><a href="<?php echo $this->Html->url("/"); ?>">Trang chủ</a></li>
                <li class="active"><?php echo $category['Category']['name']; ?></li>
            </ol>
        </div>
        <div class="page-content product_detail">
            <?php
            foreach ($products as $key => $value) {
                $this->Tera->showProduct($value, 4);
            }
            ?>
            <div class="clear"></div>
            <?php 
            $this->Paginator->options(array(
                'url' => array(
                    'plugin' => null,
                    "id" => $category["Category"]['id'],
                    "slug" => $this->Tera->build_slug($category["Category"]["name"]),
                    "controller" => "san_pham",
                    "action" => "category"
                )
            ));
            echo $this->Paginator->pagination(array(
                    'ul' => 'pagination'
            )); ?>
        </div>
    </div>
</div>