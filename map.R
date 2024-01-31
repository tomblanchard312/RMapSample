library(leaflet)
library(jsonlite)
library(htmlwidgets)

# Read locations from the JSON file
locations <- fromJSON("example.json")

# Create a leaflet map
mymap <- leaflet() %>%
  addTiles() %>%
  addMarkers(
    lng = locations$longitude,
    lat = locations$latitude,
    popup = paste(locations$name, "<br>Lat:", locations$latitude, "<br>Lon:", locations$longitude)
  )

# Save the map as an HTML file
saveWidget(mymap, "output_map.html", selfcontained = TRUE)
