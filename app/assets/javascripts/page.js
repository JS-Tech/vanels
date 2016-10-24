$(document).on("turbolinks:load", function() {

  $("body").on("click", ".forward, .backward, .new", function(e) {
    var url = $(e.target).data("url"),
        title = $(e.target).text();
    window.history.pushState(null, "Vanel's Club - " + title, url);
  })

});
