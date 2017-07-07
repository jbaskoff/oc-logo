<h6 class="sidebar-item-title"><?= $heading_title ?></h6>

<?php foreach ($categories as $category) : ?>

    <?php if($category['category_id'] == $category_id) : ?>

        <a href="<?= $category['href'] ?>" class="sidecar-item-category active"><?= $category['name'] ?></a>

    <?php else: ?>

        <a href="<?= $category['href'] ?>" class="sidecar-item-category "><?= $category['name'] ?></a>

    <?php endif; ?>

<?php endforeach; ?>