function confirmDelete() {
  const deleteLinks = document.querySelectorAll('[data-confirm]');

  deleteLinks.forEach((link) => {
    link.addEventListener('click', (event) => {
      const confirmation = link.getAttribute('data-confirm');
      if (confirmation && !window.confirm(confirmation)) {
        event.preventDefault();
      }
    });
  });
}

document.addEventListener('DOMContentLoaded', confirmDelete);