<?php
function discount($price, $tax, $tag_before = '-', $tag_after = '%')
{
    $price = preg_replace("%[^0-9|\.]%", "", $price);
    $tax = preg_replace("%[^0-9|\.]%", "", $tax);
    return $tag_before . round(100 - ($tax * 100) / $price, 0) . $tag_after;
}

function html_rating($rating_count = 0)
{
    $result = "";
    for ($i = 0; $i < 5; $i++) {
        if ((int)$rating_count == $i and ($rating_count - floor($rating_count)) != 0) {
            $result .= '<li class="st hs"></li>';
        } else {
            $result .= $i < $rating_count ? '<li class="st fs"></li>' : '<li class="st es"></li>';
        }
    }
    echo $result;
    return true;
}

?>
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

        <div class="grid">

            <?= $content_top ?>

            <div class="category-item-grid">

                <?php foreach ($products as $product) : ?>

                    <div class="good_item" <?php if ($product['tax']) echo 'data-discount="' . discount($product['price'], $product['tax']) . '"'; ?>>
                        <a href="<?= $product['href'] ?>" class="img"><img src="<?= $product['thumb'] ?>"
                                                                           alt="<?= $product['name'] ?>"></a>
                        <div class="good_title"><?= $product['name'] ?></div>
                        <div class="good_panel">
                            <div class="standard_panel">
                                <div class="good_price">
                                    <?php if ($product['tax']) : ?>
                                        <p class="good_old_price"><?= $product['price'] ?></p>
                                        <p class="good_current_price"><?= $product['tax'] ?></p>
                                    <?php else: ?>
                                        <p class="good_current_price"><?= $product['price'] ?></p>
                                    <?php endif; ?>
                                </div>
                                <ul class="stars">
                                    <?php html_rating($product['rating']) ?>
                                </ul>
                            </div>
                            <div class="hover_panel">
                                <div class="good_buttons_wr">
                                    <a href="#" class="good_btn card_btn active" aria-hidden="true"><i
                                                class="fa fa-shopping-cart"></i><span>add to cart</span></a>
                                    <a href="#" class="good_btn wish_btn" aria-hidden="true"><i
                                                class="fa fa-pencil-square-o"></i><span>Add to wish list</span></a>
                                    <a href="#" class="good_btn arrow_btn" aria-hidden="true"><i
                                                class="fa fa-exchange"></i><span>Add to Compare</span></a>
                                </div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            </div>
        </div>
        <?= $column_right ?>
    </div>
</div>

<?= $footer ?>
