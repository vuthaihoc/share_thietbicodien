<?php
$image = "/img/updating.gif";
$title = $product['Product']['name'];
if (isset($product["Product"]['thumb'])) {
    $image = $product["Product"]['thumb'];
} elseif (count($product["Media"])) {
    $first_image = reset($product["Media"]);
    $image = $first_image['icon'];
}
$link = $this->Html->url(
        array(
            'controller' => "san_pham",
            "action" => 'index',
            "id" => $product['Product']['id'],
            "slug" => $this->Tera->build_slug($title)
        ));
$image = $this->Html->assetUrl($image);
?>


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
        <h1 id="js-overview" class="page-header">
            <?php echo $product['Product']['name']; ?>
            <?php echo $product['Product']['code'] == "" ? "" : " - " . $product['Product']['code']; ?>
        </h1>
        <div class="page-content product_detail">
            <div class="col-md-6 product_image_container">
                <a href="<?php echo $link; ?>">
                    <img src="<?php echo $image; ?>" class="thumb">
                </a>
            </div>
            <div class="col-md-6">
                <h4 class="page-header text-center"><?php echo __("Thông số kỹ thuật"); ?></h4>
                <?php if ($product['Product']['hight_light'] != "") { ?>
                    <div class="text-danger">
                        <?php echo $product['Product']['hight_light']; ?>
                    </div>
                <?php } ?>
                <dl class="dl-horizontal">
                    <dt>Mã sản phẩm</dt><dd><?php echo $product['Product']['code']; ?></dd>
                    <dt>Số lượng trong kho</dt><dd><?php echo $product['Product']['amount']; ?></dd>
                    <dt>Hãng sản xuất</dt><dd><?php echo $product['Product']['manufacturer_id']; ?></dd>
                    <dt>Nhóm hàng</dt><dd><?php echo $category['Category']['name']; ?></dd>
                    <dt>Màu sắc</dt><dd><?php echo $product['Product']['color']; ?></dd>
                    <dt>Chất liệu</dt><dd><?php echo $product['Product']['made_from']; ?></dd>
                    <dt>Công suất</dt><dd><?php echo $product['Product']['capacity']; ?></dd>
                    <dt>Cường độ điện</dt><dd><?php echo $product['Product']['intensity']; ?></dd>
                    <dt>Điện áp</dt><dd><?php echo $product['Product']['voltage']; ?></dd>
                    <dt>Thông số kỹ thuật</dt><dd><?php echo $product['Product']['other_spec']; ?></dd>
                    <dt>Tiêu chuẩn</dt><dd><?php echo $product['Product']['code']; ?></dd>
                </dl>
                <div class="text-right">
                    <button class="btn btn-danger">
                        <span class="glyphicon glyphicon-shopping-cart"></span>
                        <?php echo $this->Tera->priceFormat($product['Product']['price']); ?>
                    </button>
                </div>

            </div>
            <div class="clear"></div>
            <h4 class="page-header"><?php echo __("Mô tả sản phẩm"); ?></h4>
            <div class="text-justify">
                <?php echo $product['Product']['introduction'] == "" ? __("Đang cập nhật") : $product['Product']['introduction']; ?>
            </div>
            <div class="clear"></div>
            <h4 class="page-header"><?php echo __("Sản phẩm liên quan"); ?></h4>
            <?php
            foreach ($relative_products as $key => $value) {
                $this->Tera->showProduct($value);
            }
            ?>
        </div>
    </div>
</div>