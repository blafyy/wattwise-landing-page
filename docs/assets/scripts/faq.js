// ===== PREGUNTAS FRECUENTES (acordeón) =====

// Abre la pregunta en la que se hizo clic, y cierra las demás
function toggleFaq(pregunta) {
  const item = pregunta.parentElement;
  const yaEstabaAbierta = item.classList.contains('open');

  // Primero cierra todas las preguntas
  document.querySelectorAll('.faq-item').forEach(otraPregunta => {
    otraPregunta.classList.remove('open');
    otraPregunta.querySelector('.faq-q').setAttribute('aria-expanded', 'false');
  });

  // Si la pregunta que tocamos estaba cerrada, la abrimos
  if (!yaEstabaAbierta) {
    item.classList.add('open');
    pregunta.setAttribute('aria-expanded', 'true');
  }
}
