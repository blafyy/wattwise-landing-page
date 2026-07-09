// ===== MODAL DE LOGIN / REGISTRO =====

// Abre el modal en la pestaña indicada ("login" o "register")
function openModal(pestañaInicial) {
  document.getElementById('modalOverlay').classList.add('open');
  switchTab(pestañaInicial);
  document.body.style.overflow = 'hidden'; // evita que la página se mueva detrás del modal
}

// Cierra el modal
function closeModal() {
  document.getElementById('modalOverlay').classList.remove('open');
  document.body.style.overflow = '';
}

// Permite cerrar el modal presionando la tecla Escape
document.addEventListener('keydown', (evento) => {
  const modalEstaAbierto = document.getElementById('modalOverlay').classList.contains('open');
  if (evento.key === 'Escape' && modalEstaAbierto) {
    closeModal();
  }
});

// Cambia entre la pestaña "Iniciar sesión" y "Registrarse"
function switchTab(pestaña) {
  ['Login', 'Register'].forEach(nombre => {
    const esLaActiva = nombre.toLowerCase() === pestaña;
    document.getElementById('p' + nombre).classList.toggle('active', esLaActiva);
    document.getElementById('t' + nombre).classList.toggle('active', esLaActiva);
    document.getElementById('t' + nombre).setAttribute('aria-selected', esLaActiva);
  });
}
