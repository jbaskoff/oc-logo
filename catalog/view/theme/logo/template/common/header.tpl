<!DOCTYPE html>
<html lang="<?= $lang ?>">
<head>
    <meta charset="UTF-8">
    <base href="<?= $base ?>">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $title ?></title>
    <link rel="stylesheet" href="catalog/view/theme/logo/libs/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="catalog/view/theme/logo/libs/slick-1.6.0/slick/slick.css">
    <link rel="stylesheet" href="catalog/view/theme/logo/libs/slick-1.6.0/slick/slick-theme.css">
    <link rel="stylesheet" href="catalog/view/theme/logo/libs/animate.css">

    <script type="text/javascript" src="catalog/view/theme/logo/js/jquery-2.1.3.js"></script>

    <link href="catalog/view/javascript/bootstrap/css/bootstrap.css" rel="stylesheet" media="screen" />
    <script src="catalog/view/javascript/bootstrap/js/bootstrap.js" type="text/javascript"></script>

    <link rel="stylesheet" type="text/css" href="catalog/view/theme/logo/style/style.css">
    <link rel="stylesheet" type="text/css" href="catalog/view/theme/logo/style/media.css">

    <script type="text/javascript" src="catalog/view/theme/logo/js/common.js"></script>

    <script type="text/javascript" src="catalog/view/theme/logo/libs/slick-1.6.0/slick/slick.min.js"></script>
    <script type="text/javascript" src="catalog/view/theme/logo/js/myplugin.js"></script>
    <script type="text/javascript" src="catalog/view/theme/logo/js/js.js"></script>

    <?php foreach ($links as $link): ?>
        <link href="<?= $link['href'] ?>" rel="<?= $link['rel'] ?>">
    <?php endforeach; ?>
    <?php foreach ($styles as $style): ?>
        <link href="<?= $style['href'] ?>" rel="<?= $style['rel'] ?>" type="text/css" media="<?= $style['media'] ?>">
    <?php endforeach; ?>
    <?php foreach ($scripts as $script): ?>
        <script src="<?= $script ?>"></script>
    <?php endforeach; ?>



</head>
<body>
<header>
    <div class="wrapper">
        <ul class="header_nav">
            <li><a class="head_nav_item <?= ($home == $og_url) ? 'active' : '' ?>" href="<?= $home ?>"><i class="nav_ico fa fa-home"></i><?= $text_home ?></a></li>
            <li><a class="head_nav_item <?= ($account == $og_url) ? 'active' : '' ?>" href="<?= $account ?>"><i class="nav_ico fa fa-user"></i><?= $text_account ?></a></li>
            <li><a class="head_nav_item <?= ($shopping_cart == $og_url) ? 'active' : '' ?>" href="<?= $shopping_cart ?>"><i class="nav_ico fa fa-shopping-cart"></i><?= $text_shopping_cart ?></a></li>
            <li><a class="head_nav_item <?= ($checkout == $og_url) ? 'active' : '' ?>" href="<?= $checkout ?>"><i class="nav_ico fa fa-check"></i><?= $text_checkout ?></a></li>
        </ul>
        <div class="lang-currency-wr">
            <?= $language ?>
            <?= $currency ?>
        </div>
    </div>
</header>
<div class="logo_section">
    <div class="wrapper">
        <a href="#" class="logo">lo<span>go</span></a>
        <div class="user_meta">
            <p class="cabinet">
                <?php if ($logged) : ?>
                    <a href="<?= $logout ?>"><?= $text_logout ?></a>
                <?php else: ?>
                    <a href="<?= $account ?>"><?= $text_account ?></a> or <a href="<?= $register ?>"><?= $text_register ?></a>
                <?php endif; ?>
            </p>
            <div class="basket_wr">
                <div class="basket-wr-item">
                    <a href="#" data-amount='2' class="note fa fa-pencil-square-o"></a>
                    <div class="fall-basket">
                        <h6>Showing 2 of 2 items added </h6>
                        <hr class="single-hr">
                        <div class="added-good">
                            <div class="img-wr"><img src="catalog/view/theme/logo/images/basket-img.png" alt=""></div>
                            <div class="good-name-wr">
                                <p class="good-name">beatiful croad</p>
                                <p class="good-b-descr">Size: <span>One size</span></p>
                                <p class="good-b-descr">Quantity: <span>01</span></p>
                            </div>
                            <div class="good-b-price">
                                <div class="price">$30.00</div>
                                <a href="#" class="btn-del"></a>
                            </div>
                        </div>
                        <div class="added-good">
                            <div class="img-wr"><img src="catalog/view/theme/logo/images/basket-img.png" alt=""></div>
                            <div class="good-name-wr">
                                <p class="good-name">beatiful croad</p>
                                <p class="good-b-descr">Size: <span>One size</span></p>
                                <p class="good-b-descr">Quantity: <span>01</span></p>
                            </div>
                            <div class="good-b-price">
                                <div class="price">$30.00</div>
                                <a href="#" class="btn-del"></a>
                            </div>
                        </div>
                        <div class="total-sum">
                            <span>Total excluding delivry: </span>
                            <span>$80.00</span>
                        </div>
                        <div class="basket-button">
                            <a href="#" class="basket-button-item">View Cart</a>
                            <a href="#" class="basket-button-item">Continue To Checkout</a>
                        </div>
                    </div>
                </div>
                <?= $cart ?>
            </div>
        </div>
    </div>
</div>
<div class="nav_cat_wr">
    <div class="wrapper">
        <ul class="nav_cat">
            <?php foreach ($categories as $category) : ?>
                <?php if ($category['href'] == $og_url) : ?>
                    <li ><a class="nav_cat_item active" href="<?= $category['href'] ?>"><?= $category['name'] ?></a></li>
                <?php else: ?>
                    <li><a class="nav_cat_item" href="<?= $category['href'] ?>"><?= $category['name'] ?></a></li>
                <?php endif; ?>
            <?php endforeach; ?>
        </ul>
        <form class="search_form" action="">
            <input class="search" type="text" placeholder="Search Your Item........">
            <button class="search_btn fa fa-search"></button>
        </form>
    </div>
</div>

