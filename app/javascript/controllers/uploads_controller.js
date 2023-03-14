import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uploads"
export default class extends Controller {
  static targets = ["input", "formcontrol", "nomFichier"]

  connect() {
  }

  update (event) {
    event.preventDefault();
    let labelVal = this.inputTarget.value;
    
    if ( this.inputTarget.value ) {
        console.log(this.inputTarget.value)
      this.nomFichierTarget.innerText = labelVal;
    } else {
      this.nomFichierTarget.innerText = "";
    }
  }
}
