import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="loaders"
export default class extends Controller {
  static targets = ["loader", "search", "image"]
  connect() {
  }

  loading() {
    this.imageTarget.classList.add("d-none")
    this.loaderTarget.classList.remove("d-none") ;
  }
}
