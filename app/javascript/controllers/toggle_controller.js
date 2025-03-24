import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["toggleableElement"]
  connect() {
    console.log("ta a dari")
  }

  fire() {
    this.toggleableElementTarget.classList.toggle("d-none")
  }
}
