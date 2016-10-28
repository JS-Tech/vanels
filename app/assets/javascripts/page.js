$(document).on("turbolinks:load", function() {

  $("body").on("click", ".forward, .backward, .new", function(e) {
    var url = $(e.target).data("url"),
        title = $(e.target).text();

    $('header a.current').removeClass("current");
    $('header a[data-url="' + url +  '"]').addClass("current");

    window.history.pushState(null, "Vanel's Club - " + title, url);
  })

});
