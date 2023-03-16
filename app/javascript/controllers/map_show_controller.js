import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

// Connects to data-controller="map-show"
export default class extends Controller {
  static targets = ["map", "plant", "name"]
  static values = {
    key: String,
    markers: Array
  }

  connect() {
  }

  loadMap() {
    console.log(this.keyValue);
    mapboxgl.accessToken = this.keyValue

    this.map = new mapboxgl.Map({
      container: this.mapTarget,
      style: "mapbox://styles/mapbox/outdoors-v12"
    })
    this.#addMarkersToMap()
    this.#fitMapToMarkers()
  }

  display() {
    this.nameTarget.classList.add("d-none");
    this.loadMap();
  }

  displaynone () {
    this.map.remove()
    this.nameTarget.classList.remove("d-none");
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      customMarker.classList.add("pb-5")
      
      new mapboxgl.Marker(customMarker)
      .setLngLat([ marker.lng, marker.lat ])
      .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
