# Capítulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

En esta sección se describen las decisiones, convenciones y herramientas utilizadas por el equipo IngesCompanyCC para gestionar el ciclo de vida, la implementación, la validación y el despliegue de **DoofPlus**. Estas decisiones permiten mantener la consistencia y la trazabilidad de los cambios realizados en cada sprint sobre el Website, la Frontend Web Application y los RESTful Web Services.

### 5.1.1. Software Development Environment Configuration

A continuación se detallan los productos de software que los miembros del equipo utilizan para colaborar en el ciclo de vida de DoofPlus, indicando su propósito y su ruta de referencia (productos SaaS) o de descarga (productos que se ejecutan en el computador de cada integrante).

* **Project Management**
    * **Jira Software:** Gestión del Product Backlog, planificación de sprints y seguimiento de tareas en el board del proyecto. (Referencia: https://www.atlassian.com/software/jira)
    * **Discord:** Canal de comunicación del equipo para las reuniones de Sprint Planning, Sprint Review y coordinación diaria. (Referencia: https://discord.com)
* **Requirements Management**
    * **Jira Software:** Registro de User Stories y Technical Stories con sus Story Points y criterios de aceptación. (Referencia: https://www.atlassian.com/software/jira)
    * **Gherkin:** Redacción de criterios de aceptación con la estructura Given-When-Then. (Referencia: https://cucumber.io/docs/gherkin/reference)
    * **Miro:** Elaboración del Big Picture EventStorming y del Design-Level EventStorming. (Referencia: https://miro.com)
* **Product UX/UI Design**
    * **Figma:** Elaboración de Wireframes, Mock-ups y Prototypes del Website y la Web Application. (Referencia: https://www.figma.com)
    * **FigJam:** Elaboración de los Wireflows y User Flows de la Web Application. (Referencia: https://www.figma.com/figjam)
    * **UXPressia:** Elaboración de User Personas, Empathy Maps, Journey Maps e Impact Maps. (Referencia: https://uxpressia.com)
    * **Structurizr DSL:** Elaboración de los diagramas C4 de contexto, contenedores y componentes bajo el enfoque Diagram-as-Code. (Referencia: https://structurizr.com)
    * **Mermaid:** Elaboración de los diagramas de clases y de base de datos bajo el enfoque Diagram-as-Code. (Referencia: https://mermaid.js.org)
* **Software Development**
    * **Git:** Sistema de control de versiones distribuido utilizado en todos los repositorios. (Descarga: https://git-scm.com/downloads)
    * **GitHub:** Plataforma de alojamiento de los repositorios de la organización y de colaboración mediante ramas y Pull Requests. (Referencia: https://github.com/IngesCompanyCC)
    * **Visual Studio Code y WebStorm:** Editores para el desarrollo del Website (HTML5, CSS3 y JavaScript) y de la Frontend Web Application en Vue 3. (Descarga: https://code.visualstudio.com/download y https://www.jetbrains.com/webstorm/download)
    * **JetBrains Rider:** IDE para el desarrollo de los RESTful Web Services en C# con ASP.NET Core. (Descarga: https://www.jetbrains.com/rider/download)
    * **Node.js y npm:** Entorno de ejecución y gestor de paquetes requeridos por Vite y json-server. (Descarga: https://nodejs.org/en/download)
    * **Vite y Vue 3:** Herramienta de build y framework de JavaScript (Composition API) para la Frontend Web Application, con **PrimeVue** y **PrimeFlex** para los componentes de interfaz, **Pinia** para el estado, **Vue Router** para la navegación y **Vue I18n** para la internacionalización. (Referencia: https://vuejs.org)
    * **ASP.NET Core y Entity Framework Core:** Framework de C# y ORM para el desarrollo de los RESTful Web Services. (Referencia: https://dotnet.microsoft.com/apps/aspnet)
    * **MySQL:** Sistema gestor de base de datos relacional (MySQL 8). (Descarga: https://dev.mysql.com/downloads)
* **Software Testing**
    * **Chrome DevTools:** Inspección del diseño responsive y depuración del Website y la Web Application. (Referencia: https://developer.chrome.com/docs/devtools)
    * **json-server:** Fake API para simular los endpoints REST desde la Web Application mientras se implementan los Web Services. (Referencia: https://github.com/typicode/json-server)
    * **Scalar:** Ejecución de pruebas sobre los endpoints documentados de los RESTful Web Services. (Referencia: https://scalar.com)
* **Software Documentation**
    * **Markdown en GitHub:** Redacción del informe del proyecto bajo el enfoque Docs-as-Code en el repositorio del informe. (Referencia: https://www.markdownguide.org)
    * **OpenAPI:** Documentación de los RESTful Web Services. (Referencia: https://spec.openapis.org/oas/latest.html)
* **Software Deployment**
    * **GitHub Pages:** Publicación del Website. (Referencia: https://pages.github.com)
    * **Firebase Hosting:** Publicación de la Frontend Web Application. (Referencia: https://firebase.google.com/docs/hosting)
    * **Render:** Publicación de los RESTful Web Services. (Referencia: https://render.com)
    * **Railway:** Base de datos MySQL gestionada en la nube. (Referencia: https://railway.com)

### 5.1.2. Source Code Management

El equipo utiliza **GitHub** como plataforma y **Git** como sistema de control de versiones. Todos los repositorios pertenecen a la organización IngesCompanyCC: https://github.com/IngesCompanyCC:

| Producto | Repositorio |
|----------|-------------|
| Website | https://github.com/IngesCompanyCC/doofplus-website |
| Frontend Web Application | https://github.com/IngesCompanyCC/doofplus-web-application |
| RESTful Web Services | https://github.com/IngesCompanyCC/doofplus-platform |
| Informe del proyecto | https://github.com/IngesCompanyCC/doofplus-report |

**GitFlow Workflow**

El equipo aplica el modelo GitFlow propuesto por Vincent Driessen en *A successful Git branching model*:

* **`main`:** Contiene únicamente versiones estables listas para producción. Solo recibe merges desde ramas `release/*` y `hotfix/*`, y cada merge se etiqueta con su versión (por ejemplo, `v1.0.0`).
* **`develop`:** Rama de integración. Consolida las funcionalidades terminadas antes de preparar una nueva versión.
* **Feature branches:** Nacen de `develop` y regresan a `develop` mediante Pull Request. Convención: `feature/<nombre-en-kebab-case>`, nombrando el bounded context o la funcionalidad (por ejemplo, `feature/shared`, `feature/manufacturing`, `feature/project-configuration`). En el repositorio del informe se usa `feature/chapter<n>`.
* **Release branches:** Nacen de `develop` cuando un incremento está listo para entregarse y se fusionan con `main` y `develop`. Convención: `release/v<MAJOR>.<MINOR>.<PATCH>`, admitiendo el sufijo de pre-release `-rc.<n>` (por ejemplo, `release/v1.0.2`, usada en el Website y en la Web Application).
* **Hotfix branches:** Nacen de `main` para corregir errores críticos en producción y se fusionan con `main` y `develop`. Convención: `hotfix/v<MAJOR>.<MINOR>.<PATCH>` (por ejemplo, `hotfix/v1.0.3`).

**Semantic Versioning**

Las releases se nombran según **Semantic Versioning 2.0.0** con el formato `MAJOR.MINOR.PATCH`:

* **MAJOR:** Cambios incompatibles con versiones anteriores (por ejemplo, `v2.0.0`).
* **MINOR:** Nuevas funcionalidades compatibles con la versión anterior (por ejemplo, `v1.1.0`).
* **PATCH:** Correcciones de errores compatibles (por ejemplo, `v1.0.1`).

**Conventional Commits**

Los mensajes de commit siguen la especificación **Conventional Commits 1.0.0**:

```
<type>(<optional scope>): <description>

<optional body>

<optional footer(s)>
```

* **type:** `feat` (nueva funcionalidad), `fix` (corrección de errores), `docs` (documentación), `style` (formato sin cambios de lógica), `refactor` (reestructuración sin cambio de comportamiento), `test` (pruebas), `build` (sistema de build o dependencias), `ci` (integración continua), `chore` (tareas de mantenimiento).
* **scope:** Módulo o bounded context afectado, por ejemplo `feat(lots): ...` o `docs(chapter5): ...`.
* **description:** Resumen breve en inglés, en modo imperativo y en minúsculas.
* **body y footer:** Detalle del cambio y referencias a tareas; los cambios incompatibles se marcan con `BREAKING CHANGE:` o con `!` después del type.

### 5.1.3. Source Code Style Guide & Conventions

Toda la nomenclatura del código fuente (archivos, clases, variables, métodos y comentarios) se escribe en **inglés**, respetando el Ubiquitous Language del dominio de calidad farmacéutica (por ejemplo, `ProductionBatch`, `Deviation`, `CapaAction`). Las convenciones adoptadas por lenguaje son las siguientes:

* **HTML:** HTML Style Guide and Coding Conventions (W3Schools): https://www.w3schools.com/html/html5_syntax.asp y Google HTML/CSS Style Guide: https://google.github.io/styleguide/htmlcssguide.html. Etiquetas y atributos en minúsculas, valores de atributos entre comillas dobles, uso de etiquetas semánticas (`header`, `main`, `section`, `footer`) y atributo `alt` en todas las imágenes.
* **CSS:** Google HTML/CSS Style Guide: https://google.github.io/styleguide/htmlcssguide.html. Indentación de 2 espacios, nombres de clases en kebab-case y selectores cortos; los ids no se usan para estilos.
* **JavaScript:** Google JavaScript Style Guide: https://google.github.io/styleguide/jsguide.html. Uso de `const`/`let`, lowerCamelCase para variables y funciones y punto y coma al final de cada sentencia.
* **Vue:** Vue Style Guide: https://vuejs.org/style-guide/. Componentes de un solo archivo (`.vue`) con nombres en kebab-case, `<script setup>` con Composition API, props tipadas y organización del código por bounded context (`domain`, `infrastructure`, `application`, `presentation`).
* **C#:** C# Coding Conventions (Microsoft): https://learn.microsoft.com/dotnet/csharp/fundamentals/coding-style/coding-conventions. PascalCase para clases, métodos y propiedades, camelCase para variables locales y parámetros, y prefijo `I` en las interfaces.
* **ASP.NET Core:** ASP.NET Core Web API (Microsoft): https://learn.microsoft.com/aspnet/core/web-api. Configuración externalizada en `appsettings.json` y variables de entorno, y controladores RESTful con rutas en plural y kebab-case (por ejemplo, `/api/v1/production-batches`).
* **Gherkin:** Gherkin Conventions for Readable Specifications: https://specflow.org/gherkin/gherkin-conventions-for-readable-specifications. Palabras clave `Feature`, `Scenario`, `Given`, `When`, `Then` en inglés, un comportamiento por escenario y uso de `Scenario Outline` con `Examples` para casos basados en datos.

### 5.1.4. Software Deployment Configuration

A continuación se describen los pasos para desplegar cada producto de la solución a partir de su repositorio de código fuente:

1. **Website (GitHub Pages)**
    1. Fusionar la rama de release en `main` y etiquetar la versión.
    2. En el repositorio `doofplus-website`, ingresar a *Settings > Pages* y seleccionar *Deploy from a branch* con la rama `main` y la carpeta `/ (root)`.
    3. GitHub Pages publica el sitio en https://ingescompanycc.github.io/doofplus-website/ y lo vuelve a publicar con cada push a `main`.
2. **Frontend Web Application (Firebase Hosting)**
    1. Publicar la Fake API en un Web Service de Render vinculado a la rama `main` del repositorio `doofplus-web-application`, con el comando de build `npm install` y el de inicio `npm run server:prod` (json-server en el puerto 10000).
    2. Registrar la URL de la Fake API y las rutas de cada endpoint en `.env.production` (`VITE_PLATFORM_API_URL=https://ingescompanycc-api.onrender.com/api/v1`).
    3. Instalar Firebase CLI (`npm install -g firebase-tools`), iniciar sesión con `firebase login` y seleccionar el proyecto `ingescompanycc-frontend` con `firebase use --add`. El repositorio incluye `firebase.json`, que publica la carpeta `dist` como Single Page Application.
    4. Compilar la versión de producción con `npm run build` (Vite).
    5. Publicar con `firebase deploy --only hosting`.
3. **RESTful Web Services (Render y Railway)**
    1. Crear la base de datos MySQL en Railway y obtener la cadena de conexión y las credenciales.
    2. Crear un Web Service en Render vinculado a la rama `main` del repositorio de Web Services, con el Dockerfile del proyecto ASP.NET Core.
    3. Registrar en Render las variables de entorno de producción (cadena de conexión de la base de datos, secreto JWT, credenciales de la pasarela de pagos Niubiz, API key de SendGrid y API key de los dispositivos de ThingsBoard).
    4. Render compila y publica el servicio con cada push a `main`; la documentación OpenAPI queda disponible en la ruta `/scalar` del servicio.

## 5.2. Landing Page, Services & Applications Implementation

En esta sección se explica y evidencia el proceso de implementación, pruebas, documentación y despliegue de **DoofPlus**, incluyendo el Website, la Frontend Web Application y los RESTful Web Services. El avance se presenta organizado por Sprints a partir del Product Backlog.

### 5.2.1. Sprint 1

En esta sección se registra y explica el avance en términos de producto y trabajo colaborativo para el **Sprint 1**, cuyo enfoque fue configurar los repositorios de la organización IngesCompanyCC, construir la base del Website de DoofPlus y configurar el proyecto de la Frontend Web Application.

#### 5.2.1.1. Sprint Planning 1

El Sprint Planning Meeting sirvió para definir los objetivos iniciales, asignar responsabilidades y seleccionar las primeras User Stories del Website y las tareas técnicas de configuración de la Web Application. A continuación, se presenta el resumen de la reunión de planificación:

| Sprint # | Sprint 1 |
|----------|----------|
| **Sprint Planning Background** | |
| **Date** | 2026-09-30 |
| **Time** | 10:00 AM |
| **Location** | Reunión virtual vía Discord |
| **Prepared By** | Zavaleta Gutierrez, Rodolfo Martin |
| **Attendees (to planning meeting)** | Angulo Ramírez, Marcelo Martín / Cobades Zamora, Yhoshua Hebert / Rojas Ambicho, Nestor Daniel / Yarleque Ruiz, Cristina Marcela / Zavaleta Gutierrez, Rodolfo Martin |
| **Sprint 0 Review Summary** | No aplica por ser el primer Sprint del proyecto. |
| **Sprint 0 Retrospective Summary** | No aplica por ser el primer Sprint del proyecto. |
| **Sprint Goal & User Stories** | |
| **Sprint 1 Goal** | **Our focus is on** setting up the IngesCompanyCC repositories, the base of the DoofPlus Website and the configuration of the DoofPlus Web Application.<br>**We believe it delivers** a first bilingual entry point that presents DoofPlus to QA/QC specialists and production supervisors of pharmaceutical laboratories, and a ready project to build the Web Application.<br>**This will be confirmed when** visitors can use the navigation bar, read the value proposition in the hero and switch between English and Spanish, and the Web Application project runs with PrimeVue, Vue I18n and the Fake API. |
| **Sprint 1 Velocity** | 10 Story Points |
| **Sum of Story Points** | 10 Story Points (US44: 3, US01: 2, US46: 5) |

#### 5.2.1.2. Aspect Leaders and Collaborators

En el Sprint 1 se consideraron cuatro aspectos: la base del Website, la configuración de la Web Application, los repositorios y la documentación del sprint. A continuación se presenta el Leadership-and-Collaboration Matrix (LACX), que indica quién es el líder (L) y quiénes son los colaboradores (C) en cada aspecto:

| Team Member (Last Name, First Name) | GitHub Username | Website | Web Application Setup | Repositories | Documentation |
|-------------------------------------|-----------------|:---:|:---:|:---:|:---:|
| Angulo Ramírez, Marcelo Martín | Zock2005 | C | | | C |
| Cobades Zamora, Yhoshua Hebert | YhoshuaCZ | C | C | C | |
| Rojas Ambicho, Nestor Daniel | danRO-20 | C | | | C |
| Yarleque Ruiz, Cristina Marcela | Cris06luna | | | | L |
| Zavaleta Gutierrez, Rodolfo Martin | gutierrezrodolfo360-bit | L | L | L | C |

#### 5.2.1.3. Sprint Backlog 1

El objetivo de este Sprint fue construir la base del Website y dejar configurado el proyecto de la Web Application. Las tareas se registraron en el board del Sprint 1 en Jira Software.

![Sprint 1 en Jira Software: actividades finalizadas y responsables](../assets/img/chapter5/evidencia/jira-sprint1.png)

**Enlace al board en Jira:** https://inges-company-cc.atlassian.net/jira/software/projects/UPC/boards/1

| Sprint # | Sprint 1 | | | | | | |
|----------|----------|---|---|---|---|---|---|
| **User Story** | | **Work-Item / Task** | | | | | |
| **Id** | **Title** | **Id** | **Title** | **Description** | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
| US44 | Navegación por secciones | T001 | Navbar bilingüe | Implementar la barra de navegación con el logotipo, los enlaces a las secciones y el selector de idioma, con sus estilos. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US01 | Visualización de la propuesta de valor | T002 | Hero con propuesta de valor | Implementar el hero con el título, el subtítulo, los botones de acción y la tarjeta flotante de estado de lote. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US46 | Cambio de idioma | T003 | Archivos de traducción y cambio de idioma | Crear los archivos de traducción en inglés y español y la lógica que aplica los textos con `data-i18n`. | 6 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| TS01 | Implementación de Website adaptable y accesible | T004 | Configuración del repositorio del Website | Crear el repositorio con la estructura base del sitio, el `.gitignore` y las ramas `main` y `develop`. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| TS01 | Implementación de Website adaptable y accesible | T005 | Recursos gráficos | Agregar el logotipo de DoofPlus y las fotos de los integrantes del equipo. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| — | Tareas técnicas | T006 | Configuración del proyecto Vue | Configurar Vite, PrimeVue, Vue I18n, las variables de entorno (`.env`) y json-server con las rutas `/api/v1`. | 6 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| — | Tareas técnicas | T007 | Footer de la Web Application | Implementar el componente de footer con soporte de internacionalización. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |

#### 5.2.1.4. Development Evidence for Sprint Review

Durante el Sprint 1 se creó el repositorio del Website con su navegación, el hero y el cambio de idioma, y se configuró el proyecto de la Web Application con Vue 3, PrimeVue, Vue I18n y la Fake API. Las tablas siguientes presentan los commits de todas las ramas de ambos repositorios en el periodo del Sprint (del 30 de setiembre al 8 de octubre de 2026); la columna *Branch* indica la rama en que se realizó cada commit.

**Website** (11 commits)

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| IngesCompanyCC/doofplus-website | develop | `185d2c0` | feat(assets): add DoofPlus logo and team photos | — | 08/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `2acc88b` | Merge branch 'feature/navbar-hero' into develop | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `2ca1c4b` | feat(translations): add hero content translations for English and Spanish | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `996e8cd` | feat(hero): add hero section with dynamic content placeholders and styles | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ab9e295` | feat(nav): add navbar with language support in English and Spanish and styles | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c569c20` | feat(translations): add language switching functionality and update HTML structure | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0a72a3f` | Merge branch 'feature/project-configuration' into develop | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `dc827a9` | feat(translations): implement language switching functionality file | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `afb534f` | feat(translations): add initial language files for English and Spanish | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | main | `80e064f` | chore: add gitignore | — | 07/10/2026 |
| IngesCompanyCC/doofplus-website | main | `5a5fb40` | chore: initial commit | — | 07/10/2026 |

**Web Application** (7 commits)

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| IngesCompanyCC/doofplus-web-application | feature/shared | `1a507d6` | feat(footer-content): add footer component with internationalization support for English and Spanish | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `91f10ed` | Merge branch 'feature/project-configuration' into develop | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/project-configuration | `d3fe488` | feat(i18n): add initial i18n setup with English and Spanish language files for translation support | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/project-configuration | `825d7a2` | chore: add initial db and routes configuration for json-server | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/project-configuration | `a8b15b5` | chore: update dependencies and integrate PrimeVue components | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/project-configuration | `d8c858c` | chore: add gitignore | — | 30/09/2026 |
| IngesCompanyCC/doofplus-web-application | feature/project-configuration | `2e07764` | chore: initial commit | — | 30/09/2026 |

#### 5.2.1.5. Execution Evidence for Sprint Review

En este Sprint se logró la base del Website, bilingüe (inglés y español), con la barra de navegación, el hero con la propuesta de valor y la tarjeta de estado de lote. La siguiente captura muestra el Website al cierre del Sprint (commit `185d2c0`):

![Website al cierre del Sprint 1](../assets/img/chapter5/screenshots/s1-full.png)

*Figura: Website al cierre del Sprint 1: navegación, hero y selector de idioma.*

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

El alcance del Sprint 1 no incluyó endpoints propios. La Web Application quedó configurada con json-server y las rutas `/api/v1`, cuyos endpoints se documentan en el Sprint 2. La documentación de los RESTful Web Services con OpenAPI se elaborará en el sprint en que se implementen dichos servicios.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

En el Sprint 1 los productos se mantuvieron en los repositorios de la organización IngesCompanyCC, con las ramas `main` y `develop` de GitFlow. La publicación del Website en GitHub Pages, de la Web Application en Firebase Hosting y de la Fake API en Render se realizó en el Sprint 2 (sección 5.2.2.7).

#### 5.2.1.8. Team Collaboration Insights during Sprint

En el Sprint 1 la configuración inicial de ambos repositorios estuvo a cargo de Zavaleta Gutierrez, Rodolfo Martin, con el aporte de Cobades Zamora, Yhoshua Hebert en los recursos gráficos. La siguiente tabla resume los commits de cada integrante en ambos repositorios durante el Sprint (sin contar los commits de merge):

| Team Member | GitHub Username | Website | Web Application | Total |
|---|---|:---:|:---:|:---:|
| Zavaleta Gutierrez, Rodolfo Martin | gutierrezrodolfo360-bit | 8 | 6 | 14 |
| Cobades Zamora, Yhoshua Hebert | YhoshuaCZ | 1 | 0 | 1 |
| Angulo Ramírez, Marcelo Martín | Zock2005 | 0 | 0 | 0 |
| Rojas Ambicho, Nestor Daniel | danRO-20 | 0 | 0 | 0 |
| Yarleque Ruiz, Cristina Marcela | Cris06luna | 0 | 0 | 0 |

### 5.2.2. Sprint 2

En esta sección se registra y explica el avance en términos de producto y trabajo colaborativo para el **Sprint 2**, cuyo enfoque fue completar el Website de DoofPlus y construir la primera versión de la Frontend Web Application con sus seis bounded contexts, consumiendo una Fake API mientras se implementan los RESTful Web Services.

#### 5.2.2.1. Sprint Planning 2

El Sprint Planning Meeting sirvió para definir los objetivos del Sprint, asignar responsabilidades por bounded context y seleccionar las User Stories pendientes del Website y las de la Web Application. A continuación, se presenta el resumen de la reunión de planificación:

| Sprint # | Sprint 2 |
|----------|----------|
| **Sprint Planning Background** | |
| **Date** | 2026-10-09 |
| **Time** | 09:00 AM |
| **Location** | Reunión virtual vía Discord |
| **Prepared By** | Cobades Zamora, Yhoshua Hebert |
| **Attendees (to planning meeting)** | Angulo Ramírez, Marcelo Martín / Cobades Zamora, Yhoshua Hebert / Rojas Ambicho, Nestor Daniel / Yarleque Ruiz, Cristina Marcela / Zavaleta Gutierrez, Rodolfo Martin |
| **Sprint 1 Review Summary** | Se entregó la base del Website (navegación, hero y cambio de idioma) y el proyecto de la Web Application configurado con Vue 3, PrimeVue, Vue I18n y la Fake API. Como feedback, se pidió completar las secciones del Website según los mock-ups del capítulo 4, agregar el acceso por segmento a la Web Application y publicar ambos productos. |
| **Sprint 1 Retrospective Summary** | Como acierto, los repositorios se crearon desde el inicio con las ramas `main` y `develop` de GitFlow. Como oportunidades de mejora, se acordó repartir el trabajo entre todos los integrantes, usar una feature branch por sección o bounded context, distribuir los commits a lo largo del sprint y usar los types de Conventional Commits según su significado. |
| **Sprint Goal & User Stories** | |
| **Sprint 2 Goal** | **Our focus is on** delivering the complete DoofPlus Website and the first version of the DoofPlus Web Application for the QA/QC, Production and Administration environments.<br>**We believe it delivers** a single place to register batches, follow deviations and CAPA, release batches with electronic signature and monitor IoT equipment to QA/QC specialists and production supervisors of pharmaceutical laboratories.<br>**This will be confirmed when** each segment signs in to its own environment with two-factor authentication and completes its user goals (QA-1 to QA-6 and PR-1 to PR-6) on the published Web Application. |
| **Sprint 2 Velocity** | 182 Story Points |
| **Sum of Story Points** | 182 Story Points (US03: 2, US45: 1, US04: 1, US47: 1, US01: 2, US02: 2, US48: 2, US49: 2, US05: 1, US06: 2, US07: 3, US08: 5, US55: 3, US50: 3, US51: 3, US52: 5, US53: 3, US35: 3, US36: 5, US57: 3, US14: 3, US15: 5, US16: 2, US58: 3, US17: 3, US32: 3, US23: 3, US24: 3, US25: 5, US26: 3, US37: 3, US38: 3, US39: 3, US56: 3, US22: 2, US09: 5, US10: 3, US12: 5, US13: 3, US18: 3, US19: 5, US20: 5, US21: 3, US11: 5, US54: 5, US31: 3, US27: 5, US28: 5, US29: 5, US30: 3, US59: 3, US33: 3, US34: 3, US40: 3, US41: 3, US42: 2, US43: 3) |

#### 5.2.2.2. Aspect Leaders and Collaborators

En el Sprint 2 se consideraron ocho aspectos: el Website y, en la Web Application, los bounded contexts (Shared e IAM; Organizations y Subscriptions; Manufacturing; IoT Monitoring; Quality & Compliance), las releases y el despliegue, y la documentación. El líder (L) de cada aspecto es el integrante con más commits en él, según el historial de los repositorios de la organización IngesCompanyCC.

| Team Member (Last Name, First Name) | GitHub Username | Website | Shared & IAM | Organizations & Subscriptions | Manufacturing | IoT Monitoring | Quality & Compliance | Releases & Deployment | Documentation |
|-------------------------------------|-----------------|:---:|:---:|:---:|:---:|:---:|:---:|:---:|:---:|
| Angulo Ramírez, Marcelo Martín | Zock2005 | C | C | | | | | L | C |
| Cobades Zamora, Yhoshua Hebert | YhoshuaCZ | | L | L | C | L | L | | |
| Rojas Ambicho, Nestor Daniel | danRO-20 | L | | | | | | C | C |
| Yarleque Ruiz, Cristina Marcela | Cris06luna | | | | | | | | L |
| Zavaleta Gutierrez, Rodolfo Martin | gutierrezrodolfo360-bit | C | | | L | | | | C |

#### 5.2.2.3. Sprint Backlog 2

El objetivo del Sprint fue completar el Website y entregar la primera versión de la Web Application. Las tareas se organizaron por User Story; las del Website incluyen la reimplementación de las secciones del Sprint 1 sobre el diseño del capítulo 4. Las tareas se registraron en el board del Sprint 2 en Jira Software.

![Sprint 2 en Jira Software: 64 actividades finalizadas y responsables](../assets/img/chapter5/evidencia/jira-sprint2.png)

**Enlace al board en Jira:** https://inges-company-cc.atlassian.net/jira/software/projects/UPC/boards/1

| Sprint # | Sprint 2 | | | | | | |
|----------|----------|---|---|---|---|---|---|
| **User Story** | | **Work-Item / Task** | | | | | |
| **Id** | **Title** | **Id** | **Title** | **Description** | **Estimation (Hours)** | **Assigned To** | **Status (To-do / In-Process / To-Review / Done)** |
| US01 | Visualización de la propuesta de valor | T008 | Hero con propuesta de valor | Implementar el hero con el título, el subtítulo, los indicadores de confianza y los botones Get Started y View plans. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US02 | Visualización de servicios y características | T009 | Secciones Services y Features | Implementar las tarjetas de servicios y el acordeón de características con su panel de vista previa. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US48 | Acceso por segmento a la Web Application | T010 | Acceso por segmento | Implementar la sección Choose your workspace y los enlaces con data-app-segment hacia el inicio de sesión de cada entorno. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US49 | Visualización del video promocional | T011 | Video About the Product y About the Team | Implementar el reproductor que carga el video de YouTube al pulsar play y muestra un aviso mientras el video no está publicado. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US05 | Preguntas frecuentes | T012 | Sección FAQ | Implementar las preguntas frecuentes con acordeón accesible y el enlace al formulario de contacto. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US44 | Navegación por secciones | T013 | Navbar con menú móvil | Reimplementar la barra de navegación con anclas reales, Sign in y Get Started con destino propio y el menú overlay en mobile. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US03 | Visualización de planes y precios | T014 | Planes con toggle mensual/anual | Reimplementar las tarjetas de planes con el cambio de precio mensual/anual y su nota de precios. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US45 | Visualización del equipo y de la startup | T015 | Secciones About us y Our Team | Implementar la misión, la visión y las tarjetas de los integrantes con su foto y rol. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US04 | Formulario de contacto | T016 | Formulario Contact us | Implementar el formulario de consulta con validación de campos y el estado de mensaje enviado. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US47 | Consulta de términos y política de privacidad | T017 | Términos y política de privacidad | Implementar las páginas terms.html y privacy.html con sus estilos y traducciones. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US06 | Inicio de sesión con segundo factor | T018 | Inicio de sesión con 2FA | Implementar la elección de entorno, el inicio de sesión por entorno y la verificación con código de seis dígitos. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US07 | Gestión de roles | T019 | Acceso por rol | Implementar el guard de IAM y el estado Access not authorized cuando el rol no corresponde al entorno. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US08 | Firmas electrónicas | T020 | Firma electrónica | Implementar la confirmación con contraseña en las aprobaciones, liberaciones y cierres críticos. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US55 | Alta de usuarios del equipo | T021 | Usuarios e invitaciones | Implementar el directorio de usuarios y perfiles y el formulario para invitar usuarios. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US50 | Registro de organización | T022 | Registro de organización | Implementar el registro con razón social, RUC, planta, plan y primer administrador, y el resumen de administración. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US51 | Selección de plan | T023 | Selección de plan | Implementar la revisión del cambio de plan en la página de suscripción. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US52 | Pago de suscripción | T024 | Pago de suscripción | Implementar el historial de facturación y el reintento de un pago rechazado. | 6 | Rojas Ambicho, Nestor Daniel | Done |
| US53 | Renovación y cancelación | T025 | Renovación de la suscripción | Mostrar la fecha de renovación y el estado de la suscripción en la página de suscripción y pagos. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US35 | Catálogo de productos | T026 | Catálogo de productos | Implementar el catálogo de productos con su fórmula maestra vigente. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US36 | Gestión de fórmulas maestras | T027 | Fórmulas maestras | Mostrar los componentes y la versión aprobada de la fórmula maestra de cada producto. | 6 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US57 | Gestión de órdenes de producción | T028 | Órdenes de producción | Implementar la lista y la ejecución de órdenes de producción contra la fórmula maestra. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US14 | Registro de lotes | T029 | Registro de lotes | Implementar el diálogo Create batch con el estado de lote rechazado por fórmula no aprobada. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US15 | Consulta del historial de lotes | T030 | Historial de lotes | Implementar la lista de lotes con filtros y la genealogía y el historial de estados de cada lote. | 6 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US16 | Gestión de estados de lote | T031 | Estados de lote | Implementar el cambio de estado de los lotes y sus conteos por estado. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US58 | Recepción de materias primas | T032 | Recepción de materias primas | Implementar la recepción de materias primas con cuarentena e inspección. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US17 | Asociación de materias primas | T033 | Asociación de materias primas | Asignar lotes de materia prima aprobados a un lote de producción. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US32 | Panel de producción | T034 | Resumen de producción | Implementar el resumen de producción con el programa del día, la disponibilidad de equipos y las incidencias. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US23 | Registro de dispositivos IoT | T035 | Inventario de equipos y sensores | Implementar el inventario de equipos con sus sensores IoT y el registro de un sensor. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US24 | Asociación de sensores a un lote | T036 | Asociación de sensores a lotes | Implementar la evidencia IoT del lote con la asociación de equipos y sensores. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US25 | Captura automática de evidencias | T037 | Telemetría | Implementar el gráfico de telemetría con límites y lectura pico. | 6 | Angulo Ramírez, Marcelo Martín | Done |
| US26 | Consulta de registros IoT | T038 | Consulta de registros IoT | Implementar el resumen IoT con la salud de los equipos y la cola de alertas. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US37 | Gestión de equipos | T039 | Gestión de equipos | Mostrar el estado operativo de cada equipo en el inventario. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US38 | Gestión de calibraciones | T040 | Calibraciones | Mostrar el estado de calibración (apto, por vencer, no apto) de equipos y sensores. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US39 | Mantenimiento preventivo | T041 | Mantenimiento preventivo | Mostrar el próximo mantenimiento y su responsable en el detalle del equipo. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US56 | Registro y escalamiento de incidencias | T042 | Incidentes | Implementar la lista de incidentes con su severidad y el reconocimiento de alertas. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US22 | Notificaciones de desviación crítica | T043 | Alertas críticas | Implementar el detalle del sensor con la alerta activa y la regla de reconocimiento. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US09 | Gestión de protocolos de calidad | T044 | Documentos de calidad | Implementar el repositorio de documentos controlados con su flujo de aprobación. | 6 | Rojas Ambicho, Nestor Daniel | Done |
| US10 | Repositorio de SOP | T045 | Repositorio de SOP | Filtrar los documentos por tipo y estado para consultar la versión vigente. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US12 | Control de versiones documentales | T046 | Versiones de documentos | Implementar el historial de versiones de cada documento. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US13 | Aprobación documental | T047 | Aprobación documental | Implementar la aprobación con firma y el bloqueo de autoaprobación (segregación de funciones). | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US18 | Registro de desviaciones | T048 | Registro de desviaciones | Implementar el reporte de desviación con su evaluación de riesgo. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US19 | Análisis de causa raíz | T049 | Análisis de causa raíz | Implementar el registro de la causa raíz como requisito del plan CAPA. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US20 | Gestión CAPA | T050 | Plan CAPA | Implementar el plan CAPA con sus acciones, responsables y fechas. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US21 | Seguimiento de acciones CAPA | T051 | Seguimiento de CAPA | Mostrar el avance de las acciones CAPA y bloquear el cierre sin evidencia de eficacia. | 4 | Cobades Zamora, Yhoshua Hebert | Done |
| US11 | Automatización de cálculos de calidad | T052 | Resultados analíticos | Implementar los resultados analíticos con su conformidad respecto de la especificación. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US54 | Revisión y liberación de lotes | T053 | Liberación de lotes | Implementar la liberación de lotes con requisitos previos, firma electrónica y estado bloqueado. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| US31 | Panel de indicadores de calidad | T054 | Resumen de calidad | Implementar el resumen de calidad con la cola de prioridades y las próximas decisiones. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| US27 | Audit trail | T055 | Audit trail | Implementar el registro de eventos con filtros por registro y actor, compartido por los tres entornos. | 6 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US28 | Generación automática de reportes | T056 | Reportes regulatorios | Implementar la lista y generación de reportes regulatorios. | 6 | Yarleque Ruiz, Cristina Marcela | Done |
| US29 | Preparación de auditorías | T057 | Preparación de auditorías | Implementar el registro de auditorías y su estado de preparación. | 6 | Yarleque Ruiz, Cristina Marcela | Done |
| US30 | Acceso de auditor a evidencias | T058 | Evidencias para auditor | Mostrar las evidencias vinculadas a cada hallazgo de auditoría. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US59 | Registro de auditorías y hallazgos | T059 | Hallazgos de auditoría | Implementar el registro de hallazgos con su severidad y acción asignada. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US33 | Indicadores de trazabilidad | T060 | Indicadores de trazabilidad | Implementar los indicadores de brechas de trazabilidad. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US34 | Indicadores de desviaciones | T061 | Indicadores de desviaciones | Implementar la tendencia de desviaciones por periodo. | 4 | Zavaleta Gutierrez, Rodolfo Martin | Done |
| US40 | Bandeja de tareas | T062 | Bandeja de tareas | Implementar la lista de tareas pendientes vinculadas a registros. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US41 | Notificaciones entre áreas | T063 | Comunicación entre áreas | Implementar los comentarios de cada tarea para la coordinación entre Producción y Calidad. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| US42 | Solicitudes de aprobación | T064 | Solicitudes de aprobación | Crear tareas de aprobación dirigidas a Calidad desde un registro. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| US43 | Seguimiento de tareas | T065 | Seguimiento de tareas | Mostrar el estado de las tareas asignadas por el usuario. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| — | Tareas técnicas | T066 | Capa shared | Implementar las clases base de la API, el layout público, el workspace shell, el page header y el selector de idioma. | 6 | Cobades Zamora, Yhoshua Hebert | Done |
| — | Tareas técnicas | T067 | Accesibilidad del layout público | Mejorar el layout público, el footer y la página 404 con atributos de accesibilidad y textos traducidos. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| — | Tareas técnicas | T068 | Traducciones de IoT Monitoring | Agregar las 121 claves de la sección monitoring en inglés y español. | 4 | Rojas Ambicho, Nestor Daniel | Done |
| — | Tareas técnicas | T069 | Documentación del repositorio | Redactar la estructura base de la documentación, las user stories, las ADRs y el diagrama de clases del proyecto. | 4 | Yarleque Ruiz, Cristina Marcela | Done |
| — | Tareas técnicas | T070 | Releases v1.0.2 | Preparar release/v1.0.2 en el Website y en la Web Application, con merge a main y tag SemVer. | 4 | Angulo Ramírez, Marcelo Martín | Done |
| — | Tareas técnicas | T071 | Configuración de despliegue | Agregar firebase.json para Firebase Hosting y el script server:prod para publicar la Fake API. | 4 | Rojas Ambicho, Nestor Daniel | Done |

#### 5.2.2.4. Development Evidence for Sprint Review

En el Sprint 2 se trabajó en dos repositorios siguiendo GitFlow: una feature branch por sección del Website o por bounded context de la Web Application, integradas en `develop` con merges `--no-ff`, y una rama `release/v1.0.2` fusionada en `main` con el tag `v1.0.2` en ambos repositorios. Las tablas siguientes presentan los commits de todas las ramas de ambos repositorios en el periodo del Sprint (9 y 10 de octubre de 2026); la columna *Branch* indica la rama en que se realizó cada commit.

**Website** (104 commits)

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| IngesCompanyCC/doofplus-website | main | `18317a7` | Merge branch 'develop' into main | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `f3cc1fb` | Merge branch 'fix/sign-in-environment-selection' into develop | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ff1b2c2` | fix(config): add the sign-in route of the web application | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `639b29d` | fix(navbar): open the environment selection of the web application from sign in | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | main | `a1f0b37` | Merge branch 'release/v1.0.2' into main | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `bde1114` | Merge branch 'feature/documents' into develop | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `da0a3d4` | feat(user-stories): add user stories for DoofPlus Landing Page application | — | 10/10/2026 |
| IngesCompanyCC/doofplus-website | main | `7ec9099` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `558394a` | Merge branch 'refactor/align-with-reference-landing' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `bcf6dc9` | docs(readme): describe the modular structure aligned with the reference landing | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ddef20a` | feat(pages): align toolbar, hero, sections and footer with the reference landing | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `f3521e5` | refactor(scripts): split behavior into ES modules and point segment access to the web application | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `d6a0fae` | refactor(i18n): move translations to JSON files with IngesCompanyCC and Cristina Yarleque | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `6a5c2a5` | refactor(styles): split the stylesheet into modules matching the reference landing design | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | main | `77b8d41` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `a7abbd0` | Merge branch 'fix/landing-parity' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9c36f51` | style(ui): style link buttons and highlight the active navigation link | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0455622` | feat(scripts): remember language, translate page language and alt, add magnetic buttons and active section link | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0a94eee` | feat(i18n): add page titles and hero image alt translations | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `150a5ba` | fix(pages): link hero and navbar access buttons and mark translatable title and image alt | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | main | `20435d4` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `798bef3` | Merge branch 'chore/release-prep' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `5ecf1f5` | docs(readme): add links to the published landing page and web application | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e9e3fd0` | docs(changelog): add release 1.0.0 with every landing section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `86c3a9d` | perf(assets): resize and compress team photo of Cristina | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `34eb8b5` | Merge branch 'fix/web-app-url' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ca5f4a6` | fix(scripts): set the deployed firebase url of the web application | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `92108e8` | fix(routing): update web app URL and access routes for Vue migration | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9b4a5b7` | Merge branch 'feature/layout-structure' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `8480ad1` | style(variables): add design tokens for colors, radius, shadows, and layout width | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `a04da5d` | style(variables): add new CSS variables for consistent theming | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `126ca09` | style(pages): add styles for terms of service and privacy policy pages | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `d8fcc2a` | style(grid): add footer grid layout for brand and link groups | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0c2e9e1` | style(grid): add contact grid layout for intro, info, and form display | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `d3c4b2a` | style(grid): add team grid layout for three cards with centered alignment | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `eb4489b` | style(grid): add about grid layout for mission and vision sections | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `a146009` | style(grid): add product grid layout for intro, details, and video display | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `1334b0d` | style(grid): add features grid layout for preview panel and accordion | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `2e77a4f` | style(grid): add hero grid layout for balanced text and image display | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c70045e` | style(grid): add 12-column fluid grid layout for responsive design | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ae41643` | style(layout): add footer styles for improved layout structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `777e2db` | style(layout): add section styles and overline for improved layout structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e0ff9c5` | style(layout): define container styles for layout structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9dbdf27` | style(layout): define container styles for layout structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e14ef68` | style(layout): add layout.css for styling structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `7c34004` | Merge branch 'feature/accessibility-seo' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `edbc6d9` | docs(readme): add cursors folder to the structure | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `3b64e2e` | feat(cursor): add custom cursors in the DoofPlus colors | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `597ce5b` | feat(seo): add description, keywords, author and favicon to every page | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `091720c` | feat(a11y): add skip link to the main content | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `5db5a3d` | Merge branch 'feature/mobile-layout' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c30f05a` | feat(mobile): add responsive breakpoints for tablet and mobile | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e1b8d67` | feat(navbar): add full-screen mobile menu | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `33a8fd6` | Merge branch 'feature/legal-pages' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `f363df0` | feat(pages): add privacy policy page | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c782b12` | feat(pages): add terms of service page | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `cee3eb6` | Merge branch 'fix/faq-styles' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `08995d8` | fix(faq): close faq-more rule and remove stray declarations | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `98d3c28` | Merge branch 'fix/footer-styles' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `b4d515e` | fix(footer): close unterminated footer actions rule | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `dfa48b5` | Merge branch 'feature/footer' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `1d9b665` | feat(scripts): route segment access buttons to the web application | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `523df3f` | feat(footer): add footer with link groups and segment access | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `f72e319` | Merge branch 'feature/contact-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `948e196` | feat(scripts): add contact form validation and confirmation | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `441c93f` | feat(contact): add contact section with inquiry form | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `af63084` | Merge branch 'feature/faq-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c1581e5` | feat(faq): add faq section reusing the accordion | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `deca300` | Merge branch 'feature/testimonials-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c051a03` | feat(testimonials): add testimonials section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9200684` | Merge branch 'feature/team-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `741a34e` | docs(readme): fix team member surname | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `b4bae28` | feat(team): add team section with Cristina Yarleque and team video | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0ddf58b` | Merge branch 'fix/company-name' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `16be82e` | fix(about): use the IngesCompanyCC company name | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `1b86c4d` | Merge branch 'feature/about-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `bc4cb8b` | feat(about): add about us section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `dfdf035` | Merge branch 'feature/plans-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `77de141` | feat(scripts): add monthly/yearly billing toggle | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `158df16` | feat(plans): add pricing plans section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `ae1f0f1` | Merge branch 'feature/benefits-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e86c584` | feat(benefits): add benefits section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `93a7730` | Merge branch 'feature/product-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `fa20991` | feat(product): add about-the-product section with video player | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `0a9dba5` | Merge branch 'feature/features-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9e781e6` | feat(scripts): add accordion behavior | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `b6b86ce` | feat(features): add features section with accordion and preview panel | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `2cb9b42` | Merge branch 'feature/services-section' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `8db6b27` | feat(services): add services section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `9a26a0a` | Merge branch 'feature/navbar-sections' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `dedd837` | feat(navbar): add logo image and anchor links to landing sections | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `6c53f8d` | Merge branch 'docs/readme-course-info' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `8f84a9c` | docs(readme): fix broken formatting and set the Aplicaciones Web course | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `c96d62e` | Merge branch 'fix/workspace-layout-grid' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `e1a56a3` | fix(ui): add missing grid layout and container boundaries | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `7bc81fa` | Merge branch 'fix/workspace-colors' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `900aa4d` | fix(ui): inject missing css variables and color overrides for the workspace section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `4b646fc` | Merge branch 'fix/workspace-styles' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `59e9b67` | fix(ui): add missing layout and grid styles for workspace section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `334cf9c` | Merge branch 'docs/repository-setup' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `cb0a751` | docs(repository): add readme, license, changelog and contributing files | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `7a16201` | fix(ui): remove duplicated workspace section | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `af05340` | feat(i18n): add workspace translations | — | 09/10/2026 |
| IngesCompanyCC/doofplus-website | develop | `6b83cbe` | feat(ui): add workspace section and translations | — | 09/10/2026 |

**Web Application** (93 commits)

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Committed on (Date) |
|------------|--------|-----------|----------------|---------------------|---------------------|
| IngesCompanyCC/doofplus-web-application | main | `44f4f8c` | Merge branch 'release/v1.0.2' into main | — | 10/10/2026 |
| IngesCompanyCC/doofplus-web-application | develop | `abf2d33` | Merge branch 'feature/aclaration' into develop | — | 10/10/2026 |
| IngesCompanyCC/doofplus-web-application | develop | `d4b0868` | feat(public-layout): enhance layout with accessibility features and improved structure | — | 10/10/2026 |
| IngesCompanyCC/doofplus-web-application | develop | `73ee894` | feat(footer): enhance footer with internationalization and dynamic legal links | — | 10/10/2026 |
| IngesCompanyCC/doofplus-web-application | develop | `8ee0ceb` | feat(page-not-found): enhance 404 page with improved accessibility and dynamic content | — | 10/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `3080340` | docs(setup): update adrs.md and information | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `dc21772` | docs(setup): update adrs.md | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `ba56b54` | docs(setup): add adrs.md | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `9625c29` | docs(setup): add class-diagram.puml | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `1cda8fa` | docs(setup): add user-stories.md | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | main | `e2ba8bc` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | develop | `2e478b9` | Merge branch 'fix/landing-page-url' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/landing-page-url | `0139e73` | fix(env): point to the renamed landing page repository | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | main | `8d04860` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/landing-page-url | `6a4c208` | Merge branch 'build/firebase-project' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | build/firebase-project | `830efe0` | build(firebase): add firebase project alias | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | build/firebase-project | `c6488a7` | chore(gitignore): ignore firebase deploy cache | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/setup-docs | `982805e` | docs(setup):  add base project report structure and root files | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | main | `988d770` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | build/firebase-project | `ed8774f` | Merge branch 'fix/production-env' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/production-env | `0aca34c` | fix(env): add every endpoint path and the Render API to the production environment | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | main | `43aa77b` | Merge branch 'develop' into main | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/production-env | `b3814e3` | Merge branch 'feature/shared' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `50ba279` | docs: upgrade README.md | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/production-env | `27957e1` | fix(build): remove BOM from config files causing Vite crash | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | fix/production-env | `249e5df` | build: add server:prod script and firebase hosting configuration | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `0ce28f7` | feat(trail-view): add the audit trail and tasks and collaboration to every environment | The audit trail filters the attributed events by record and actor, shows the selected change and its provenance, and exports the events as CSV, recording the export. Tasks and collaboration shows the team inbox, assigns tasks and keeps the discussion of a record. QA/QC and administration list both pages, and production lists the tasks. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `a01bbbc` | feat(reports-view): add the regulatory reports library with the batch dossier of each report | Lists the reports, shows the configuration of the selected one and derives its batch dossier from the genealogy, analytical results and deviations of the batch, and creates batch dossier drafts. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `c3054f4` | feat(audit-view): add the audit with its findings register, the new finding form and the evidence package | Shows the findings, the closed and pending evidence and the audit progress, opens the selected finding with its observation, response and closure requirement, and adds findings to the audit. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `32df7cc` | feat(results-view): add the analytical results with the protocol assay calculation and the OOS deviation | Lists the results of a batch, calculates the assay with the formula of PRT-QC-012, saves it as within specification or out of specification, and registers the deviation an out-of-specification result requires, linked from the page. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `e18209a` | feat(release-view): add the batch release with the six readiness checks and the QA electronic signature | Checks the manufacturing record, analytical results, materials, deviations, packaging and documents of a batch, and signs its release only when every check passes, the user has the QA release privilege and re-enters the password. The release is recorded in the audit trail. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `625b636` | feat(capa-view): add the CAPA plan with actions, evidence, root cause and routing to an independent reviewer | Attaches the evidence of each action, adds actions, saves the root cause and routes the plan for approval only when the root cause is documented, every action has evidence and the reviewer is not the owner. Adds the shared info and danger alert styles. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `7e9687a` | feat(deviation-view): add the deviation investigation with risk priority number, evidence and disposition | Edits the summary, classification and containment, calculates the RPN from severity, likelihood and detectability, reviews and attaches evidence and submits the risk assessment only when the evidence is reviewed. Other pages can open a deviation with ?code=. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `86be3b6` | feat(document-view): add controlled documents with the approval workflow and the version history | Shows the version in review and the effective version, blocks the author from approving their own version (separation of duties), publishes the approved version and makes the previous one obsolete. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `55f3a50` | feat(quality-view): add the quality overview and the quality indicators as the QA/QC home | The overview shows open deviations and CAPA actions, audits, the release queue with blocked batches, the priority queue of the signed-in user, quality operations and upcoming decisions. The indicators show complete batch records, traceability gaps and closed deviations by root cause, with a CSV export. Adds the QA/QC routes and sidebar, the shared stat card styles and the Quality translations. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `e0cd861` | feat(quality): apply separation of duties, CAPA approval, release readiness and the audit trail in a Pinia store | The store loads the quality records, approves document versions only when the approver is not the author, registers deviations and submits risk assessments with reviewed evidence, routes complete CAPA plans to an independent reviewer, records analytical results, findings, reports, tasks and comments, checks the release readiness of a batch and signs its release after re-authentication. Every change adds an attributed event to the audit trail. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `ed14ce0` | feat(iam): re-authenticate the signed-in user before an electronic signature | The IAM store checks the password of the signed-in user again, as the batch release requires before the QA electronic signature. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/quality | `4b52fc3` | feat(quality): model documents, deviations, CAPA, analytical results, audits, reports and tasks and read them through the fake API | Adds the fourteen JavaScript entities of Quality & Compliance, their assemblers and QualityApi over BaseApi, the quality collections of Laboratorios Andinos to the fake API, and the endpoint paths. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `45d7be2` | feat(overview-view): add the production overview with schedule, readiness and incident priorities as the production home | Shows the orders of today, the output and batches in progress, the open IoT incidents, the batch on hold with its IoT evidence, the readiness of equipment and raw materials and the shift handover. The overview returns to the production routes and sidebar now that IoT Monitoring is in place. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `1bc4bc0` | feat(evidence-view): add the IoT evidence of a batch with equipment association and the readings recorded during the batch | Associates fit equipment whose sensors are not feeding another batch and explains the rejections, draws the critical variable of the batch and lists the readings captured by ThingsBoard with their result. The batch detail links to its IoT evidence. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `84b80ff` | feat(incidents-view): add the IoT incidents with their acknowledgment and linked records | Lists the active alerts, or every alert, with the sensor and equipment, the acknowledgment, the severity, the status and the linked deviation or incident. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `56bbb1d` | feat(equipment-view): add the equipment and sensor inventory, sensor registration and the sensor detail with alert acknowledgment | The inventory shows the calibration and maintenance of each piece of equipment and its sensors, registers sensors with a unique ThingsBoard device ID and records calibration and maintenance. The sensor detail shows the telemetry, acknowledges the open alert with a response note and follows the alert workflow. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `34fd3e7` | feat(iot-view): add the IoT overview with the live sensor chart, the alert queue and equipment health | Adds the telemetry chart as an SVG component with the acceptable range and the out-of-range readings, the IoT overview in the production routes and sidebar, and the IoT Monitoring translations. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `ea053d5` | feat(monitoring): associate equipment, register sensors and acknowledge alerts in a Pinia store | The store loads the equipment, sensors, readings and alerts, checks out-of-range readings, links the sensors of fit equipment to one batch at a time, registers sensors with a unique ThingsBoard device ID, records calibration and maintenance, acknowledges alerts without closing them and links them to deviations. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/monitoring | `b0ba763` | feat(monitoring): model equipment, sensors, readings and alerts and read them through the fake API | Adds the JavaScript entities, the assemblers and MonitoringApi over BaseApi, the equipment, sensors, readings and alerts of the Ate plant to the fake API, and the endpoint paths. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `5a7b211` | feat(profile-view): add profile and notification preferences for every environment | Each environment opens the profile from the user menu. The page edits the personal data, the email and in-app notifications and the preferred language, which applies right away. The language chosen in the profile or in the top bar is remembered between visits. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `fe1d22b` | feat(overview-view): add the administration overview with users, facilities and account health | Shows the active users and invited accounts, the organization with its facilities, the subscription and its declined payment, the account health and the administrative activity. The overview becomes the home of the administration environment. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `86dd55c` | feat(registration-view): add the organization registration with plan and first administrator | Public page at /register with the organization details, the plan and billing cycle, the administrator account with the password rule and strength meter, the acceptance of the terms and the email verification step. The sign-in environment selection links to it, and the Organizations translations are added. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `990b3cb` | feat(organizations): register organizations and update user profiles in a Pinia store | The store loads the organization of the signed-in user, its facilities, the user profiles and the administrative activity. The registration rejects a RUC that is already registered and creates the organization, its primary plant, the pending subscription and the first administrator. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `03cd705` | feat(iam): create the first administrator of a newly registered organization | The account stays invited until the administrator verifies the email. The fake API keeps the password with the user until the RESTful API exposes a sign-up endpoint. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `b632cc6` | feat(organizations): model organizations, facilities, user profiles and administrative activity and read them through the fake API | Adds the JavaScript entities, the registration command, the assemblers and OrganizationsApi over BaseApi, with the lookup of an organization by RUC. Adds Laboratorios Andinos, its facilities, the user profiles and the administrative activity to the fake API, and the endpoint paths. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `7ded46d` | feat(subscription-view): add the subscriptions and payments page in the administration environment | Shows the plan, the active users, the amount and the next invoice, the declined payment with its retry, the billing history, the plan change review, the payment method and the payment states. Adds the subscription page to the administration routes and sidebar, the US dollar format and the subscriptions translations. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `719f1b2` | feat(iam): load the users of the organization for the administration pages | The IAM store keeps the users of the organization of the signed-in user and its active accounts, used by the subscription and administration pages. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `fe01a88` | feat(subscriptions): manage the plan change and the payment retry in a Pinia store | The store loads the public plans, the subscription of an organization and its invoices, creates the pending subscription of a new organization, changes the plan or billing cycle, and retries a declined charge by issuing an approved invoice and activating the subscription. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/organizations | `0b5589c` | feat(subscriptions): model plans, subscriptions and invoices and read them through the fake API | Adds the JavaScript entities, the assemblers and SubscriptionsApi over BaseApi, the plans, the subscription of Laboratorios Andinos and its invoices to the fake API, and the endpoint paths. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `86168aa` | refactor(routing): open the production orders as the production home until the overview arrives with IoT monitoring | The production overview shows the open IoT incidents, so its placeholder leaves the routes and the sidebar; Alberto Valle now lands on the production orders after signing in. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `b657401` | feat(product-view): add the product catalog with master formulas and the raw-material receipt with quarantine inspection | The catalog registers products with a unique code and shows the components of the effective master formula. The receipt validates the internal lot, attaches the certificate of analysis, moves the new lot to sampling and requests the QC inspection. Alerts and form fields move to the global styles. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `dfd11eb` | feat(order-view): add the production orders and the order execution against the master formula | The order list links each order to its detail. The detail records the next operation in sequence, blocks recording while an operation is on hold, and shows the effective master formula and the order context. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `ca9fc44` | feat(batch-view): add the batch list, the create batch dialog and the batch genealogy with PrimeVue | The batch list shows the status counts, the filters, the selected batch and the lookup; the dialog rejects duplicate batch numbers and products without an approved master formula; the detail shows the input lots, the production order, the operations and the status history. Adds the shared page header, the number and UTC date formats, the workspace table and chip styles, and the Manufacturing translations. The sidebar keeps a page selected on its detail pages. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `34ff6a7` | fix(manufacturing): restore the store and API built on the assemblers after the merge with develop | The merge of origin/develop kept a second store and API that call the endpoints without the assemblers or the env paths, and a production overview written in TypeScript with PrimeFlex 2 classes that do not exist in PrimeFlex 4. Restores the Pinia store and the ManufacturingApi of the Manufacturing rewrite; the production overview returns to a placeholder until IoT Monitoring is in place. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `3600d94` | Merge remote-tracking branch 'origin/develop' into develop | # Conflicts: | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `a9353c8` | refactor(manufacturing): manage batches, orders and material lots in a Pinia store | The store loads the eight collections, validates batches (unique code and approved master formula), creates the batch with its production order and history entry, records operations in sequence, releases batches and receives raw materials. json-server runs without --watch: it restarted after its own writes and refused the request that adds the batch history entry. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `692a7f7` | refactor(manufacturing): rewrite the domain and infrastructure in JavaScript over the base API | The entities and assemblers were TypeScript and Angular code pasted in .js files, so they could not run in Vue. Each entity is now a JavaScript class with public fields, each assembler maps axios responses, and ManufacturingApi extends BaseApi with one BaseEndpoint per collection. Adds the eight manufacturing collections to the fake API and their endpoint paths. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `d395dbe` | feat(manufacturing): implement production overview UI using PrimeVue | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `bfa8488` | feat(manufacturing): implement state management using Pinia | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/manufacturing | `27ebb20` | feat(manufacturing): implement API client using Axios and BaseApi pattern | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/iam | `856a84d` | feat(iam): guard each workspace by environment and add the user menu with sign out | Without a session the guard opens the sign-in of the environment, and a user of another environment goes back to their own home. The sidebar shows the organization and the navigation of the environment. Pinia is installed before the router so the guard can read the IAM store on the first navigation. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/iam | `dfe47f8` | feat(iam): sign in to an environment with the two-factor code and keep the session | Add the environment selection and the sign-in form with PrimeVue, the IAM store in Pinia, the public layout for sign-in and page not found, and the IAM translations. The session opens only when the role of the user belongs to the requested environment. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/iam | `0c82ab8` | feat(iam): model users and the sign-in command and query them through the fake API | Add the six demo users of Laboratorios Andinos to the fake API and the users endpoint path. The fake API filters users by credentials and by two-factor code until the RESTful API exposes a sign-in endpoint. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `4eebc75` | feat(shared): add the workspace layout with navigation, language switcher and legal footer | The sidebar becomes a drawer on small screens, the language switcher keeps the document language in sync, the page not found view links back home and PrimeVue uses the Material preset with the DoofPlus teal as primary color. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `5eb161b` | feat(shared): add the base API and base endpoint over the platform API | Configure axios with VITE_PLATFORM_API_URL, rewrite the env files in UTF-8 so Vite can read them, point production to the published fake API and add the server script for json-server. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `1844bfd` | chore(core): replace the Vite starter with the DoofPlus title, favicon and base styles | Remove the HelloWorld component and the Vite assets, rename App.vue to app.vue so the import in main.js also resolves on case-sensitive systems, and set the page title from the route meta. | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `e6a14b9` | fix(views): enable typescript parsing for ported logic | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `35d77f5` | feat(presentation): scaffold Vue components for manufacturing views | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `1e708fe` | Merge branch 'feature/manufacturing' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `6d9cc34` | fix(routing): properly map the manufacturing routes and root redirect | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `54c2a72` | Merge branch 'develop' into feature/manufacturing | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `065fe8d` | fix(core): remove vite default screen and add missing primevue license key env files | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `c8a6765` | feat(i18n): replace the batch translations with the manufacturing translations and add shared labels | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `c68c840` | feat(routing): route the production overview as the production home | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `5c6909c` | feat(overview): add the production overview with schedule readiness and incident priorities | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `3b83b15` | feat(routing): route the manufacturing views in the production environment | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `e1394c7` | feat(receipt-view): add the raw-material receipt with quarantine inspection | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `15931e1` | feat(product-view): add the product catalog and the effective master formula | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `8ac9b15` | feat(order-view): add production orders and the order execution against the master formula | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `85d87b5` | feat(batch-view): add batch genealogy and status history | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `584d398` | feat(batch-view): show batches with status counts, filters, lookup and the selected batch | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `a52cba6` | feat(batch-view): turn the batch form into the create batch dialog with the rejection state | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `0bc9e6e` | feat(manufacturing): validate batches, record operations and receive materials in the store with signals | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `d2066c2` | feat(manufacturing): read and write the manufacturing collections through the fake API | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `8a34c52` | feat(manufacturing): model products, master formulas, orders, operations, batches and material lots | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `6adaa6b` | Merge branch 'feature/shared' into develop | — | 09/10/2026 |
| IngesCompanyCC/doofplus-web-application | feature/shared | `edd6de1` | fix(core): add missing pinia and router setup | — | 09/10/2026 |

#### 5.2.2.5. Execution Evidence for Sprint Review

En este Sprint se completó el Website, publicada en GitHub Pages, y se implementó la Web Application con sus tres entornos. En el Website se agregaron el hero, el acceso por segmento, los servicios y características, el video About the Product, los beneficios, About us, el equipo con su video, los testimonios y las preguntas frecuentes, y se reimplementaron la navegación con menú mobile, los planes, el formulario de consulta y las páginas legales. La Web Application permite elegir el entorno, iniciar sesión con segundo factor y recorrer todos los módulos de QA/QC (documentos, desviaciones y CAPA, resultados analíticos, liberación de lotes, auditorías, audit trail, reportes y tareas), Production (órdenes, productos y fórmulas, lotes, materias primas, equipos e IoT, incidentes) y Administration (usuarios, organización y suscripción), en inglés y español, con datos servidos por una Fake API.

**Website:** https://ingescompanycc.github.io/doofplus-website/

![Hero con la propuesta de valor (US01)](../assets/img/chapter5/sprint2/landing/01-home.png)

*Figura: Hero con la propuesta de valor (US01).*

![Acceso por segmento: Choose your workspace (US48)](../assets/img/chapter5/sprint2/landing/02-workspace.png)

*Figura: Acceso por segmento: Choose your workspace (US48).*

![Servicios (US02)](../assets/img/chapter5/sprint2/landing/03-services.png)

*Figura: Servicios (US02).*

![Características con acordeón y vista previa (US02)](../assets/img/chapter5/sprint2/landing/04-features.png)

*Figura: Características con acordeón y vista previa (US02).*

![Video About the Product (US49)](../assets/img/chapter5/sprint2/landing/05-product.png)

*Figura: Video About the Product (US49).*

![Beneficios](../assets/img/chapter5/sprint2/landing/06-benefits.png)

*Figura: Beneficios.*

![Planes con toggle mensual/anual (US03)](../assets/img/chapter5/sprint2/landing/07-plans.png)

*Figura: Planes con toggle mensual/anual (US03).*

![About us: misión y visión (US45)](../assets/img/chapter5/sprint2/landing/08-about.png)

*Figura: About us: misión y visión (US45).*

![Our Team y video About the Team (US45, US49)](../assets/img/chapter5/sprint2/landing/09-team.png)

*Figura: Our Team y video About the Team (US45, US49).*

![Testimonios](../assets/img/chapter5/sprint2/landing/10-testimonials.png)

*Figura: Testimonios.*

![Preguntas frecuentes (US05)](../assets/img/chapter5/sprint2/landing/11-faq.png)

*Figura: Preguntas frecuentes (US05).*

![Llamada a la acción final y footer con datos de contacto y redes sociales](../assets/img/chapter5/sprint2/landing/12-contact.png)

*Figura: Llamada a la acción final y footer con datos de contacto y redes sociales.*

![Website en español (US46)](../assets/img/chapter5/sprint2/landing/13-home-es.png)

*Figura: Website en español (US46).*

![Términos de Servicio (US47)](../assets/img/chapter5/sprint2/landing/14-terms.png)

*Figura: Términos de Servicio (US47).*

![Vista mobile](../assets/img/chapter5/sprint2/landing/15-mobile-home.png)

*Figura: Vista mobile.*

![Menú de navegación en mobile (US44)](../assets/img/chapter5/sprint2/landing/16-mobile-menu.png)

*Figura: Menú de navegación en mobile (US44).*

**Web Application:** https://ingescompanycc-frontend.web.app (cuentas de prueba en el README del repositorio; contraseña `DoofPlus2026!` y código 2FA `482106`).

![Elección de entorno (US06)](../assets/img/chapter5/sprint2/web-app/01-sign-in.png)

*Figura: Elección de entorno (US06).*

![Verificación con código 2FA (US06)](../assets/img/chapter5/sprint2/web-app/02-two-factor.png)

*Figura: Verificación con código 2FA (US06).*

![QA/QC · Quality overview (US31)](../assets/img/chapter5/sprint2/web-app/03-qa-overview.png)

*Figura: QA/QC · Quality overview (US31).*

![QA/QC · Quality documents con versiones y aprobación (US09, US12, US13)](../assets/img/chapter5/sprint2/web-app/04-qa-documents.png)

*Figura: QA/QC · Quality documents con versiones y aprobación (US09, US12, US13).*

![QA/QC · Deviation report y evaluación de riesgo (US18)](../assets/img/chapter5/sprint2/web-app/05-qa-deviations.png)

*Figura: QA/QC · Deviation report y evaluación de riesgo (US18).*

![QA/QC · Plan CAPA (US19, US20, US21)](../assets/img/chapter5/sprint2/web-app/06-qa-capa.png)

*Figura: QA/QC · Plan CAPA (US19, US20, US21).*

![QA/QC · Liberación de lotes con firma electrónica (US54, US08)](../assets/img/chapter5/sprint2/web-app/07-qa-batch-release.png)

*Figura: QA/QC · Liberación de lotes con firma electrónica (US54, US08).*

![QA/QC · Audit trail (US27)](../assets/img/chapter5/sprint2/web-app/08-qa-audit-trail.png)

*Figura: QA/QC · Audit trail (US27).*

![Production · Production overview (US32)](../assets/img/chapter5/sprint2/web-app/09-production-overview.png)

*Figura: Production · Production overview (US32).*

![Production · Órdenes de producción (US57)](../assets/img/chapter5/sprint2/web-app/10-production-orders.png)

*Figura: Production · Órdenes de producción (US57).*

![Production · Lotes con filtros y lote seleccionado (US14, US15, US16)](../assets/img/chapter5/sprint2/web-app/11-production-batches.png)

*Figura: Production · Lotes con filtros y lote seleccionado (US14, US15, US16).*

![Production · IoT overview con telemetría (US25, US26)](../assets/img/chapter5/sprint2/web-app/12-iot-overview.png)

*Figura: Production · IoT overview con telemetría (US25, US26).*

![Production · Equipos y sensores IoT (US23, US37, US38)](../assets/img/chapter5/sprint2/web-app/13-equipment.png)

*Figura: Production · Equipos y sensores IoT (US23, US37, US38).*

![Production · Incidentes (US56, US22)](../assets/img/chapter5/sprint2/web-app/14-incidents.png)

*Figura: Production · Incidentes (US56, US22).*

![Administration · Resumen de administración (US50)](../assets/img/chapter5/sprint2/web-app/15-admin-overview.png)

*Figura: Administration · Resumen de administración (US50).*

![Administration · Usuarios y perfiles (US07, US55)](../assets/img/chapter5/sprint2/web-app/16-admin-users.png)

*Figura: Administration · Usuarios y perfiles (US07, US55).*

![Administration · Invitación de usuarios (US55)](../assets/img/chapter5/sprint2/web-app/21-admin-invite.png)

*Figura: Administration · Invitación de usuarios (US55).*

![Administration · Tareas y colaboración (US40, US41)](../assets/img/chapter5/sprint2/web-app/22-admin-tasks.png)

*Figura: Administration · Tareas y colaboración (US40, US41).*

![Administration · Suscripción y pagos (US51, US52, US53)](../assets/img/chapter5/sprint2/web-app/17-admin-subscription.png)

*Figura: Administration · Suscripción y pagos (US51, US52, US53).*

![Administration · Suscripción y pagos en español](../assets/img/chapter5/sprint2/web-app/18-admin-subscription-es.png)

*Figura: Administration · Suscripción y pagos en español.*

![Registro de la organización (US50)](../assets/img/chapter5/sprint2/web-app/19-register.png)

*Figura: Registro de la organización (US50).*

![Inicio de sesión en mobile](../assets/img/chapter5/sprint2/web-app/20-mobile-sign-in.png)

*Figura: Inicio de sesión en mobile.*

Videos de navegación del producto (upc-pre-202620-1asi0730-8130-IngesCompanyCC-productnavigation-sprint-2):

- **Website:** *pendiente de publicar en Microsoft Stream.*
- **Web Application:** *pendiente de publicar en Microsoft Stream.*

#### 5.2.2.6. Services Documentation Evidence for Sprint Review

En el Sprint 2 todavía no se implementaron los RESTful Web Services, por lo que no hay documentación OpenAPI. Mientras tanto, la Web Application consume una Fake API con json-server (`server/db.json`), cuyas rutas se exponen bajo el prefijo `/api/v1` mediante `server/routes.json`, el mismo que tendrán los Web Services. La siguiente tabla documenta los endpoints que usa la Web Application; la URL base local es `http://localhost:3000/api/v1` y la publicada en Render es `https://ingescompanycc-api.onrender.com/api/v1` (por ejemplo, `/plans` (https://ingescompanycc-api.onrender.com/api/v1/plans)).

| Endpoint | Verbo HTTP | Sintaxis | Parámetros | Response | URL documentación |
|---|---|---|---|---|---|
| `/users` | GET | `/api/v1/users` | — | 200 OK con la lista de `users` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/users` | POST | `/api/v1/users` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/users` | GET | `/api/v1/users?email={email}&password={password}` | `email`, `password` (query) | 200 OK con el usuario cuyas credenciales coinciden (inicio de sesión) | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/users` | GET | `/api/v1/users?id={id}&twoFactorCode={code}` | `id`, `twoFactorCode` (query) | 200 OK con el usuario si el código 2FA es válido | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/organizations` | GET | `/api/v1/organizations` | — | 200 OK con la lista de `organizations` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/organizations` | GET | `/api/v1/organizations/{id}` | `id` (path) | 200 OK con el recurso de `organizations` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/organizations` | POST | `/api/v1/organizations` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/organizations` | GET | `/api/v1/organizations?ruc={ruc}` | `ruc` (query) | 200 OK con la organización que ya usa ese RUC | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/facilities` | GET | `/api/v1/facilities` | — | 200 OK con la lista de `facilities` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/facilities` | POST | `/api/v1/facilities` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/user-profiles` | GET | `/api/v1/user-profiles` | — | 200 OK con la lista de `user-profiles` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/user-profiles` | POST | `/api/v1/user-profiles` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/user-profiles` | PUT | `/api/v1/user-profiles/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/administrative-activities` | GET | `/api/v1/administrative-activities` | — | 200 OK con la lista de `administrative-activities` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/administrative-activities` | POST | `/api/v1/administrative-activities` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/plans` | GET | `/api/v1/plans` | — | 200 OK con la lista de `plans` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/subscriptions` | GET | `/api/v1/subscriptions` | — | 200 OK con la lista de `subscriptions` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/subscriptions` | POST | `/api/v1/subscriptions` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/subscriptions` | PUT | `/api/v1/subscriptions/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/invoices` | GET | `/api/v1/invoices` | — | 200 OK con la lista de `invoices` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/invoices` | POST | `/api/v1/invoices` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/products` | GET | `/api/v1/products` | — | 200 OK con la lista de `products` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/products` | POST | `/api/v1/products` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/master-formulas` | GET | `/api/v1/master-formulas` | — | 200 OK con la lista de `master-formulas` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/formula-items` | GET | `/api/v1/formula-items` | — | 200 OK con la lista de `formula-items` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/production-orders` | GET | `/api/v1/production-orders` | — | 200 OK con la lista de `production-orders` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/production-orders` | POST | `/api/v1/production-orders` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/operations` | GET | `/api/v1/operations` | — | 200 OK con la lista de `operations` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/operations` | PUT | `/api/v1/operations/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/batches` | GET | `/api/v1/batches` | — | 200 OK con la lista de `batches` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/batches` | POST | `/api/v1/batches` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/batches` | PUT | `/api/v1/batches/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/batch-events` | GET | `/api/v1/batch-events` | — | 200 OK con la lista de `batch-events` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/batch-events` | POST | `/api/v1/batch-events` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/material-lots` | GET | `/api/v1/material-lots` | — | 200 OK con la lista de `material-lots` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/material-lots` | POST | `/api/v1/material-lots` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/material-lots` | PUT | `/api/v1/material-lots/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/equipment` | GET | `/api/v1/equipment` | — | 200 OK con la lista de `equipment` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/equipment` | PUT | `/api/v1/equipment/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/sensors` | GET | `/api/v1/sensors` | — | 200 OK con la lista de `sensors` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/sensors` | POST | `/api/v1/sensors` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/sensors` | PUT | `/api/v1/sensors/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/readings` | GET | `/api/v1/readings` | — | 200 OK con la lista de `readings` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/alerts` | GET | `/api/v1/alerts` | — | 200 OK con la lista de `alerts` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/alerts` | PUT | `/api/v1/alerts/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/quality-documents` | GET | `/api/v1/quality-documents` | — | 200 OK con la lista de `quality-documents` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/quality-documents` | PUT | `/api/v1/quality-documents/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/deviations` | GET | `/api/v1/deviations` | — | 200 OK con la lista de `deviations` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/deviations` | POST | `/api/v1/deviations` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/deviations` | PUT | `/api/v1/deviations/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/evidence` | GET | `/api/v1/evidence` | — | 200 OK con la lista de `evidence` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/evidence` | POST | `/api/v1/evidence` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/evidence` | PUT | `/api/v1/evidence/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/capa-plans` | GET | `/api/v1/capa-plans` | — | 200 OK con la lista de `capa-plans` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/capa-plans` | PUT | `/api/v1/capa-plans/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/capa-actions` | GET | `/api/v1/capa-actions` | — | 200 OK con la lista de `capa-actions` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/capa-actions` | POST | `/api/v1/capa-actions` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/capa-actions` | PUT | `/api/v1/capa-actions/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/analytical-results` | GET | `/api/v1/analytical-results` | — | 200 OK con la lista de `analytical-results` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/analytical-results` | PUT | `/api/v1/analytical-results/{id}` | `id` (path) y recurso en el body (JSON) | 200 OK con el recurso actualizado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/audits` | GET | `/api/v1/audits` | — | 200 OK con la lista de `audits` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/audit-findings` | GET | `/api/v1/audit-findings` | — | 200 OK con la lista de `audit-findings` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/audit-findings` | POST | `/api/v1/audit-findings` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/audit-events` | GET | `/api/v1/audit-events` | — | 200 OK con la lista de `audit-events` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/audit-events` | POST | `/api/v1/audit-events` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/regulatory-reports` | GET | `/api/v1/regulatory-reports` | — | 200 OK con la lista de `regulatory-reports` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/regulatory-reports` | POST | `/api/v1/regulatory-reports` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/collaboration-tasks` | GET | `/api/v1/collaboration-tasks` | — | 200 OK con la lista de `collaboration-tasks` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/collaboration-tasks` | POST | `/api/v1/collaboration-tasks` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/task-comments` | GET | `/api/v1/task-comments` | — | 200 OK con la lista de `task-comments` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/task-comments` | POST | `/api/v1/task-comments` | Recurso en el body (JSON) | 201 Created con el recurso creado | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/traceability-gaps` | GET | `/api/v1/traceability-gaps` | — | 200 OK con la lista de `traceability-gaps` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |
| `/deviation-trends` | GET | `/api/v1/deviation-trends` | — | 200 OK con la lista de `deviation-trends` | https://github.com/IngesCompanyCC/doofplus-web-application#readme |

#### 5.2.2.7. Software Deployment Evidence for Sprint Review

En este Sprint se prepararon y publicaron las versiones estables de ambos productos siguiendo GitFlow:

- **Website:** la rama `release/v1.0.2` se fusionó en `main` con el tag `v1.0.2`. El Website se publica en GitHub Pages desde `main` en https://ingescompanycc.github.io/doofplus-website/.
- **Web Application:** la rama `release/v1.0.2` se fusionó en `main` con el tag `v1.0.2`. El repositorio incluye `firebase.json`, que configura Firebase Hosting como Single Page Application, y el script `npm run server:prod`, que publica la Fake API en un Web Service de Render. La Web Application está publicada en Firebase Hosting en https://ingescompanycc-frontend.web.app y la Fake API en Render en https://ingescompanycc-api.onrender.com/api/v1.

![Tag v1.0.2 del Website](../assets/img/chapter5/sprint2/github/release-landing-v1.0.2.png)

*Figura: Tag v1.0.2 del repositorio del Website.*

![Tag v1.0.2 de la Web Application](../assets/img/chapter5/sprint2/github/release-frontend-v1.0.2.png)

*Figura: Tag v1.0.2 del repositorio de la Web Application.*

![Website publicado](../assets/img/chapter5/evidencia/pages.png)

*Figura: Website publicado en GitHub Pages.*

#### 5.2.2.8. Team Collaboration Insights during Sprint

Los cinco integrantes participaron en el Sprint: en el Website, en la Web Application y en su documentación. La siguiente tabla resume los commits de cada integrante en todas las ramas de ambos repositorios (sin contar los commits de merge), seguida de los analíticos de GitHub: *Contributors*, que muestra los commits por integrante, y *Network*, que muestra las ramas de GitFlow y sus merges.

| Team Member | GitHub Username | Website | Web Application | Total |
|---|---|:---:|:---:|:---:|
| Rojas Ambicho, Nestor Daniel | danRO-20 | 44 | 4 | 48 |
| Cobades Zamora, Yhoshua Hebert | YhoshuaCZ | 0 | 43 | 43 |
| Zavaleta Gutierrez, Rodolfo Martin | gutierrezrodolfo360-bit | 8 | 23 | 31 |
| Angulo Ramírez, Marcelo Martín | Zock2005 | 17 | 3 | 20 |
| Yarleque Ruiz, Cristina Marcela | Cris06luna | 0 | 6 | 6 |

![Contributors del Website](../assets/img/chapter5/sprint2/github/insights-landing-contributors.png)

*Figura: Contributors del repositorio del Website.*

![Contributors de la Web Application](../assets/img/chapter5/sprint2/github/insights-frontend-contributors.png)

*Figura: Contributors del repositorio de la Web Application.*

![Network del Website](../assets/img/chapter5/sprint2/github/insights-landing-network.png)

*Figura: Network graph del repositorio del Website.*

![Network de la Web Application](../assets/img/chapter5/sprint2/github/insights-frontend-network.png)

*Figura: Network graph del repositorio de la Web Application.*

## 5.3. Validation Interviews

### 5.3.1. Diseño de Entrevistas

### 5.3.2. Registro de Entrevistas

### 5.3.3. Evaluaciones según heurísticas

## 5.4. Video About-the-Product

# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

1. **Sobre los Problem Statements:** En relación a los *Problem Statements* especificados, se concluye que la falta de digitalización y la trazabilidad manual generan un riesgo regulatorio crítico y pérdidas invisibles en los laboratorios farmacéuticos. DoofPlus aborda directamente este problema centralizando la documentación de calidad y los datos de producción en una única plataforma alineada a las normativas BPM/GMP.
2. **Assumptions vs. Comportamiento Real:** Durante el proceso, el equipo estableció como *Assumption* que los especialistas de QA/QC y Supervisores de Producción tendrían una alta resistencia al cambio tecnológico. Sin embargo, en contraste con el comportamiento real observado durante las entrevistas y validaciones, los segmentos mostraron una alta disposición a adoptar la herramienta, siempre y cuando la experiencia de usuario (UX) reduzca los clics necesarios para liberar un lote.
3. **Hypotheses Statements y Criterios de Éxito (Lean UX):** Respecto a nuestros *Hypotheses Statements*, se confirmó la hipótesis de que implementar firmas electrónicas y un *Audit Trail* automatizado reduce drásticamente el tiempo de revisión de lotes. Los resultados obtenidos de las validaciones de nuestros prototipos y *wireframes* superaron los criterios de éxito especificados en el proceso de Lean UX (logrando una aceptación del flujo de trabajo superior a la métrica esperada).

### Recomendaciones

1. **Roadmap - Desarrollo Backend y Seguridad:** En relación al *Roadmap* de los productos digitales, se recomienda priorizar para el siguiente sprint o hito (AV2) la construcción de la arquitectura Backend y la base de datos relacional. Es imperativo consolidar el *Bounded Context* de IAM (Identity and Access Management) antes de avanzar, ya que el valor del sistema depende de las firmas electrónicas y la seguridad de los roles.
2. **Roadmap - Integración de Telemetría (IoT):** Como siguiente paso en el alcance del modelo de negocio digital, se sugiere que el equipo investigue e integre simuladores de *WebSockets* o APIs en tiempo real. Esto permitirá validar técnicamente el módulo de monitoreo IoT (temperatura y humedad) establecido en el *Roadmap* sin necesidad de depender de hardware físico inmediato.
## Video About-the-Team

# Bibliografía

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Brown, S. (2018). <em>Software Architecture for Developers: Visualise, document and explore your software architecture</em>. Leanpub.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Brown, T. (2009). <em>Change by design: How design thinking transforms organizations and inspires innovation</em>. HarperBusiness.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
DrugXafe. (2025). <em>DrugXafe: Sistema de Seguimiento y Rastreo Farmacéutico</em>. tiga. https://www.tigahealth.com/es/productos/drugxafe-sistema-de-seguimiento-y-rastreo-farmaceutico/
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Evans, E. (2004). <em>Domain-driven design: Tackling complexity in the heart of software</em>. Addison-Wesley Professional.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Gothelf, J., & Seiden, J. (2021). <em>Lean UX: Designing great products with agile teams</em> (3rd ed.). O'Reilly Media.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
LoLimsa. (2026). <em>EMPRESA DE SOFTWARE MÉDICO. Expertos en tecnología para la salud</em>. https://www.lolimsa.com.pe
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Martin, R. C. (2017). <em>Clean architecture: A craftsman's guide to software structure and design</em>. Prentice Hall.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
MasterControl. (2024). <em>Quality Management System (QMS) Software for Life Sciences</em>. https://www.mastercontrol.com/
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Organización Mundial de la Salud. (2014). Annex 2: WHO good manufacturing practices for pharmaceutical products: Main principles. En <em>WHO Expert Committee on Specifications for Pharmaceutical Preparations: Forty-eighth report</em> (WHO Technical Report Series, n.º 986). https://www.who.int/publications/m/item/trs986-annex2
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Osterwalder, A., & Pigneur, Y. (2010). <em>Business model generation: A handbook for visionaries, game changers, and challengers</em>. John Wiley & Sons.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Patton, J. (2014). <em>User story mapping: Discover the whole story, build the right product</em>. O'Reilly Media.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Ries, E. (2011). <em>The lean startup: How today's entrepreneurs use continuous innovation to create radically successful businesses</em>. Crown Business.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Schwaber, K., & Sutherland, J. (2020). <em>The Scrum Guide</em>. Scrum.org.
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
tuhub. (2025). <em>Más control en la operación. Menos pérdidas invisibles.</em>. https://tuhub.co
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Tulip Interfaces. (2024). <em>Frontline Operations Platform for Manufacturing</em>. https://tulip.co/
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Veeva Systems. (2024). <em>Veeva Vault Quality: Modernizing Quality Management</em>. https://www.veeva.com/products/vault-quality/
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Vue.js. (2024). <em>Vue.js: The Progressive JavaScript Framework</em>. https://vuejs.org/
</div>

<div style="padding-left: 40px; text-indent: -40px; margin-bottom: 15px;">
Vernon, V. (2013). <em>Implementing Domain-Driven Design</em>. Addison-Wesley Professional.
</div>
# Anexos

## Anexo A. Videos de Exposiciones

En este anexo se incluyen los hipervínculos a los videos de exposición de cada entrega:

* **Entrega TB1 (Sprints 1 y 2):** Video de exposición upc-pre-202620-1asi0730-8130-IngesCompanyCC-exposition-tb1, *pendiente de registrar el enlace de Microsoft Stream.*
