import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-show-form-button"
export default class extends Controller {
  static targets = ["form"]

  connect() {
  }

  toggle(event) {
    console.log(event);
    this.formTarget.classList.toggle("d-none");
  }

}
