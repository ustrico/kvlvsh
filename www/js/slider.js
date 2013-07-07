$slider = [
  ['img/mainslider-02.png', 'Вышивка на одежде', 'Научиться вышивке может любой человек и в любом возрасте.'],
  ['img/mainslider-01.png', 'Эксклюзивные открытки', 'с элементами ажурной вышивки <br>в паспарту стантартного размера <br>96&times;162 мм.']
];
$sliderCurrent = 0;
function slider(direction){
  $sliderCurrent++;
  if ($sliderCurrent >= $slider.length) $sliderCurrent = 0;
  $img = $('div#mainslider').find('img');
  w = $(window).width();
  $('<img />').load(function(){
    $('div#mainslider').css('width',w*0.9);
    $('strong.sliderH1').css({opacity:0});
    $('div.sliderText > p').css({opacity:0});
    $('span.selectDot').css({opacity:0});
    $img.animate({marginLeft:-w}, 5000).css({position:'absolute'});
    $img1 = $img.clone().attr('id','imgClone').attr('src', $slider[$sliderCurrent][0]).css('margin-left',w).css({position:'absolute'}).insertAfter($img);
    
    $img1.animate({marginLeft:0}, 5000, function() {
      $('img#imgClone').remove();
      $img.attr('src', $slider[$sliderCurrent][0]).css({marginLeft:0});
      $('strong.sliderH1').html($slider[$sliderCurrent][1]).css({opacity:1});
      $('div.sliderText > p').html($slider[$sliderCurrent][2]).css({opacity:1});
      $('span.selectDot').css({opacity:1});
	  });	  
  }).attr('src', $slider[$sliderCurrent][0]);  
}
$(document).ready(function(){
  slider('1');
  $('div.sliderRight').click(function(){
    slider('1');
  });  
});	


