var map;

function initMap() {
  var vanels = { lat: 46.659078, lng: 7.101316 };
  var map = new google.maps.Map(document.getElementById('map'), {
    center: vanels,
    zoom: 18,
    mapTypeId: "satellite"
  });

  var infowindow = new google.maps.InfoWindow({
    content: "<h3>Vanel's CLub</h3><p>Caveaux - Jazz Club - Evénements<br>Route du Vanel 80, Corbières</p>"
  });

  var marker = new google.maps.Marker({
    position: vanels,
    title: "Vanel's Club",
    map: map
  });

  infowindow.open(map, marker);
}

$(document).on("turbolinks:load page:load", function() {

  if (window.location.pathname == "/details" || window.location.pathname == "/contact") {
    var script = document.createElement('script');
    script.src = "https://maps.googleapis.com/maps/api/js?key=AIzaSyD60duPZedG18yBTTXvBSwsPPFE0aLqVP8&callback=initMap";
    document.body.append(script);
  }

});
