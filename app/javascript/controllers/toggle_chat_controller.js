import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-chat"
export default class extends Controller {
  static targets = ["chatbot", "button", "container"]
  connect() {
    console.log("ta a dari")
  }

  fire() {
    console.log("ta a dariiiii")
    this.chatbotTarget.classList.toggle("d-none")
    this.containerTarget.classList.toggle("collapsable-container")
    this.containerTarget.classList.toggle("collapsable-container-open")
  }
}
