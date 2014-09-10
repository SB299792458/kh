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
  
  <!-- Begin category info -->
  <div class="category-info">
    <div class="category-info-inner">
      <div class="heading-center"><?php echo $heading_title; ?></div>
      <?php if ($thumb || $description) { ?>
          <?php if ($thumb) { ?>
          <div class="image"><img src="<?php echo $thumb; ?>" alt="<?php echo $heading_title; ?>" /></div>
          <?php } ?>
          <?php if ($description) { ?>
          <?php echo $description; ?>
          <?php } ?>
      <?php } ?>
    </div>
  </div>
  <!-- End category info -->

  <!-- Begin category list -->
  <?php if ($categories) { ?>   
  <div class="category-list">
  <span><?php echo $text_refine; ?>:</span>
    <?php if (count($categories) <= 5) { ?>
    <ul>
      <?php foreach ($categories as $category) { ?>
      <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
      <?php } ?>
    </ul>
    <?php } else { ?>
    <?php for ($i = 0; $i < count($categories);) { ?>
    <ul>
      <?php $j = $i + ceil(count($categories) / 4); ?>
      <?php for (; $i < $j; $i++) { ?>
      <?php if (isset($categories[$i])) { ?>
      <li><a href="<?php echo $categories[$i]['href']; ?>"><?php echo $categories[$i]['name']; ?></a></li>
      <?php } ?>
      <?php } ?>
    </ul>
    <?php } ?>
    <?php } ?>
  </div>
  <?php } ?>
  <!-- End category list -->

  <!-- Begin product filter -->
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
          			<div class="more"><a href="<?php echo $product['href']; ?>" title="<?php echo $this->language->get('theme_view_more'); ?>"></a></div>
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
  <?php if (!$categories && !$products) { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="button"><?php echo $button_continue; ?></a></div>
  </div>
  <?php } ?>
  <!-- End no products -->

  <!-- Begin no pagination -->
  <?php if ($products) { ?>
    <div class="pagination"><?php echo $pagination; ?></div>
  <?php } ?>
  <!-- End no pagination -->
  
  <?php echo $content_bottom; ?>

</div>
<!-- End content -->

<?php echo $footer; ?>