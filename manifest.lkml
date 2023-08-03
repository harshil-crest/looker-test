
# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

visualization: {
  id: "world-map"
  label: "World Map"
  file: "visualization/world-map.js"
  dependencies: ["https://unpkg.com/leaflet@1.7.1/dist/leaflet.js",
        "https://cdnjs.cloudflare.com/ajax/libs/d3/4.13.0/d3.js",
    "https://unpkg.com/geolocator@latest/dist/geolocator.min.js",
    "https://cdn.jsdelivr.net/npm/geoip-lite@1.4.7/lib/geoip.min.js",
    "https://cdnjs.cloudflare.com/ajax/libs/d3/4.13.0/d3.js"
  ]
}
