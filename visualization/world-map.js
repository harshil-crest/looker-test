looker.plugins.visualizations.add({
  create: function (element, config) {
    element.innerHTML = `<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
  <style>
      #map {
          height: 400px;
      }
  </style>`;
    var divmap = document.createElement('div');
    divmap.id = 'map';
    element.appendChild(divmap);
  },
  updateAsync: function (
    data,
    element,
    config,
    queryResponse,
    details,
    doneRendering
  ) {
    const defaultIp = '8.8.8.8';
    var chart = element.querySelector('#map');
    // console.log("chart Object:", chart)
    // Call the main function with the default IP address
    showLocationOnMap(defaultIp);
    element.appendChild(chart);
    doneRendering();
  }
});
async function getLocationData(ip) {
  // const userAgentHeader = "keycdn-tools:https://www.example.com";
  const response = await fetch(`https://ipapi.co/8.8.8.8/json/`);
  console.log(response);
  const data = await response.json();
  return {
    city: data.city,
    country: data.country,
    lat: data.lat,
    lon: data.lon
  };
}
// Function to initialize the map and show the marker
function initMap(lat, lng) {
  // const map = L.map('map').setView([lat, lng], 6);
  // L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
  //     attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  // }).addTo(map);
  // L.marker([lat, lng]).addTo(map);

  var map = L.map('map', {
    center: [51.505, -0.09],
    zoom: 11,
    maxZoom: 20
  });

  var markers = L.markerClusterGroup();

  var myMarkers = [
    {
      lat: 51.505,
      lng: -0.09,
      title: 'London'
    },
    {
      lat: 48.856,
      lng: 2.351,
      title: 'Paris'
    },
    {
      lat: 40.712,
      lng: -74.006,
      title: 'New York'
    }
  ];

  // for (var i = 0; i < myMarkers.length; i++) {
  //   markers.addLayer(myMarkers[i]);
  // }
  // markers.addMarkers(myMarkers);

  for (var i = 0; i < myMarkers.length; i++) {
    var marker = L.marker([myMarkers[i].lat, myMarkers[i].lng]);
    marker.bindPopup(myMarkers[i].title);
    markers.addLayer(marker);
  }
  map.addLayer(markers);
}

// Main function to get location data and initialize the map
async function showLocationOnMap(ip) {
  try {
    ip = '103.108.207.58';
    const apiUrl = `https://ipapi.co/${ip}/json/`;
    const requestOptions = {
      method: 'GET'
    };
    const response = await fetch(apiUrl, requestOptions);
    let data;
    if (response.ok) {
      data = await response.json();
      console.log(data);
      console.log(data.latitude, data.longitude);
    } else {
      console.log(response.status);
      console.log(response.statusText);
    }

    initMap(data.latitude, data.longitude);
  } catch (error) {
    console.log('Error fetching location data:', error);
  }
}
