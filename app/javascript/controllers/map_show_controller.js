import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map-show"
export default class extends Controller {
  static targets = ["plant", "map"]

  connect() {
    console.log(this.mapTarget);
  }
  display() {
    console.log("Hello");
    this.mapTarget.classList.remove("d-none");
    this.plantTarget.classList.add("d-none");
  }

  displaynone() {
    this.mapTarget.classList.add("d-none");
    this.plantTarget.classList.remove("d-none");
  }
}
