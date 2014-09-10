<div id="cart">
  <div class="heading">
    <h4><a><span id="cart-total"><?php echo $text_items; ?></span></a></h4></div>
  <div class="content">
    <div class="arrow-up-back"></div>
    <div class="arrow-up"></div>
    <?php if ($products || $vouchers) { ?>
    <div class="mini-cart-info">
      <table>
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
            <?php } ?></td>
          <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <div>
              <?php foreach ($product['option'] as $option) { ?>
              - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small><br />
              <?php } ?>
              <?php if ($product['recurring']): ?>
              - <small><?php echo $text_payment_profile ?> <?php echo $product['profile']; ?></small><br />
              <?php endif; ?>
            </div></td>
          <td class="quantity">x&nbsp;<?php echo $product['quantity']; ?></td>
          <td class="total"><?php echo $product['total']; ?></td>
          <td class="remove"><img src="catalog/view/theme/shopycart/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $product['key']; ?> #cart > *');" /></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="image"></td>
          <td class="name"><?php echo $voucher['description']; ?></td>
          <td class="quantity">x&nbsp;1</td>
          <td class="total"><?php echo $voucher['amount']; ?></td>
          <td class="remove"><img src="catalog/view/theme/shopycart/image/remove-small.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" onclick="$('#cart').load('index.php?route=module/cart&remove=<?php echo $voucher['key']; ?> #cart > *');" /></td>
        </tr>
        <?php } ?>
      </table>
    </div>
    <div class="mini-cart-total">
      <table>
        <?php foreach ($totals as $total) { ?>
        <tr>
          <td align="right"><b><?php echo $total['title']; ?>:</b></td>
          <td align="right"><?php echo $total['text']; ?></td>
        </tr>
        <?php } ?>
      </table>
    </div>

    <!-- Begin mini cart buttons -->
    <div class="checkout">
      <a class="button" id="close_cart">Close</a> 
      <a href="<?php echo $cart; ?>" class="button"><?php echo $text_cart; ?></a>
      <a href="<?php echo $checkout; ?>" id="checkout-button" class="button"><?php echo $text_checkout; ?></a>
    </div>
    <?php } else { ?>
      <div class="empty"><?php echo $text_empty; ?><br /><br /><a class="button" id="close_cart">Close</a></div>
    <?php } ?>
    <!-- End mini cart buttons -->

  </div>
</div>

<!-- "Close" button mobile devices fix -->
<script type="text/javascript">
    $(function() {
        $('#close_cart').live('click', function (event) {
            event.preventDefault();
            $('#cart').removeClass('active');
        });
    });
</script>
