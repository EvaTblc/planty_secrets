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
      this.nomFichierTarget.innerHTML = "<div><p>1 Planty trouvée</p></div>";
    } else {
      this.nomFichierTarget.innerText = "";
    }
  }
}
