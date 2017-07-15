<div class="basket-wr-item">
    <?php
    $products_quantity = 0;
    foreach ($products as $product) {
        $products_quantity += $product['quantity'];
    }
    ?>
    <div id="customer-basket">
        <div <?= ((count($products) > 0) ? "data-amount='" . $products_quantity . "'" : '') ?>  class="basket fa fa-shopping-cart" "></div>
    </div>

    <div class="fall-basket" id="customer-fall-basket">
        <?php if (count($products) > 0) : ?>
            <h6>Showing 2 of 2 items added </h6>
            <hr class="single-hr">
            <?php $total_sum = 0;
            $total_sum_inference = ''; ?>
            <div class="goods-group">
                <?php foreach ($products as $product) : ?>
                    <div class="added-good">
                        <a href="<?= $product['href'] ?>" class="img-wr"><img src="<?= $product['thumb'] ?>" alt=""></a>
                        <div class="good-name-wr">
                            <a href="<?= $product['href'] ?>" class="good-name"><?= $product['name'] ?></a>
                            <p class="good-b-descr"><?= $text_quantity ?>: <span><?= $product['quantity'] ?></span></p>
                        </div>
                        <div class="good-b-price">
                            <div class="price"><?= $product['total'] ?></div>
                            <button class="btn-del"
                                    onclick="cart.remove('<?php echo $product['cart_id']; ?>');"></button>
                        </div>
                    </div>
                    <?php $total_sum += preg_replace("%[^0-9|\.]%", "", $product['total']) ?>
                    <?php
                    if (!empty($total_sum_inference)) {
                        $total_sum_inference = "";
                    }

                    $total_sum_inference = preg_replace("%[0-9|\.]%", "{$total_sum}", $product['price'])
                    ?>
                <?php endforeach; ?>
            </div>

            <div class="total-sum">
                <span>Total sum</span>
                <span class="sum-number"><?= $total_sum ?></span>
            </div>

            <div class="basket-button">
                <a href="<?= $cart ?>" class="basket-button-item"><?= $text_cart ?></a>
                <a href="<?= $checkout ?>" class="basket-button-item"><?= $text_checkout ?></a>
            </div>
        <?php else: ?>
            <div class="basket-button">
                <?= $text_empty; ?>
            </div>
        <?php endif; ?>

    </div>
</div>