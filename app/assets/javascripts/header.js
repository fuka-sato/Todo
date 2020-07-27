$(document).ready(function(){

  $('.header__in__right__category').hover(function(){
    $(this).addClass('active');
    var children = $('.active').children('.header__in__right__category__list');
    children.show();
  },function(){
    $(this).removeClass('active');
    $(this).children('.header__in__right__category__list').hide();
  });
});