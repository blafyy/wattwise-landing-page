// ===== PLANES (mensual / anual) =====

// Guarda si el plan mostrado es anual o mensual
let esAnual = false;

// Se ejecuta cuando el usuario hace clic en el switch
function togglePlan() {
  esAnual = !esAnual;
  actualizarPrecios();
}

// Se ejecuta cuando el usuario hace clic directo en la palabra "Mensual" o "Anual"
function setPlan(tipo) {
  esAnual = tipo === 'annual';
  actualizarPrecios();
}

// Actualiza los precios y estilos según el plan elegido
function actualizarPrecios() {
  document.getElementById('planToggle').classList.toggle('on', esAnual);
  document.getElementById('planToggle').setAttribute('aria-checked', esAnual);

  document.getElementById('lbl-monthly').classList.toggle('active', !esAnual);
  document.getElementById('lbl-annual').classList.toggle('active', esAnual);

  // Cambia el número de precio visible en cada tarjeta de plan
  document.querySelectorAll('.pval').forEach(precio => {
    precio.textContent = esAnual ? precio.dataset.a : precio.dataset.m;
  });
}
