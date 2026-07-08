// Navbar scroll
window.addEventListener('scroll',()=>{
  document.querySelector('.navbar').style.boxShadow=
    window.scrollY>10?'0 2px 20px rgba(0,0,0,.1)':'';
});

// Hero bar
window.addEventListener('load',()=>{
  setTimeout(()=>document.getElementById('heroBar').style.width='68%',500);
});

// Nav highlight
const secs=document.querySelectorAll('section[id],div[id="inicio"]');
window.addEventListener('scroll',()=>{
  let cur='';
  document.querySelectorAll('section[id]').forEach(s=>{
    if(window.scrollY>=s.offsetTop-90)cur=s.id;
  });
  document.querySelectorAll('.nav-links a').forEach(a=>{
    const match=a.getAttribute('href')==='#'+cur;
    a.style.color=match?'var(--blue)':'';
    a.style.background=match?'var(--blue-light)':'';
  });
});

// Plan toggle
let annual=false;
function togglePlan(){annual=!annual;updatePrices();}
function setPlan(t){annual=t==='annual';updatePrices();}
function updatePrices(){
  document.getElementById('planToggle').classList.toggle('on',annual);
  document.getElementById('lbl-monthly').classList.toggle('active',!annual);
  document.getElementById('lbl-annual').classList.toggle('active',annual);
  document.querySelectorAll('.pval').forEach(el=>{
    el.textContent=annual?el.dataset.a:el.dataset.m;
  });
}

// FAQ
function toggleFaq(el){
  const item=el.parentElement;
  const was=item.classList.contains('open');
  document.querySelectorAll('.faq-item').forEach(i=>i.classList.remove('open'));
  if(!was)item.classList.add('open');
}

// Modal
function openModal(tab){
  document.getElementById('modalOverlay').classList.add('open');
  switchTab(tab);
  document.body.style.overflow='hidden';
}
function closeModal(){
  document.getElementById('modalOverlay').classList.remove('open');
  document.body.style.overflow='';
}
function switchTab(tab){
  ['Login','Register'].forEach(t=>{
    document.getElementById('p'+t).classList.toggle('active',t.toLowerCase()===tab);
    document.getElementById('t'+t).classList.toggle('active',t.toLowerCase()===tab);
  });
}

// Toast
function toast(msg){
  const el=document.getElementById('toast');
  document.getElementById('toastMsg').textContent=msg;
  el.classList.add('show');
  setTimeout(()=>el.classList.remove('show'),3500);
}

// Validation
function validEmail(e){return /^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(e);}
function setF(inp,err,bad){
  document.getElementById(inp).classList.toggle('err',bad);
  document.getElementById(err).style.display=bad?'block':'none';
  return !bad;
}

// Login
function doLogin(){
  const e=document.getElementById('lEmail').value.trim();
  const p=document.getElementById('lPass').value;
  let ok=true;
  if(!validEmail(e)){setF('lEmail','eLEmail',true);ok=false;}else setF('lEmail','eLEmail',false);
  if(!p){setF('lPass','eLPass',true);ok=false;}else setF('lPass','eLPass',false);
  if(!ok)return;
  closeModal();
}

// Register
function doRegister(){
  const n=document.getElementById('rN').value.trim();
  const e=document.getElementById('rE').value.trim();
  const p=document.getElementById('rP').value;
  const p2=document.getElementById('rP2').value;
  let ok=true;
  if(!n){setF('rN','eRN',true);ok=false;}else setF('rN','eRN',false);
  if(!validEmail(e)){setF('rE','eRE',true);ok=false;}else setF('rE','eRE',false);
  if(p.length<8){setF('rP','eRP',true);ok=false;}else setF('rP','eRP',false);
  if(p!==p2){setF('rP2','eRP2',true);ok=false;}else setF('rP2','eRP2',false);
  if(!ok)return;
  if(!document.getElementById('rT').checked){return;}
  closeModal();
}

function socialLogin(p){closeModal();}

// Contact
function submitContact(){
  const n=document.getElementById('cN').value.trim();
  const e=document.getElementById('cE').value.trim();
  const m=document.getElementById('cM').value.trim();
  let ok=true;
  if(!n){setF('cN','eN',true);ok=false;}else setF('cN','eN',false);
  if(!validEmail(e)){setF('cE','eE',true);ok=false;}else setF('cE','eE',false);
  if(!m){setF('cM','eM',true);ok=false;}else setF('cM','eM',false);
  if(!ok)return;
  if(!document.getElementById('cT').checked){return;}
  document.getElementById('contactForm').style.display='none';
  document.getElementById('formOk').style.display='block';
}