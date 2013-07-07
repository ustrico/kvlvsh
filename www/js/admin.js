$(document).ready(function(){
  $('.chunk').mouseenter(function(){
    $(this).addClass('chunkHover');
  }).mouseleave(function(){
    $(this).removeClass('chunkHover');
  }).click(function(){
    if (!$(this).hasClass('chunkActive')){
      $(this).removeClass('chunkHover').addClass('chunkActive');
      $(this).html('<form action="/maincontroller/updatechunk" method="post"><input type="hidden" name="chunk-name" value="' + $(this).attr('chunkid') + '"><textarea name="chunk-body">' + $(this).html() + '</textarea><input type="submit"></form>');
    }
  });;
});