import { Controller } from "@hotwired/stimulus"
import mapboxgl from "mapbox-gl"

// Connects to data-controller="map-show"
export default class extends Controller {
  static targets = ["plant", "map", "location"]

  initialize() {
    this.token = ENV['MAPBOX_API_KEY']
  }

  displaynone() {
    this.mapTarget.classList.add("d-none");
    this.plantTarget.classList.remove("d-none");
  }

  displaymap(data) {
    this.plantTarget.classList.add("d-none");
    mapboxgl.accessToken = "pk.eyJ1IjoibWFlbGllIiwiYSI6ImNsZTZ6MHJheTAwZnUzbm56OGlyNTk3dnYifQ.jl1D4oyQNr3uiCdQHrT5fw";
    const map = new mapboxgl.Map({
      container: "map",
      style: "mapbox://styles/mapbox/streets-v9",
      center: [data.features[1].center[0], data.features[1].center[1]],
      zoom: 12,
    });
  }

  clickmap(event) {
    event.preventDefault();
    fetch(`https://api.mapbox.com/geocoding/v5/mapbox.places/${this.inputTarget.value}.json?access_token=${this.token}`)
      .then(response => response.json())
      .then((data) => {
        this.coordinatesTarget.innerText = `${data.features[1].center[1]}, ${data.features[1].center[0]}`;
        this.displayMap(data);
      });
  }

}
