<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">

<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<!-- Begin jquery library -->
<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<!-- End jquery library -->

<!-- Begin Google fonts (Montserrat & Roboto+Condensed) -->
<link href='http://fonts.googleapis.com/css?family=Montserrat|Archivo+Narrow|Roboto+Condensed' rel='stylesheet' type='text/css'>
<!-- End Google fonts (Oswald & Open Sans) -->

<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/stylesheet.css" />
<link rel="stylesheet" media="all" href="catalog/view/theme/shopycart/stylesheet/mobile.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/cloud-zoom.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/jquery.qtip.css" />
<link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/slidingbox.css" />
 
<script type="text/javascript" src="catalog/view/theme/shopycart/js/custom.js"></script>
<script type="text/JavaScript" src="catalog/view/theme/shopycart/js/cloud-zoom.1.0.2.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1"/>
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>

<!--[if IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
  <link rel="stylesheet" type="text/css" href="catalog/view/theme/shopycart/stylesheet/ie6.css" />
  <script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
  <script type="text/javascript">
    DD_belatedPNG.fix('#logo img');
  </script>
<![endif]-->

<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>

<?php echo $google_analytics; ?>

</head>

<body>

<!-- Begin header -->
<div id="header-area">
  <div id="header">
    <div id="header-content">

      <!-- Begin logo -->
      <?php if ($logo) { ?>
        <div id="logo"><a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" alt="<?php echo $name; ?>" /></a></div>
      <?php } ?>  
      <!-- End logo -->



  <?php if(isset($megamenu)){ echo $megamenu; } else { ?>
      <!-- Begin menu -->
      <?php if ($categories) { ?>
      <div id="menu">
        <ul>
          <?php foreach ($categories as $category) { ?>
            <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?><?php if ($category['children']) { ?><span class="arrow-down"></span><span class="arrow-up-back"></span><span class="arrow-up"></span><?php } ?></a>
              <?php if ($category['children']) { ?>
                <div>
                  <div class="sub-menu-content">
                    <?php for ($i = 0; $i < count($category['children']);) { ?>
                      <ul>
                        <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                        <?php for (; $i < $j; $i++) { ?>
                        <?php if (isset($category['children'][$i])) { ?>
                        <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                        <?php } ?>
                        <?php } ?>
                      </ul>
                    <?php } ?>
                  </div>
                </div>
              <?php } ?>
            </li>
          <?php } ?>
        </ul>
      </div>
      <?php } ?>
      <!-- End menu -->
   <?php } ?>


      <!-- Begin welcome mobile -->
      <div id="welcome-mobile">
        <?php if (!$logged) { ?>
          <?php echo $text_welcome; ?>
        <?php } else { ?>
          <?php echo $text_logged; ?>
        <?php } ?>
      </div>
      <!-- End welcome mobile -->

      <!-- Begin links mobile -->
      <div class="links-mobile">
        <a href="<?php echo $home; ?>"><span class="text-home"><?php echo $text_home; ?></span></a>
        <a href="<?php echo $wishlist; ?>" id="wishlist-total-mobile"><?php echo $text_wishlist; ?></a>
        <a href="<?php echo $account; ?>"><span class="text-account"><?php echo $text_account; ?></span></a>
        <a href="<?php echo $shopping_cart; ?>"><span class="text-shopping-cart"><?php echo $text_shopping_cart; ?></span></a>
        <a href="<?php echo $checkout; ?>"><span class="text-checkout"><?php echo $text_checkout; ?></span></a>
        </div>
      <!-- End links mobile -->

    </div>
    <!-- Begin top bar -->
      <div id="top-bar">
        <div id="top-bar-content">

          <!-- Begin dropdown links -->
          <div class="dropdown-links">
            <ul>
              <li><?php echo $language; ?></li>
              <li><?php echo $currency; ?></li>

              <!-- Begin my account links (My Menu) -->
              <li id="top-links">
                <div id="top-links-switcher">
                  <span class="top-links-selected">My Menu</span>
                  <div id="top-links-options" style="display: none;">
                    <div class="arrow-up"></div>
                      <div id="top-links-options-inner">
                        <ul>
                          <li><a class="account" href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                          <li><a class="wishlist" href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                          <li><a class="shopping-cart" href="<?php echo $shopping_cart; ?>"><?php echo $text_shopping_cart; ?></a></li>
                          <li><a class="checkout" href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                        </ul>
                      </div>
                  </div>
                </div> 
              </li>
              <!-- End my account links (My Menu) -->

              <!-- Begin blog link (Blog Manager). ATTENTION! Blog Manager extension is NOT included in the theme download pack! If you want to use it, you must purchase the extension here: http://www.echothemes.com -->
              <li class="blog-link"><a href="<?php echo $this->url->link('blog/category/home'); ?>"><?php echo $this->language->get('theme_blog'); ?></a></li>
              <!-- End blog link (Blog Manager) -->

            </ul>
          </div>
          <!-- End dropdown links -->

          <?php echo $cart; ?>

          <!-- Begin search -->
          <div id="search">
            <div class="button-search"></div>
            <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
          </div>
          <!-- End search -->

          <!-- Begin welcome -->
          <div id="welcome">
            <?php if (!$logged) { ?>
              <?php echo $text_welcome; ?>
            <?php } else { ?>
              <?php echo $text_logged; ?>
            <?php } ?>
          </div>
          <!-- End welcome -->
         
		       <!-- Begin menu-mobile -->
      <div id="menu-mobile">
        <div id="menu-mobile-link"><img src="catalog/view/theme/shopycart/image/mobile-menu.png" alt="<?php echo $this->language->get('theme_menu'); ?>" /></div>
        <div id="menu-mobile-nav">
          <ul>
            <?php foreach ($categories as $category) { ?>
              <li class="cat-mobile"><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
                <!-- Begin sub categories -->
                <?php if ($category['children']) { ?>
                <div class="sub-cat-mobile">
                  <?php for ($i = 0; $i < count($category['children']);) { ?>
                    <ul>
                      <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
                      <?php for (; $i < $j; $i++) { ?>
                      <?php if (isset($category['children'][$i])) { ?>
                      <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
                      <?php } ?>
                      <?php } ?>
                    </ul>
                  <?php } ?>
                </div>
                <?php } ?>
                <!-- End sub categories -->
              </li>
            <?php } ?>
          </ul>
        </div>
      </div>
      <!-- End menu-mobile -->
		 
		 
        </div>
      </div>
      <!-- End top bar -->


  </div>

</div>
<!-- End header -->

<!-- Begin container -->
<div id="container-wrapper">
<div id="container">
  <div id="scroll-down-target"></div> <!-- This is Flexslider scroll down button target -->

<?php if ($error) { ?>
<div class="warning"><?php echo $error ?><img src="catalog/view/theme/shopycart/image/close.png" alt="" class="close" /></div>
<?php } ?>

<!-- Begin notifications -->
<div id="notification-fixed">
  <div id="notification"></div>
</div>
<!-- End notifications -->





<!-- Begin cart "Close" button mobile devices fix script -->
<script type="text/javascript">
    $(function() {
        $('.success .close, .warning .close, .attention .close, .information .close').live('click', function (event) {
            event.preventDefault();
            $('#notification').removeClass('active');
        });
    });
</script>
<!-- End cart "Close" button mobile devices fix script -->

