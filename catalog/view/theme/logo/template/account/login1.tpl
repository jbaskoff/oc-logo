<?= $header ?>

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
    <div class="login">

        <div class="well">
            <h2><?php echo $text_new_customer; ?></h2>
            <p><strong><?php echo $text_register; ?></strong></p>
            <p><?php echo $text_register_account; ?></p>
            <a href="<?php echo $register; ?>" class="btn btn-primary logo-btn"><?php echo $button_continue; ?></a>
        </div>

        <div class="well">
            <h2><?php echo $text_returning_customer; ?></h2>
            <p><strong><?php echo $text_i_am_returning_customer; ?></strong></p>
            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="form-group">
                    <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                    <input type="text" name="email" value="<?php echo $email; ?>"
                           placeholder="<?php echo $entry_email; ?>"
                           id="input-email" class="form-control"/>
                </div>
                <div class="form-group">
                    <label class="control-label" for="input-password"><?php echo $entry_password; ?></label>
                    <input type="password" name="password" value="<?php echo $password; ?>"
                           placeholder="<?php echo $entry_password; ?>" id="input-password" class="form-control"/>
                    <a href="<?php echo $forgotten; ?>" class="forgott-password"><?php echo $text_forgotten; ?></a></div>
                <input type="submit" value="<?php echo $button_login; ?>" class="btn btn-primary logo-btn"/>
                <?php if ($redirect) { ?>
                    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>"/>
                <?php } ?>
            </form>
        </div>

    </div>


</div>


<?= $footer ?>
