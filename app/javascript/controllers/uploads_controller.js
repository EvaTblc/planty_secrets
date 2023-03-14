import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uploads"
export default class extends Controller {
  static targets = ["input", "formcontrol", "nomFichier"]

  connect() {
  }

  update (event) {
    event.preventDefault();
    //   let formNew = document.getElementById('new_plant');
    //   let input = formNew.querySelector( '.form-control' );
    //   let label	 = input.querySelector( '.form-label' );
    let labelVal = this.inputTarget.value;
    //   input.addEventListener( 'change', (e) => {
      //     console.log("Upload");

      //     if ( this.files && this.files.length > 1 ) {
        //       fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
        //     } else {
          //       fileName = e.target.value;
          //     }

    if ( this.inputTarget.value ) {
        console.log(this.inputTarget.value)
      this.nomFichierTarget.innerText = labelVal;
    } else {
      this.nomFichierTarget.innerText = "";
    }
    // fetch(labelVal)
    // .then(response => response.json())
    // .then(data => this.inputTarget.value(data))
  //   });
  }
}
