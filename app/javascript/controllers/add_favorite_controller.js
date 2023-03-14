import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-favorite"
export default class extends Controller {
  static targets = ["list"]

  displayForm() {
    this.listTarget.classList.toggle("d-none")
  }
}
