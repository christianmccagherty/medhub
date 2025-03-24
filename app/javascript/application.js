// Existing imports
import "@hotwired/turbo-rails"
import "controllers"
import "@popperjs/core"
import "bootstrap"

// Search toggle logic
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

    if (searchTypeInput.value === "clinics") {
      setActive(clinicsBtn, "clinics");
    } else {
      setActive(doctorsBtn, "doctors");
    }
  }
});

// New navbar active state logic
document.addEventListener("turbo:load", () => {
  const navLinks = document.querySelectorAll('.nav-link');
  const currentPath = window.location.pathname;

  navLinks.forEach(link => {
    const linkPath = link.getAttribute('href');
    if (linkPath === currentPath) {
      link.classList.add('active');
    } else {
      link.classList.remove('active');
    }
  });
});
