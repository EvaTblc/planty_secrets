import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="uploads"
export default class extends Controller {
  static targets = ["input", "formcontrol"]

  connect() {
  }

  update (event) {
    event.preventDefault();
    console.log(this.inputTarget.value)
  //   let formNew = document.getElementById('new_plant');
  //   let input = formNew.querySelector( '.form-control' );
  //   let label	 = input.querySelector( '.form-label' );
  let labelVal = this.inputTarget.value;

  //   input.addEventListener( 'change', (e) => {
    //     console.log("Upload");
    let fileName = '';

  //     if ( this.files && this.files.length > 1 ) {
  //       fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
  //     } else {
  //       fileName = e.target.value;
  //     }

    if ( this.inputTarget.files ) {
      labelVal;
    } else {
      labelVal  = fileName;
    }
  //   });
  }
}
