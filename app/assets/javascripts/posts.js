(function($) {
  $(document).ready(function(){
    $('.btn-write').addClass("active");

    $('.btn-write').click(function(){
      $(this).addClass("active");
        $('.btn-preview').removeClass("active");
    });

    $('.btn-preview').click(function(){
        $(this).addClass("active");
        $('.btn-write').removeClass("active");
      });
    });
})(jQuery);