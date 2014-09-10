</div><!-- End container //-->
</div><!-- End container wrapper //-->

<!-- Begin footer area //-->
<div id="footer-top-image"></div>
<div id="footer-area">
  <!-- Begin footer //-->
  <div id="footer">

    <!-- Begin footer columns //-->
    <div id="footer-columns">
      
      <!-- Begin contacts //-->
      <div class="column-contacts">
        <h3><?php echo $text_contact; ?></h3>
        <ul>
          <li class="phone">(+91) 9660570208</li>
          <li class="mobile">(+91) 8441000909</li>
          <li class="email"><a href="mailto:info.kalahaat@gmail.com">info.kalahaat@gmail.com</a></li>
        </ul>

        <!-- Begin social icons //-->
        <ul class="social-icons">
          <li><a class="facebook" title="Facebook" target="_blank" href="http://www.your-facebook-address.com"><img src="catalog/view/theme/shopycart/image/social/facebook.png" alt="facebook"></a></li>
          <li><a class="twitter" title="Twitter" target="_blank" href="http://www.your-twitter-address.com"><img src="catalog/view/theme/shopycart/image/social/twitter.png" alt="twitter"></a></li>
          <li><a  class="linkedin" title="Linkedin" target="_blank" href="http://www.your-linkedin-address.com"><img src="catalog/view/theme/shopycart/image/social/linkedin.png" alt="linkedin"></a></li>
          <li><a  class="google" title="Google" target="_blank" href="http://www.your-google-address.com"><img src="catalog/view/theme/shopycart/image/social/google.png" alt="google"></a></li>
        
        </ul>
        <!-- End social icons //-->

      </div>
      <!-- End contacts //-->

      <div class="column3">
        <h3><?php echo $text_extra; ?></h3>
        <ul>
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
		  
		  <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>
      <div class="column2">
        <h3><?php echo $text_account; ?></h3>
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
		  <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>
      <?php if ($informations) { ?>
      <div class="column1">
        <h3><?php echo $text_information; ?></h3>
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
		  <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>    
      </div>
      <?php } ?>
	   <div class="column-aboutus">
       <h3>About Us</h3>
	   <!-- div class="image"><img src="image/data/about-us.jpg"></div -->
        <p>
          We are a group of four enthusiastic BITS Pilani students aiming to promote social entrepreneurship through our e-store.
        </p>
      </div>
      
    </div>
    <!-- End footer columns //-->
  </div>
  <!-- End footer //-->

  <!-- Begin footer mobile //-->
  <div id="footer-mobile">
    <div class="footer-menu-mobile">
      <h3><?php echo $text_extra; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
          <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
          <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li>
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li> 
        </ul>
      </div>    
      <h3><?php echo $text_account; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
        </ul>
      </div>    
      <h3><?php echo $text_service; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
        </ul>
      </div>    
      <h3><?php echo $text_information; ?></h3>
      <div class="footer-menu-mobile-nav">
        <ul>
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
        </ul>
      </div>
    </div>
  </div>
  <!-- End footer mobile //-->

  <div id="powered-area">
    <div id="powered">
      <div class="powered-alignleft">

        <!-- Begin payments icons //-->
        <img src="catalog/view/theme/shopycart/image/payments.png" title="payments" alt="payments">

        <!-- End payments icons //-->

      </div>
      <div class="powered-alignright"><?php echo " &copy; KalaHaat"; ?></div>
      <div style="clear:both"></div>
    </div>
 
  </div>
</div>

<!-- Begin tooltip jquery //-->
<script type="text/javascript" src="catalog/view/theme/shopycart/js/tooltip/jquery.qtip.js"></script>
<script type="text/javascript" src="catalog/view/theme/shopycart/js/tooltip/tooltip.js"></script>
<!-- End tooltip jquery //-->

<!-- Begin NivoSlider jquery //-->
<script type="text/JavaScript" src="catalog/view/theme/shopycart/js/jquery.nivo.slider.pack.js"></script>
<!-- End NivoSlider jquery //-->

<!-- Begin shopycart Slideshow (Flexslider) -->
<script type="text/javascript" src="catalog/view/theme/shopycart/js/flexslideshow/jquery.flexslider-min.js"></script>
<!-- End shopycart Slideshow (Flexslider) -->


</body></html>