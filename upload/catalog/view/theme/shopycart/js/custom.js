/////////////////////
// Animated header
/////////////////////
/*
$(window).scroll(function(){
    if($(document).scrollTop() > 50)
    {
      $('#header').stop().animate({
          top:'-49px';
		  
      },300);
    }
    else
    {
      $('#header').stop().animate({
          top:'0px'
      },500);
    }
});
*/


/////////////////////
// Top bar dropdown
/////////////////////

$(function() {

		// Language dropdown
		$('#language-switcher').hover(function(){
			$('#language-options').slideDown(0);
		},function(){
			$('#language-options').slideUp(0);
		});
		
		// Currency dropdown
		$('#currency-switcher').hover(function(){
			$('#currency-options').slideDown(0);
		},function(){
			$('#currency-options').slideUp(0);
		});
		
		// Top bar links dropdown
		$('#top-links-switcher').hover(function(){
			$('#top-links-options').slideDown(0);
		},function(){
			$('#top-links-options').slideUp(0);
		});
				
});



////////////////////
// Thumbnail hover
////////////////////
/*
$(function() {
    
    // On mouse over
    $(".box-product .boxgrid").hover(function () {
     
    // Set opacity to 100% 
    $(".box-product-info", this).stop().animate({
    opacity: 1
    }, "medium");
    },
     
    // On mouse out
    function () {
     
    // Set opacity back to 0%
    $(".box-product-info", this).stop().animate({
    opacity: 0
    }, "medium");

    });

});
*/


///////////////////
// Menu mobile
///////////////////

$(function() {

	// Menu mobile
	$("#menu-mobile-link").on("click", function(){
		$("#menu-mobile-nav").toggle();
		$(this).toggleClass("active");
	});


	// Footer menu mobile
	$('.footer-menu-mobile div').hide();  

	$('.footer-menu-mobile h3').click(function() {
	$(this).next('div').slideToggle('fast')
	.siblings('div:visible').slideUp('fast');
	});

});



///////////////////
// Scroll to top
///////////////////

$(function() {

    $.fn.scrollToTop = function() {
	$(this).hide().removeAttr("href");
	if ($(window).scrollTop() != "0") {
	    $(this).fadeIn("slow")
	}
	var scrollDiv = $(this);
	$(window).scroll(function() {
	    if ($(window).scrollTop() == "0") {
		$(scrollDiv).fadeOut("slow")
	    } else {
		$(scrollDiv).fadeIn("slow")
	    }
	});
	$(this).click(function() {
	    $("html, body").animate({
		scrollTop: 0
	    }, "slow")
	})
    }

});

$(function() {
    $("#scroll-to-top").scrollToTop();
});

