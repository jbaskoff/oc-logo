
<div class="basket-wr-item">
    <a href="#" <?= ( (count($products) > 0) ? "data-amount='" . count($products) . "'" : '') ?> class="basket fa fa-shopping-cart"></a>
    <div class="fall-basket">
        <?php if (count($products) > 0) : ?>
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
        <?php else: ?>
            <div class="basket-button">
                <?php echo $text_empty; ?>
            </div>
        <?php endif; ?>

    </div>
</div>