<?php if ($modules) : ?>

    <div class="sidebar">
        <?php foreach ($modules as $module) : ?>

            <div class="sidebar-item">

                <?= $module; ?>

            </div>

        <?php endforeach; ?>

    </div>

<?php endif; ?>