(function($) {
  $('.reply').click(function(event){
    event.preventDefault();
    var username = $(this).parent().prev().text();
    $("#raw-content").focus();
    $("#raw-content").val("@"+username+"\n");
  });
})(jQuery);