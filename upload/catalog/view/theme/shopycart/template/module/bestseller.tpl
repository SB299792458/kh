<div class="box">
  <div class="box-heading"><span class="bestsellers"><?php echo $heading_title; ?></span></div>
  <div class="box-content">
    <div class="box-product">
    <?php foreach ($products as $product) { ?>
    
    <!-- Begin box-product div -->
    <div>
      
      <!-- Begin boxgrid -->
      <div class="boxgrid">
        <?php if ($product['thumb']) { ?>
        <div class="image"><a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" /></a></div>
        <?php } ?>
        <!-- Begin box-product-info -->
        <div class="box-product-info">
          <div class="thumbnail-buttons">
          	<div class="more"><a href="<?php echo $product['href']; ?>" title="view more"></a></div>
      			<div class="cart"><input type="button" value="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" title="<?php echo $button_cart; ?>" class="button-cart" /></div>
      			<div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get('button_wishlist'); ?>"></a></div>
      			<div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $this->language->get('button_compare'); ?>"></a></div>
          </div>
      	</div>
      	<!-- End box-product-info -->
      </div>
      <!-- End boxgrid -->
      
      <!-- Begin boxgrid-bottom -->
      <div class="boxgrid-bottom">
        <div class="arrow-box"></div>
      	<div class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></div>
      	<?php if ($product['price']) { ?>
        	<div class="price">
          		<?php if (!$product['special']) { ?>
          		<?php echo $product['price']; ?>
          		<?php } else { ?>
          		<span class="price-old"><?php echo $product['price']; ?></span> <span class="price-new"><?php echo $product['special']; ?></span>
          		<div class="ribbon-sale"></div>
          		<?php } ?>
        	</div>
      	<?php } ?>	
      </div>
      <!-- End boxgrid-bottom -->
      
    </div>
    <!-- Begin box-product div -->
      
    <?php } ?>
    </div>
  </div>
</div>