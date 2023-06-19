function confirmDelete(event) {
  const confirmation = event.target.getAttribute('data-confirm');
  if (confirmation && !window.confirm(confirmation)) {
    event.preventDefault();
  }
}

document.addEventListener('click', confirmDelete);