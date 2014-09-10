<?php echo $header; ?>

<?php echo $column_left; ?><?php echo $column_right; ?>

<!-- Begin content -->
<div id="content">

  <!-- Begin breadcrumb -->
  <div id="breadcrumb-center" class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <!-- End breadcrumb -->

  <?php echo $content_top; ?>
  
  <div class="heading-center"><?php echo $heading_title; ?></div>
  
  <!-- Begin product filter -->
  <?php if ($products) { ?>
  <div class="product-filter">
    <div class="product-compare"><a href="<?php echo $compare; ?>" id="compare-total"><?php echo $text_compare; ?></a></div>
    <div class="limit"><?php echo $text_limit; ?>
      <select onchange="location = this.value;">
        <?php foreach ($limits as $limits) { ?>
        <?php if ($limits['value'] == $limit) { ?>
        <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
    <div class="sort"><?php echo $text_sort; ?>
      <select onchange="location = this.value;">
        <?php foreach ($sorts as $sorts) { ?>
        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
        <?php } ?>
        <?php } ?>
      </select>
    </div>
  </div>
  <!-- End product filter -->

<!-- Begin product list -->
<div class="box">
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
      			<div class="wishlist"><a onclick="addToWishList('<?php echo $product['product_id']; ?>');" title="<?php echo $button_wishlist; ?>"></a></div>
      			<div class="compare"><a onclick="addToCompare('<?php echo $product['product_id']; ?>');" title="<?php echo $button_compare; ?>"></a></div>
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
    <!-- End box-product div -->
      
    <?php } ?>
    </div>
  </div>
</div>
<!-- End product list -->
  
  <!-- Begin no products -->
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <!-- End no products -->
  
  <div class="pagination"><?php echo $pagination; ?></div>
  
  <?php echo $content_bottom; ?>
  
</div>
<!-- End content -->

<?php echo $footer; ?>