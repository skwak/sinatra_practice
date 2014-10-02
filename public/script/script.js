$(document).ready(function() {
  var each_post = $(".content");
  if (!$('#home').length) return;
    $(each_post).hide("slow");
    $(".hide").css("display", "none");
    $(".blog-title").click(function() {
      $(this).next(each_post).slideToggle("slow");



  // } else {

// if (!$('#home').length) return;
    // $(each_post).show();
      // $(".hide").css("display", "block");
// }
});
});
