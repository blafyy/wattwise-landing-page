// ===== NAVBAR =====

// Le agrega una sombra a la barra de navegación cuando el usuario baja en la página
window.addEventListener('scroll', () => {
  const navbar = document.querySelector('.navbar');
  navbar.style.boxShadow = window.scrollY > 10 ? '0 2px 20px rgba(0,0,0,.1)' : '';
});

// Resalta en el menú el link de la sección que se está viendo en ese momento
window.addEventListener('scroll', () => {
  let seccionActual = '';

  document.querySelectorAll('section[id]').forEach(seccion => {
    if (window.scrollY >= seccion.offsetTop - 90) {
      seccionActual = seccion.id;
    }
  });

  document.querySelectorAll('.nav-links a').forEach(link => {
    const esElActivo = link.getAttribute('href') === '#' + seccionActual;
    link.style.color = esElActivo ? 'var(--blue)' : '';
    link.style.background = esElActivo ? 'var(--blue-light)' : '';
  });
});

// ===== MENÚ HAMBURGUESA (celular) =====

// Muestra u oculta el menú al tocar el botón de hamburguesa
function toggleMenu(boton) {
  const menu = document.getElementById('navLinks');
  const seAbrio = menu.classList.toggle('open');
  boton.setAttribute('aria-expanded', seAbrio);
}

// Cierra el menú automáticamente cuando el usuario toca un link (mejor experiencia en celular)
document.addEventListener('DOMContentLoaded', () => {
  document.querySelectorAll('#navLinks a').forEach(link => {
    link.addEventListener('click', () => {
      document.getElementById('navLinks').classList.remove('open');
      document.querySelector('.hamburger').setAttribute('aria-expanded', 'false');
    });
  });
});
