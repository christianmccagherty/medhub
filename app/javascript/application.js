// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


document.addEventListener("DOMContentLoaded", () => {
  const toggle = document.getElementById("searchToggle");
  const label = document.querySelector("label[for='searchToggle']");

  // Function to update the label text based on toggle state
  if (toggle && label) {
    const updateLabel = () => {
      label.textContent = toggle.checked ? "Clinics" : "Doctors";
    };
    toggle.addEventListener("change", updateLabel);
    updateLabel();
  }
});
