// ===== FORMULARIO DE CONTACTO =====

function submitContact() {
  const nombre = document.getElementById('cN').value.trim();
  const correo = document.getElementById('cE').value.trim();
  const mensaje = document.getElementById('cM').value.trim();

  let todoBien = true;

  if (!nombre) {
    marcarCampo('cN', 'eN', true);
    todoBien = false;
  } else {
    marcarCampo('cN', 'eN', false);
  }

  if (!validarCorreo(correo)) {
    marcarCampo('cE', 'eE', true);
    todoBien = false;
  } else {
    marcarCampo('cE', 'eE', false);
  }

  if (!mensaje) {
    marcarCampo('cM', 'eM', true);
    todoBien = false;
  } else {
    marcarCampo('cM', 'eM', false);
  }

  if (!todoBien) return;

  // El usuario debe aceptar los términos antes de enviar
  if (!document.getElementById('cT').checked) return;

  // Oculta el formulario y muestra el mensaje de éxito
  document.getElementById('contactForm').style.display = 'none';
  document.getElementById('formOk').style.display = 'block';
}
