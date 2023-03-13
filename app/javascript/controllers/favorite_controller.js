import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["icon", "userplant"]

  connect() {
    console.log(this.element.dataset.userplant = Boolean());
  }

  favorited() {
    let userplant = this.element.dataset.userplant
    userplant = !userplant
    console.log(userplant);
  }
}
