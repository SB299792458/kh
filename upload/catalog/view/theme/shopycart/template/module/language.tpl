<?php if (count($languages) > 1) { ?>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <div id="language">
    	<div id="language-switcher">
       	<?php foreach ($languages as $language) { ?>
          <?php if ($language['code'] == $language_code) { ?>
            <span class="language-selected"> <img src="image/flags/<?php echo $language['image']; ?>" alt="<?php echo $language['name'];?>" /> <?php echo $language['name'];?></span>
          <?php } ?>
        <?php } ?>
        <div id="language-options" style="display: none;">
          <div class="arrow-up"></div>
          <div id="language-options-inner">
            <?php foreach ($languages as $language) { ?>
              <a style="background: url('image/flags/<?php echo $language['image']; ?>') 20px 50% no-repeat;" onclick="$('input[name=\'language_code\']').attr('value', '<?php echo $language['code']; ?>').submit(); $(this).parent().parent().parent().parent().parent().submit();"><?php echo $language['name']; ?></a>
            <?php } ?>
          </div>
        </div>
      </div>
      <input type="hidden" name="language_code" value="" />
      <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
    </div>
  </form>
<?php } ?>