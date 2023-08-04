
looker.plugins.visualizations.add({
  create: function (element, config) {
    element.innerHTML = `<link rel="stylesheet" href="https://unpkg.com/leaflet@1.7.1/dist/leaflet.css" />
  <style>
      #map {
          height: 400px;
      }
  </style>`
      var divmap = document.createElement('div');
      divmap.id = 'map';
      element.appendChild(divmap);
  },
  updateAsync: function (data, element, config, queryResponse, details, doneRendering) {
      const defaultIp = '8.8.8.8';
var chart = element.querySelector('#map');
    // console.log("chart Object:", chart)
      // Call the main function with the default IP address
      showLocationOnMap(defaultIp);
      element.appendChild(chart);
      doneRendering()
  }
});
async function getLocationData(ip) {
  // const userAgentHeader = "keycdn-tools:https://www.example.com";
  const response = await fetch(`https://ipapi.co/8.8.8.8/json/`);
console.log(response)
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
  const map = L.map('map').setView([lat, lng], 6);
  L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
      attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
  }).addTo(map);
  L.marker([lat, lng]).addTo(map);
}

// Main function to get location data and initialize the map
async function showLocationOnMap(ip) {
  try {
      // const locationData = await getLocationData(ip);
      // const lat = parseFloat(locationData.lat);
      // const lng = parseFloat(locationData.lon);
      // initMap(lat, lng);
      // const geolocator = window.Geolocator
    // const geolocator = require('geolocator');
  //   console.log(geolocator)
  //   await geolocator.geolocate(ip, (err, data) => {
  // if (err) {
  //   console.log(err);
  // } else {
  //   console.log(data.latitude, data.longitude);
  // }
    // console.log(geolocator)
    var ip = "103.108.207.58";
var geo = lookup(ip);
    console.log("geo here")
    console.log(geo);
    initMap(50,50);
  } catch (error) {
      console.log('Error fetching location data:', error);
  }
}
