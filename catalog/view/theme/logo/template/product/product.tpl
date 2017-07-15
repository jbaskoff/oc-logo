<?= $header ?>

<div class="main-content">
    <div class="wrapper">

        <div class="breadcrumbs">
            <?php
            $end = end($breadcrumbs);
            foreach ($breadcrumbs as $breadcrumb) : ?>
                <?php if ($end != $breadcrumb) : ?>
                    <a href="<?= $breadcrumb['href'] ?>"><?= $breadcrumb['text']; ?></a> /
                <?php else: ?>
                    <span><?= $breadcrumb['text'] ?></span>
                <?php endif; ?>
            <?php endforeach; ?>
        </div>

        <div class="single-good">
            <div class="single-good-sl-wr">
                <div class="big-img-sl" data-state="sale">
                    <div class="img-wr">
                        <img src="<?= $thumb ?>" alt="">
                    </div>
                </div>
                <div class="small-img-sl">

                    <?php foreach ($images as $image) : ?>
                        <div class="img-wr">
                            <img src="<?= $image['popup'] ?>" alt="<?= $heading_title ?>">
                        </div>
                    <?php endforeach; ?>

                </div>
                <div class="share-icons-wr">
                    <p>Share this:</p>
                    <ul class="share-icons">
                        <li><a class="share-icon fb" href="#"></a></li>
                        <li><a class="share-icon tw" href="#"></a></li>
                        <li><a class="share-icon go" href="#"></a></li>
                        <li><a class="share-icon pi" href="#"></a></li>
                    </ul>
                </div>
            </div>
            <div class="single-good-info">
                <h1><?= $heading_title ?></h1>
                <div class="reviews">
                    <ul class="rating">
                        <li class="st"></li>
                        <li class="st"></li>
                        <li class="st"></li>
                        <li class="st"></li>
                        <li class="sth"></li>
                    </ul>
                    <a href="#" class="reviews"><span>1</span> Review</a>
                </div>
                <hr class="single-hr">
                <div class='good-characteristics'>
                    <p class="charact-item"><span class="charact">Menufacturer:</span><span
                            class="charact-value">Chanel</span></p>
                    <p class="charact-item"><span class="charact"><?= $text_stock ?></span><span class="charact-value"><a
                                href="#">in stock</a></span><?= $product_info['quantity']  ?></p>
                    <p class="charact-item"><span class="charact"><?= $text_model ?></span><span
                            class="charact-value"><?= $model ?></span></p>
                    <h6>Product Dimensions and Weight</h6>
                    <p class="charact-item"><span class="charact">Product Lenght :</span><span class="charact-value">10.0000m</span>
                    </p>
                    <p class="charact-item"><span class="charact">Product Weight :</span><span class="charact-value">10.0000kg</span>
                    </p>
                </div>
                <hr class="single-hr">
                <div class="single-good-excerpt">
                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the
                    industry's standard dummy text ever since the 1500s,
                </div>
                <hr class="single-hr">
                <p class="good-price"><span>$5055.00</span> $4044.00</p>
                <div class="good-cust good_buttons_wr">
                    <a href="#" class="good_btn card_btn active" aria-hidden="true"><i
                            class="fa fa-shopping-cart"></i><span>add to cart</span></a>
                    <a href="#" class="good_btn wish_btn" aria-hidden="true"><i class="fa fa-pencil-square-o"></i><span>Add to wish list</span></a>
                    <a href="#" class="good_btn arrow_btn" aria-hidden="true"><i class="fa fa-exchange"></i><span>Add to Compare</span></a>
                    <a href="#" class="good_btn arrow_btn" aria-hidden="true"><i class="fa fa-question"></i><span>Ask a Question</span></a>
                </div>
            </div>
            <div class="good-tabs" id="good-tabs">
                <ul class="tabs">
                    <li class="active"><?= $tab_description ?></li>
                    <li class=""><?= $tab_attribute ?></li>
                    <li class=""><?= $tab_review ?></li>
                </ul>
                <div class="tabs-content">
                    <div class="tab-description-content">
                        <?= $description ?>
                    </div>
                    <div class=""><?= $model ?></div>
                    <div class="tab-content-review">
                        <div class="tab-content-title">Last Review</div>
                        <hr class="single-hr">
                        <div class="tab-review-user-info-wr">
                            <div class="tab-review-user-info">
                                <p class="name">Bin Burhan</p>
                                <p class="date"><i class="fa fa-clock-o"></i>0:05pm</p>
                                <p class="date"><i class="fa fa-bell-o"></i>Sunday</p>
                                <p class="date"><i class="fa fa-calendar-o"></i>December</p>
                            </div>
                            <ul class="rating rating-review">
                                <li class="st"></li>
                                <li class="st"></li>
                                <li class="st"></li>
                                <li class="st"></li>
                                <li class="sth"></li>
                            </ul>
                        </div>
                        <p class="content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda at,
                            blanditiis debitis dolores eligendi eos fugiat incidunt ipsa nemo obcaecati omnis possimus
                            quam quibusdam quidem quis, rerum sit vitae voluptatibus!</p>
                        <p class="content-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Culpa delectus
                            dolore dolorem esse in modi molestias mollitia pariatur quos repellat repudiandae tempore,
                            vero voluptatibus. Deserunt illum ipsam officiis placeat qui?</p>
                    </div>
                    <div class="tab-content-custom">
                        <p class="content-text">
                            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi consequuntur deserunt earum
                            eius error esse excepturi, hic magnam mollitia, neque nesciunt, numquam odit perferendis
                            perspiciatis quaerat quis quos similique tempore?
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <?= $column_right ?>
<!--        <div class="sidebar">-->
<!--            <div class="sidebar-item">-->
<!--                <h6 class="sidebar-item-title">category</h6>-->
<!--                <a href="#" class="sidecar-item-category">Smart Phone</a>-->
<!--                <a href="#" class="sidecar-item-category active">desktop </a>-->
<!--                <a href="#" class="sidecar-item-category">accessories</a>-->
<!--                <a href="#" class="sidecar-item-category">laptop</a>-->
<!--                <a href="#" class="sidecar-item-category">networking</a>-->
<!--                <a href="#" class="sidecar-item-category">software</a>-->
<!--            </div>-->
<!--            <form class="sidebar-item">-->
<!--                <h6 class="sidebar-item-title">by Brand</h6>-->
<!--                <label class="sidebar-checkbox"><input type="checkbox"><span>hp</span></label>-->
<!--                <label class="sidebar-checkbox"><input type="checkbox" checked><span>dell</span></label>-->
<!--                <label class="sidebar-checkbox"><input type="checkbox"><span>apple</span></label>-->
<!--                <label class="sidebar-checkbox"><input type="checkbox"><span>asus</span></label>-->
<!--                <label class="sidebar-checkbox"><input type="checkbox"><span>sumsung</span></label>-->
<!--            </form>-->
<!--            <div class="sidebar-item">-->
<!--                <h6 class="sidebar-item-title">by price</h6>-->
<!--                <a href="#" class="sidecar-item-category">$500 - $1000</a>-->
<!--                <a href="#" class="sidecar-item-category active">$1000 - $2000 </a>-->
<!--                <a href="#" class="sidecar-item-category">$2000 - $3000</a>-->
<!--                <a href="#" class="sidecar-item-category">$3000 - $4000</a>-->
<!--                <a href="#" class="sidecar-item-category">$4000 - $5000</a>-->
<!--                <a href="#" class="sidecar-item-category">$5000 - $6000</a>-->
<!--            </div>-->
<!--        </div>-->
    </div>
</div>

<?= $footer ?>
