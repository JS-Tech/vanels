$(document).on("turbolinks:load page:fetch", function() {

  $('#calendar').fullCalendar({
    dayClick: function(date) {
      $("#reservation_date").val(date.format());
    },
    events: "/reservations/calendar",
    height: 700
  });

});
