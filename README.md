# WattWise · EnergyAlert — Landing Page

**Monitorea · Ahorra · Cuida el planeta**

Plataforma de monitoreo de consumo eléctrico que ayuda a hogares y pequeños negocios peruanos a reducir su gasto energético desde su smartphone.

![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=flat&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=flat&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=flat&logo=javascript&logoColor=black)
![GitHub Pages](https://img.shields.io/badge/GitHub%20Pages-222222?style=flat&logo=github&logoColor=white)

---

## Descripción

**EnergyAlert** es la aplicación móvil de **WattWise**, diseñada para que cualquier persona pueda monitorear su consumo eléctrico en tiempo real, recibir alertas antes de exceder su presupuesto y acceder a consejos personalizados de ahorro expresados en soles peruanos.

Esta landing page presenta el modelo de negocio de EnergyAlert a sus dos segmentos objetivo: hogares urbanos y dueños de pequeños negocios en Lima Metropolitana.

---

## Secciones de la Landing Page

- **Hero** — Propuesta de valor principal y llamada a la acción
- **Servicios** — Funcionalidades clave de EnergyAlert
- **Cómo funciona** — Proceso paso a paso de uso de la app
- **Nosotros** — Quiénes somos y nuestra misión
- **Precios** — Planes Free y Pro con comparativa de características
- **Testimonios** — Experiencias de usuarios reales
- **FAQ** — Preguntas frecuentes
- **Contacto** — Formulario de contacto y redes sociales

---

## Tecnologías Utilizadas

- **HTML5** — Estructura semántica con atributos ARIA para accesibilidad (a11y)
- **CSS3** — Variables de diseño, Flexbox, Grid y diseño responsivo Desktop/Mobile
- **JavaScript** — Navegación interna, validación de formularios y componentes interactivos
- **Bootstrap Icons 1.11.3** — Iconografía
- **Google Fonts (Inter)** — Tipografía principal

---

## Instalación y Uso

### Prerrequisitos

- [Node.js](https://nodejs.org/) versión 14 o superior

### Pasos

1. Clonar el repositorio

```bash
git clone https://github.com/blafyy/wattwise-landing-page.git
cd wattwise-landing-page
```

2. Instalar dependencias

```bash
npm install
```

3. Ejecutar en local

```bash
npm start
```

4. Abrir en el navegador

```
http://localhost:3000
```

También puedes abrir `public/index.html` directamente en el navegador sin servidor local.

---

## Despliegue en GitHub Pages

El sitio está desplegado desde la rama `main`:

**URL:** https://blafyy.github.io/wattwise-landing-page/

### Pasos para redesplegar

1. Hacer push a la rama `main`
2. Ir a **Settings → Pages**
3. Seleccionar **Source:** Deploy from a branch → `main` → `/(root)`
4. Guardar y esperar 1-3 minutos

---

## Estructura del Proyecto

```
wattwise-landing-page/
├── public/
│   ├── index.html
│   └── assets/
│       ├── images/
│       ├── icons/
│       ├── css/
│       └── js/
├── features/
│   ├── HU01.feature
│   ├── HU02.feature
│   └── ... (HU01 a HU50)
├── .gitignore
├── package.json
└── README.md
```

---

## Gestión de Ramas (GitFlow)

| Rama | Propósito |
|------|-----------|
| `main` | Versión estable desplegada en GitHub Pages |
| `develop` | Rama de integración continua |
| `feature/[nombre]` | Desarrollo de nuevas secciones o funcionalidades |
| `release/[version]` | Preparación de entregas (TB1, TB2, TF1) |
| `hotfix/[descripcion]` | Correcciones urgentes en producción |

**Convención de commits:** [Conventional Commits](https://www.conventionalcommits.org/)

```
feat(hero): add CTA button with scroll animation
fix(nav): correct mobile menu toggle behavior
style(precios): adjust card spacing for mobile
docs(readme): update deployment instructions
```

---

## Acceptance Tests

Los archivos de pruebas de aceptación en formato Gherkin se encuentran en la carpeta `/features`, organizados por Historia de Usuario (HU01 a HU50). Siguen la convención Given-When-Then con mínimo 3 escenarios por historia: flujo principal, flujo alternativo y condición de error.

---

## Equipo WattWise

Proyecto académico del curso **SI385 IHC y Tecnologías Móviles** — Universidad Peruana de Ciencias Aplicadas (UPC), Ciclo 2025-01.

| Integrante | Rol |
|-----------|-----|
| Luis Becerra Ninahuanca | Backend Developer |
| Samir | Frontend Developer |
| Leonardo | UX Designer |
| Julio | QA Engineer |
| Enmanuel | Team Leader |
| Andre | Full Stack Developer |

---

## Licencia

Este proyecto está bajo la Licencia MIT.

---

Desarrollado por el equipo WattWise · UPC 2025
