import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-view"
export default class extends Controller {
  static targets = ["map"]
  static values = {
    key: String,
    markers: Array
  }
  connect() {
    console.log(this.mapTarget);
    mapboxgl.accessToken = this.keyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/outdoors-v12"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      const customMarker = document.createElement("div")
        customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
      .setLngLat([marker.lng, marker.lat])
      .setPopup(popup)
      .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 100, maxZoom: 15, duration: 0 })
  }
}
