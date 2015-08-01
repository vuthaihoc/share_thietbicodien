<?php echo $this->element('shared/top_bottom_line'); ?>
<div class="container">
    <div class="col-md-3">
        <?php echo $this->element('shared/left_menu'); ?>
    </div>
    <div class="col-md-9">
        <div>
            <ol class="breadcrumb">
                <li><a href="<?php echo $this->Html->url("/"); ?>">Trang chủ</a></li>
                <li class="active"><?php echo __("Sơ đồ trang"); ?></li>
            </ol>
        </div>
        <div class="page-content product_detail">
            <?php foreach($sitemapData as $model => $modelSitemap): ?>
            <div class="a_box">
                <div class="box_header">
                    <h2> <span class="glyphicon glyphicon-th"></span> <?php echo $model; ?></h2>
                </div>
                <div class="box_body">
                    <table class="table table-striped">
                        <tr>
                            <th><?php echo __("Liên kết"); ?></th>
                            <th><?php echo __("Cập nhật"); ?></th>
                            <th><?php echo __("Ưu tiên"); ?></th>
                            <th><?php echo __("Thay đổi"); ?></th>
                        </tr>
                <?php foreach($modelSitemap as $singleSitemap): ?>
                        <tr>
                            <td><?php echo $this->Html->link(Router::url($singleSitemap['loc'], TRUE)); ?></td>
                            <td>
                            <?php if(!empty($singleSitemap['lastmod'])): ?>
                                    <?php echo $this->Time->toAtom($singleSitemap['lastmod']); ?>
                            <?php endif; ?>
                            </td>
                            <td>
                                <?php if(!empty($singleSitemap['priority'])): ?>
                                    <?php echo $singleSitemap['priority']; ?>
                                <?php endif; ?>
                            </td>
                            <td>
                                <?php if(!empty($singleSitemap['changefreq'])): ?>
                                    <?php echo $singleSitemap['changefreq']; ?>
                                <?php endif; ?>
                            </td>
                        </tr>
                <?php endforeach; ?>
                    </table>

                    <div class="clear"></div>
                </div>
            </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>
