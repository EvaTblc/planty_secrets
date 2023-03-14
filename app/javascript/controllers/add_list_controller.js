import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-list"
export default class extends Controller {
  static targets = ["form", "infos"]
  connect() {
    console.log("hello from add list");
  }

  displayForm() {
    this.infosTarget.classList.add("d-none")
    this.formTarget.classList.remove("d-none")
  }

}
