
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
  dependencies: ["cdnjs.cloudflare.com/ajax/libs/leaflet/1.5.1/leaflet-src.js"]
}
