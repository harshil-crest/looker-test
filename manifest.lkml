
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
    "https://unpkg.com/geolocator@latest/dist/geolocator.min.js"
  ]
}
