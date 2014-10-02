

$(document).ready(function() {
  var each_post = $(".content");
  // if (!$('div#home').length) return;
    $(each_post).hide("slow");
    $(".blog-title").click(function(event) {
      event.preventDefault();
      $(this).next(each_post).slideToggle("slow");


  // } else {
  //     $(".hide").css("display", "block");
  //   $(each_post).show();
  // }


});
});
// $('.thumb').addClass('new');
// callmeman();
//
//  $('#Button').click(function () {
//      $('.thumb').removeClass('new');
//      callmeman();
//  });
//
//  function callmeman(){
//      if ($('.thumb').hasClass('new')) {
//          $('.info-top').hide();
//       } else {
//          $('.info-top').show();
//      }
//  }
