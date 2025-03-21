// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


function initializeSearchToggle() {
  const doctorsBtn = document.getElementById("doctorsBtn");
  const clinicsBtn = document.getElementById("clinicsBtn");
  const searchTypeInput = document.getElementById("searchTypeInput");

  function setActive(button, type) {
    doctorsBtn.classList.remove("active");
    clinicsBtn.classList.remove("active");
    button.classList.add("active");
    searchTypeInput.value = type;
  }

  if (doctorsBtn && clinicsBtn && searchTypeInput) {
    doctorsBtn.addEventListener("click", () => setActive(doctorsBtn, "doctors"));
    clinicsBtn.addEventListener("click", () => setActive(clinicsBtn, "clinics"));

    if (!searchTypeInput.value || searchTypeInput.value === "doctors") {
      setActive(doctorsBtn, "doctors");
    } else {
      setActive(clinicsBtn, "clinics");
    }
  }
}

document.addEventListener("DOMContentLoaded", initializeSearchToggle);
window.addEventListener("pageshow", initializeSearchToggle);
