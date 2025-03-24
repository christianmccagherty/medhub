import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"

export default class extends Controller {
  connect() {
    const slotData = document.getElementById("available-slots-json")
    let availableSlots = []

    if (slotData) {
      availableSlots = JSON.parse(slotData.textContent)
    }

    flatpickr(this.element, {
      enable: availableSlots,
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true,
      minuteIncrement: 30
    })
  }
}
