
<section class="main-slider">

    <?php foreach ($banners as $banner) : ?>
        <?php if ($banner['link']) : ?>
            <a href="<?php echo $banner['link']; ?>" class="main-slider-item-wr">
                <div class="main-slider-item">
                    <img src="<?= $banner['image'] ?>" alt="<?php echo $banner['title']; ?>">
                    <h2 class="slider-item-title"><?php echo $banner['title']; ?></h2>
                </div>
            </a>
        <?php else: ?>
            <div class="main-slider-item-wr">
                <div class="main-slider-item">
                    <img src="<?= $banner['image'] ?>" alt="<?php echo $banner['title']; ?>">
                    <h2 class="slider-item-title"><?php echo $banner['title']; ?></h2>
                </div>
            </div>
        <?php endif; ?>
    <?php endforeach; ?>


</section>