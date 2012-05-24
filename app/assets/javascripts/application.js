//= require jquery
//= require jquery_ujs
$(function(){
  $('a[href^=https]').click(function(){
    $(this).attr('target', '_blank');
  });
})
