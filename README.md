#  WattWise · EnergyAlert — Landing Page

<div align="center">

**Monitorea · Ahorra · Cuida el planeta**

Una plataforma de monitoreo de consumo eléctrico que ayuda a hogares y pequeños negocios peruanos a reducir su gasto energético desde su smartphone.



</div>

---

##  Descripción

**EnergyAlert** es la aplicación móvil de **WattWise**, diseñada para que cualquier persona pueda monitorear su consumo eléctrico en tiempo real, recibir alertas antes de exceder su presupuesto y acceder a consejos personalizados de ahorro expresados en soles peruanos.

Esta landing page presenta el modelo de negocio de EnergyAlert a sus dos segmentos objetivo: hogares urbanos y dueños de pequeños negocios en Lima Metropolitana.

###  Propósito

Democratizar el acceso al monitoreo energético en Latinoamérica, haciendo que cualquier persona pueda ahorrar luz y dinero desde su smartphone.

---

##  Secciones de la Landing Page

- ** Hero** — Propuesta de valor principal y llamada a la acción
- ** Servicios** — Funcionalidades clave de EnergyAlert
- ** Cómo funciona** — Proceso paso a paso de uso de la app
- ** Nosotros** — Quiénes somos y nuestra misión
- ** Precios** — Planes Free y Pro con comparativa de características
- ** Testimonios** — Experiencias de usuarios reales
- ** FAQ** — Preguntas frecuentes
- ** Contacto** — Formulario de contacto y redes sociales

---

##  Tecnologías Utilizadas

- **HTML5** — Estructura semántica con atributos ARIA para accesibilidad (a11y)
- **CSS3** — Variables de diseño, Flexbox, diseño responsivo Desktop/Mobile
- **JavaScript** — Navegación interna por anclas y componentes interactivos
- **Bootstrap Icons 1.11.3** — Iconografía
- **Google Fonts (Inter)** — Tipografía principal

---

##  Instalación y Uso

### Prerrequisitos

- [Node.js](https://nodejs.org/) (versión 14 o superior)
- [pnpm](https://pnpm.io/) o npm

### Pasos de instalación

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/blafyy/wattwise-landing-page.git
   cd wattwise-landing-page
   ```

2. **Instalar dependencias**
   ```bash
   npm install
   ```

3. **Ejecutar en local**
   ```bash
   npm start
   ```

4. **Abrir en el navegador**
   ```
   http://localhost:3000
   ```

### Abrir directamente

También puedes abrir `public/index.html` directamente en tu navegador sin necesidad de servidor local.

---

##  Despliegue en GitHub Pages

El sitio está desplegado automáticamente en GitHub Pages desde la rama `main`:

 **URL del sitio:** `https://blafyy.github.io/wattwise-landing-page/public/index.html`

### Pasos para redesplegar

1. Hacer push a la rama `main`
2. Ir a **Settings → Pages**
3. Seleccionar **Source:** `Deploy from a branch` → `main` → `/public`
4. Guardar y esperar 1-3 minutos

---

##  Estructura del Proyecto

```
wattwise-landing-page/
├── public/
│   ├── index.html          # Landing Page principal
│   └── assets/
│       ├── images/         # Imágenes y recursos gráficos
│       ├── icons/          # Íconos personalizados
│       ├── css/            # Hojas de estilo externas (si aplica)
│       └── js/             # Scripts JavaScript externos (si aplica)
├── features/               # Acceptance Tests en Gherkin (.feature)
│   ├── HU09.feature
│   ├── HU10.feature
│   └── ...
├── .gitignore
├── package.json
└── README.md
```

---

##  Gestión de Ramas (GitFlow)

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

##  Equipo WattWise

Desarrollado como proyecto académico del curso **SI385 IHC y Tecnologías Móviles** — Universidad Peruana de Ciencias Aplicadas (UPC), Ciclo 2025-01.

| Integrante | Rol |
|-----------|-----|
| [Nombre Apellido] | Team Leader |
| [Nombre Apellido] | UX Designer |
| [Nombre Apellido] | Frontend Developer |
| [Nombre Apellido] | Frontend Developer |
| [Nombre Apellido] | QA / Tester |

---

##  Licencia

Este proyecto está bajo la Licencia MIT.

---

<div align="center">


⭐ Si te gusta este proyecto, ¡dale una estrella!

</div>
