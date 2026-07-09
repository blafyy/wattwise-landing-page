// ===== HERO =====

// Cuando termina de cargar la página, anima la barra de consumo del dashboard
window.addEventListener('load', () => {
  setTimeout(() => {
    document.getElementById('heroBar').style.width = '68%';
  }, 500);
});
