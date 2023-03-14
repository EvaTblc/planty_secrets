import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-list"
export default class extends Controller {
  static targets = ["form"]

  displayForm() {
    this.formTarget.classList.toggle("d-none")
  }

}
