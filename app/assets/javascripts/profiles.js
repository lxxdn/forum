function readURL() {
  var input = this;
  if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $("#user-image").attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
  }
};
$(document).ready(function(){
  $("#profile_image").change(readURL);
});



