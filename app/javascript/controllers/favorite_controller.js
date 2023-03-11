import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorite"
export default class extends Controller {
  static targets = ["icon", "userplant"]

  connect() {
    console.log(typeof(this.element.dataset.userplant));
  }

  favorited() {
    let userplant = this.element.dataset.userplant
    userplant = Boolean(false)
    userplant = !userplant
    console.log(userplant);
    // if (userplant = true) {

    // }
  }
}
