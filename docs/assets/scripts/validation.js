// ===== VALIDACIÓN DE FORMULARIOS =====
// Estas funciones las usan el login, el registro y el formulario de contacto

// Revisa si un correo tiene el formato correcto (algo@algo.algo)
function validarCorreo(correo) {
  return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(correo);
}

// Marca un campo como incorrecto (en rojo) o correcto, y muestra/oculta su mensaje de error
// Devuelve true si el campo está bien, false si está mal
function marcarCampo(idCampo, idError, tieneError) {
  document.getElementById(idCampo).classList.toggle('err', tieneError);
  document.getElementById(idError).style.display = tieneError ? 'block' : 'none';
  return !tieneError;
}
