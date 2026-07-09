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
  window.location.href = "https://www.figma.com/proto/4crxyRC6vGCuCHgh7VKzxj/WATT-WISE-IHC?node-id=169-287&p=f&t=G7AxvX74qy3XBZAe-0&scaling=min-zoom&content-scaling=fixed&page-id=0%3A1&starting-point-node-id=169%3A287&show-proto-sidebar=1";
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
// (Por ahora solo cierra el modal, ya que es una demo sin conexión real a esos servicios)
function socialLogin(proveedor) {
  closeModal();
}
