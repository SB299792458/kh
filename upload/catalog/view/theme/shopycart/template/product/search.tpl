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

  <b><?php echo $text_critea; ?>:</b>
  
  <!-- Begin search -->
  <div class="content">
    <p><?php echo $entry_search; ?>
      <?php if ($search) { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" />
      <?php } else { ?>
      <input type="text" name="search" value="<?php echo $search; ?>" onclick="this.value = '';" onkeydown="this.style.color = '000000'" style="color: #999;" />
      <?php } ?>
      <select name="category_id">
        <option value="0"><?php echo $text_category; ?></option>
        <?php foreach ($categories as $category_1) { ?>
        <?php if ($category_1['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_1['category_id']; ?>" selected="selected"><?php echo $category_1['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_1['category_id']; ?>"><?php echo $category_1['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_1['children'] as $category_2) { ?>
        <?php if ($category_2['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_2['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_2['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_2['name']; ?></option>
        <?php } ?>
        <?php foreach ($category_2['children'] as $category_3) { ?>
        <?php if ($category_3['category_id'] == $category_id) { ?>
        <option value="<?php echo $category_3['category_id']; ?>" selected="selected">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } else { ?>
        <option value="<?php echo $category_3['category_id']; ?>">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $category_3['name']; ?></option>
        <?php } ?>
        <?php } ?>
        <?php } ?>
        <?php } ?>
      </select>
      <?php if ($sub_category) { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" checked="checked" />
      <?php } else { ?>
      <input type="checkbox" name="sub_category" value="1" id="sub_category" />
      <?php } ?>
      <label for="sub_category"><?php echo $text_sub_category; ?></label>
    </p>
    <?php if ($description) { ?>
    <input type="checkbox" name="description" value="1" id="description" checked="checked" />
    <?php } else { ?>
    <input type="checkbox" name="description" value="1" id="description" />
    <?php } ?>
    <label for="description"><?php echo $entry_description; ?></label>
  </div>
  <div class="buttons">
    <div class="right"><input type="button" value="<?php echo $button_search; ?>" id="button-search" class="button" /></div>
  </div>
  <!-- End search -->
  
  <h2><?php echo $text_search; ?></h2>
  <br />
  
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

  <div class="pagination"><?php echo $pagination; ?></div>
  
  <!-- Begin no products -->
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php }?>
  <!-- End no products -->
  
  <?php echo $content_bottom; ?>
  
</div>
<!-- End content -->




<script type="text/javascript"><!--
$('#content input[name=\'search\']').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').bind('change', function() {
  if (this.value == '0') {
    $('input[name=\'sub_category\']').attr('disabled', 'disabled');
    $('input[name=\'sub_category\']').removeAttr('checked');
  } else {
    $('input[name=\'sub_category\']').removeAttr('disabled');
  }
});

$('select[name=\'category_id\']').trigger('change');

$('#button-search').bind('click', function() {
	url = 'index.php?route=product/search';
	
  var search = $('#content input[name=\'search\']').attr('value');
	
  if (search) {
    url += '&search=' + encodeURIComponent(search);
	}

  var category_id = $('#content select[name=\'category_id\']').attr('value');
	
  if (category_id > 0) {
    url += '&category_id=' + encodeURIComponent(category_id);
	}
	
  var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');
	
  if (sub_category) {
    url += '&sub_category=true';
	}
		
  var filter_description = $('#content input[name=\'description\']:checked').attr('value');
	
	if (filter_description) {
    url += '&description=true';
	}

	location = url;
});
//--></script> 

<?php echo $footer; ?>