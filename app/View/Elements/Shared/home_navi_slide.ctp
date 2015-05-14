<div class="container" id="home_navi_slide">
    <div class="row">
        <div class="col-md-3">
            <?php echo $this->element('shared/left_menu'); ?>
        </div>
        <div class="col-md-9">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <img src="http://lorempixel.com/1000/400/technics" alt="Sản phẩm nổi bật 1">
                        <div class="carousel-caption">
                            Sản phẩm nổi bật 1
                        </div>
                    </div>
                    <div class="item">
                        <img src="http://lorempixel.com/1000/400/food" alt="Sản phẩm nổi bật 2">
                        <div class="carousel-caption">
                            Sản phẩm nổi bật 2
                        </div>
                    </div>
                    <div class="item">
                        <img src="http://lorempixel.com/1000/400/animals" alt="Sản phẩm nổi bật 2">
                        <div class="carousel-caption">
                            Sản phẩm nổi bật 3
                        </div>
                    </div>
                </div>

                <!-- Controls -->
                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </div>
</div>
