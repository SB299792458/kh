<?php if (count($currencies) > 1) { ?>
<form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
  <div id="currency">
  		<div id="currency-switcher">
     	 <?php foreach ($currencies as $currency) { ?>
          <?php if ($currency['code'] == $currency_code) { ?>
            <?php if ($currency['symbol_left']) { ?>
              <span class="currency-selected"><span class="symbol"><?php echo $currency['symbol_left']; ?></span> <?php echo $currency['title'];?></span>
            <?php } else { ?>
              <span class="currency-selected"><span class="symbol"><?php echo $currency['symbol_right']; ?></span> <?php echo $currency['title'];?></span>
            <?php } ?>
          <?php } ?>
         <?php } ?>
          <div id="currency-options" style="display: none;">
            <div class="arrow-up"></div>
            <div id="currency-options-inner">
        	  <?php foreach ($currencies as $currency) { ?>
              <?php if ($currency['symbol_left']) { ?>
                <a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().parent().parent().parent().submit();"><span class="symbol"><?php echo $currency['symbol_left']; ?></span> <?php echo $currency['title']; ?></a>
              <?php } else { ?>
                <a onclick="$('input[name=\'currency_code\']').attr('value', '<?php echo $currency['code']; ?>').submit(); $(this).parent().parent().parent().parent().parent().submit();"><span class="symbol"><?php echo $currency['symbol_right']; ?></span> <?php echo $currency['title']; ?></a>
              <?php } ?>
            <?php } ?>
            </div>
          </div>
      </div>
    <input type="hidden" name="currency_code" value="" />
    <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />          
  </div>
</form>
<?php } ?>