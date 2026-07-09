// ===== LOGIN =====

function doLogin() {
  const correo = document.getElementById('lEmail').value.trim();
  const clave = document.getElementById('lPass').value;

  let todoBien = true;

  if (!validarCorreo(correo)) {
    marcarCampo('lEmail', 'eLEmail', true);
    todoBien = false;
  } else {
    marcarCampo('lEmail', 'eLEmail', false);
  }

  if (!clave) {
    marcarCampo('lPass', 'eLPass', true);
    todoBien = false;
  } else {
    marcarCampo('lPass', 'eLPass', false);
  }

  if (!todoBien) return;

  // Login exitoso (demo): redirige al prototipo de Figma
  window.location.href = "https://www.figma.com/design/xMdQYxEiNCWCcpWDtmtbx1/Untitled?node-id=0-1&p=f&t=x6ilCQ9g9J3Cu8lS-0";
}

function doRegister() {
  const nombre = document.getElementById('rN').value.trim();
  const correo = document.getElementById('rE').value.trim();
  const clave = document.getElementById('rP').value;
  const confirmarClave = document.getElementById('rP2').value;

  let todoBien = true;

  if (!nombre) {
    marcarCampo('rN', 'eRN', true);
    todoBien = false;
  } else {
    marcarCampo('rN', 'eRN', false);
  }

  if (!validarCorreo(correo)) {
    marcarCampo('rE', 'eRE', true);
    todoBien = false;
  } else {
    marcarCampo('rE', 'eRE', false);
  }

  if (clave.length < 8) {
    marcarCampo('rP', 'eRP', true);
    todoBien = false;
  } else {
    marcarCampo('rP', 'eRP', false);
  }

  if (clave !== confirmarClave) {
    marcarCampo('rP2', 'eRP2', true);
    todoBien = false;
  } else {
    marcarCampo('rP2', 'eRP2', false);
  }

  if (!todoBien) return;

  // El usuario debe aceptar los términos antes de continuar
  if (!document.getElementById('rT').checked) return;

  closeModal();
}

// ===== LOGIN / REGISTRO CON GOOGLE O FACEBOOK =====
// (Demo: simula el acceso exitoso y redirige al mismo prototipo de Figma)
function socialLogin(proveedor) {
  window.location.href = "https://www.figma.com/design/xMdQYxEiNCWCcpWDtmtbx1/Untitled?node-id=0-1&p=f&t=x6ilCQ9g9J3Cu8lS-0";
}
