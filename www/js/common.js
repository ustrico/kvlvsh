$(document).ready(function(){
  $('div.touchslider-item-inner').css('width', $(window).width());
  $('div.touchslider').touchSlider({ });
  
  $('div#footer-top').find('span').click(function(){
    $('html, body').stop().animate({ scrollTop: 0 }, 500);
  });
  $('address#footer-address').click(function(){
    location.href = $('address#footer-address').find('a:first').attr('href');
  });
});	