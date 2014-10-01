$(document).ready(function() {
    var each_post = $(".content");
    $(each_post).hide("slow");
    $(".blog-title").click(function() {
      $(this).next(each_post).slideToggle("slow");
  });
});
