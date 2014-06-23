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

  $("#content-markdown").hide();
  $(".btn-write").click(function(){
    $("#post_content").show();
    $("#content-markdown").hide();
  });
  $(".btn-preview").click(function(){
    $("#post_content").hide();
    $("#content-markdown").empty();
    $("#content-markdown").append("loading...");
    $("#content-markdown").show();
    $.ajax({
      url: "/posts/transform_markdown.json",
      dataType: "json",
      data: {raw_markdown: $("#post_content").val()},
      type: 'PUT',
    })
    .done(function( data ) {
      $("#content-markdown").empty();
      $("#content-markdown").append(data['data']);
    });
  });

});

