// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"


document.addEventListener("turbo:load", () => {
  const doctorsBtn = document.getElementById("doctorsBtn");
  const clinicsBtn = document.getElementById("clinicsBtn");
  const searchTypeInput = document.getElementById("searchTypeInput");

  function setActive(button, type) {
    if (!doctorsBtn || !clinicsBtn || !searchTypeInput) return;
    doctorsBtn.classList.remove("active");
    clinicsBtn.classList.remove("active");
    button.classList.add("active");
    searchTypeInput.value = type;
  }

  if (doctorsBtn && clinicsBtn && searchTypeInput) {
    doctorsBtn.addEventListener("click", () => setActive(doctorsBtn, "doctors"));
    clinicsBtn.addEventListener("click", () => setActive(clinicsBtn, "clinics"));

    // On page load or turbo restore, highlight the correct button:
    if (searchTypeInput.value === "clinics") {
      setActive(clinicsBtn, "clinics");
    } else {
      setActive(doctorsBtn, "doctors");
    }
  }
});
