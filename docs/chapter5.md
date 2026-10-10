# CapÃ­tulo V: Product Implementation, Validation & Deployment

## 5.1. Software Configuration Management

En esta secciÃ³n se describen las decisiones, convenciones y herramientas utilizadas por el equipo Inges Company para gestionar el ciclo de vida, implementaciÃ³n, validaciÃ³n y despliegue de **DoofPlus**. Estas decisiones permitieron mantener la trazabilidad sobre los cambios realizados en cada sprint para la Landing Page, Frontend Web Application y Backend Web Services.

### 5.1.1. Software Development Environment Configuration

Se detallan las herramientas utilizadas en el ciclo de vida del producto:

* **Project Management**
    * **Jira / Trello:** PlanificaciÃ³n de sprints, gestiÃ³n del Product Backlog y seguimiento visual de tareas. (Referencia: https://www.atlassian.com/software/jira, https://trello.com)
* **Requirements Management**
    * **Markdown:** DocumentaciÃ³n del proyecto. (Referencia: https://www.markdownguide.org)
    * **Gherkin:** RedacciÃ³n de criterios de aceptaciÃ³n (Given-When-Then). (Referencia: https://cucumber.io/docs/gherkin)
* **Product UX/UI Design**
    * **Figma:** ElaboraciÃ³n de Wireframes, Mock-ups y Prototypes. (Referencia: https://www.figma.com)
    * **UXPressia:** ElaboraciÃ³n de User Personas, Empathy Maps, Journey Maps e Impact Maps. (Referencia: https://uxpressia.com)
    * **Lucidchart:** DiagramaciÃ³n tÃ©cnica y diseÃ±o de base de datos. (Referencia: https://www.lucidchart.com)
* **Software Development**
    * **Visual Studio Code / WebStorm / Rider:** Entornos de desarrollo integrados para codificaciÃ³n. (Descarga: https://www.jetbrains.com)
    * **HTML5, CSS3 y JavaScript:** TecnologÃ­as core utilizadas para el desarrollo exclusivo del Landing Page.
    * **Vue.js Framework:** Framework de JavaScript (Composition API) utilizado para el desarrollo de Frontend Web Applications, integrando **PrimeVue** como biblioteca de componentes. (Referencia: https://vuejs.org/)
    * **ASP.NET Core & Entity Framework Core:** Frameworks basados en C# para el desarrollo de los RESTful Web Services. (Referencia: https://dotnet.microsoft.com/)
    * **PostgreSQL:** Sistema gestor de base de datos relacional. (Referencia: https://www.postgresql.org)
* **Software Testing**
    * **Swagger UI / Chrome DevTools / pgAdmin:** EjecuciÃ³n de pruebas de APIs, inspecciÃ³n de rendimiento frontend y revisiÃ³n directa de la persistencia en bases de datos.
* **Software Documentation**
    * **OpenAPI (Swagger):** DocumentaciÃ³n tÃ©cnica y contratos de los RESTful Web Services. (Referencia: https://swagger.io)
    * **PlantUML:** AplicaciÃ³n de Diagram-as-Code para diagramas UML y diagramas de base de datos. (Referencia: https://plantuml.com)
* **Software Deployment**
    * **GitHub Pages / Firebase / Render / Railway:** Plataformas cloud para el despliegue de los distintos repositorios y servicios de la soluciÃ³n.

### 5.1.2. Source Code Management

El cÃ³digo fuente de la soluciÃ³n es gestionado mediante **GitHub** como plataforma y sistema de control de versiones distribuido.
* **Landing Page:** https://github.com/IngesCompanyCC/IngesCompanyCC-Landing-Page
* **Frontend Web Application:** https://github.com/IngesCompany-7742/DoofPlus-Frontend
* **Backend Web Services:** https://github.com/IngesCompany-7742/doofplus-platform

**GitFlow Workflow**
El proyecto adopta **GitFlow** para la organizaciÃ³n de ramas:
* `main`: Rama principal para el cÃ³digo en producciÃ³n estable.
* `develop`: Rama de integraciÃ³n donde se consolidan las funcionalidades de todo el equipo.
* `feature/<nombre>`: ConvenciÃ³n para desarrollar nuevas funcionalidades (ej. `feature/auth-module`).
* `release/v<version>`: Ramas creadas desde develop para preparar y asegurar una nueva versiÃ³n.
* `hotfix/<nombre>`: Ramas que nacen de `main` para corregir errores crÃ­ticos en producciÃ³n.

**Semantic Versioning y Conventional Commits**
Se aplica **Semantic Versioning 2.0.0** (`MAJOR.MINOR.PATCH`) para nombrar las releases.
Todos los mensajes siguen la convenciÃ³n **Conventional Commits** (`tipo[scope opcional]: descripciÃ³n`) usando prefijos como `feat`, `fix`, `docs`, `style`, `refactor`, `test`, `chore` (ej. `feat(landing): add benefits section`).

### 5.1.3. Source Code Style Guide & Coding Conventions

Toda la nomenclatura y lÃ³gica programÃ¡tica en el cÃ³digo fuente se desarrolla estrictamente en **inglÃ©s**, respetando el Ubiquitous Language del dominio de calidad farmacÃ©utica. Se han adoptado las siguientes convenciones estÃ¡ndar oficiales para la programaciÃ³n:

* **HTML/CSS:** *Google HTML/CSS Style Guide* y *HTML Style Guide and Coding Conventions*.
* **JavaScript / TypeScript:** *Google JavaScript Style Guide*, *Google TypeScript Style Guide* y *Vue Style Guide*.
* **Java / Spring Boot:** *Google Java Style Guide* y buenas prÃ¡cticas de *Spring Boot Features* para controladores RESTful y abstracciÃ³n JPA.
* **BDD:** *Gherkin Conventions for Readable Specifications*.

### 5.1.4. Software Deployment Configuration

Pasos y configuraciÃ³n necesarios para el despliegue de la soluciÃ³n en la nube a partir de los repositorios de cÃ³digo:

1. **Landing Page (GitHub Pages):** Se navega a la configuraciÃ³n del repositorio, se habilita GitHub Pages apuntando a la raÃ­z (`/root`) de la rama `main` y el cÃ³digo estÃ¡tico es servido pÃºblicamente de manera automÃ¡tica por GitHub.
2. **Frontend Web Application (Firebase Hosting):**
    - Se ejecuta la construcciÃ³n optimizada localmente (`ng build --configuration production`).
    - Se utiliza Firebase CLI y el comando `firebase deploy --only hosting` apuntando a la carpeta de distribuciÃ³n para sincronizar la SPA a la nube.
3. **Backend Web Services (Render & Railway):**
    - Se aprovisiona la base de datos PostgreSQL en **Railway**, obteniendo la URL y credenciales.
    - El backend se despliega como Web Service en **Render** vinculado automÃ¡ticamente a la rama `main` de su repositorio. Se inyectan las variables de entorno de producciÃ³n (credenciales de BBDD, JWT keys, tokens de **Niubiz** para flujos de suscripciÃ³n). En cada commit a `main`, Render compila el proyecto y lo expone pÃºblicamente.

## 5.2. Landing Page, Services & Applications Implementation

En esta secciÃ³n se explica y evidencia el proceso de implementaciÃ³n, pruebas, documentaciÃ³n y despliegue de **DoofPlus**, incluyendo la Landing Page, Web Services y Frontend Web Applications. Se presenta el avance organizado por Sprints a partir del Product Backlog.

### 5.2.1. Sprint 1

En esta secciÃ³n se registra y explica el avance en tÃ©rminos de producto y trabajo colaborativo para el **Sprint 1**, el cual tuvo como enfoque principal la construcciÃ³n y despliegue de la primera versiÃ³n de la Landing Page de DoofPlus, asÃ­ como la configuraciÃ³n inicial de los repositorios y entornos de despliegue.

#### 5.2.1.1. Sprint Planning 1

El Sprint Planning Meeting sirviÃ³ para definir los objetivos iniciales, asignar responsabilidades y seleccionar las User Stories prioritarias orientadas a la presentaciÃ³n comercial de DoofPlus. A continuaciÃ³n, se presenta el resumen de la reuniÃ³n de planificaciÃ³n:

| Sprint # | Sprint 1 |
|----------|----------|
| **Sprint Planning Background** | |
| **Date** | 2026-09-20 |
| **Time** | 10:00 AM |
| **Location** | ReuniÃ³n virtual vÃ­a Discord |
| **Prepared By** | Cobades, Yhoshua |
| **Attendees (to planning meeting)** | Angulo, Marcelo / Cobades, Yhoshua / Yarleque, Cristina / Rojas, Nestor / Zavaleta, Rodolfo |
| **Sprint 0 Review Summary** | (No aplica por ser el primer Sprint del proyecto). |
| **Sprint 0 Retrospective Summary** | (No aplica por ser el primer Sprint del proyecto). |
| **Sprint Goal & User Stories** | |
| **Sprint 1 Goal** | **Our focus is on** delivering a complete and responsive Landing Page.<br>**We believe it delivers** a clear understanding of DoofPlus' value proposition to our potential pharmaceutical clients.<br>**This will be confirmed when** visitors can navigate through the features, plans, and team information flawlessly on both desktop and mobile devices. |
| **Sprint 1 Velocity** | 12 Story Points |
| **Sum of Story Points** | 12 Story Points |

#### 5.2.1.2. Aspect Leaders and Collaborators

A continuaciÃ³n se presenta el Leadership-and-Collaboration Matrix (LACX), que indica quiÃ©n es el lÃ­der (L) y quiÃ©nes son los colaboradores (C) para cada aspecto dentro del alcance del Sprint 1 (enfocado principalmente en la Landing Page y setup inicial).

| Team Member (Last Name, First Name) | GitHub Username | Landing Page UI/UX Leader (L) / Collaborator (C) | Landing Page Code Leader (L) / Collaborator (C) | Documentation Leader (L) / Collaborator (C) |
|-------------------------------------|-----------------|--------------------------------------------------|-------------------------------------------------|---------------------------------------------|
| Angulo, Marcelo                     | mangulo         | L                                                | C                                               | C                                           |
| Cobades, Yhoshua                    | yhocz           | C                                                | C                                               | C                                           |
| Yarleque, Cristina                  | Cris06luna / rflores | C                                           | C                                               | C                                           |
| Rojas, Nestor                       | nrojas          | C                                                | C                                               |                                             |
| Zavaleta, Rodolfo                   | rzavaleta       | C                                                | L                                               | L                                           |

#### 5.2.1.3. Sprint Backlog 1

El objetivo principal de este Sprint fue implementar el sitio web estÃ¡tico (Landing Page) para dar a conocer a Inges Company y el producto DoofPlus.

![jira](../assets/img/chapter5/jira-pb.png)


| User Story | Work-Item / Task | Status |
|------------|------------------|--------|
| **Story Id** \| **Story Title** | **Task Id** \| **Task Title** | **Task Description** | **Estimation (Hours)** | **Assigned To** | **(To-do / In-Process / To-Review / Done)** |
| US01 \| MenÃº de navegaciÃ³n | T001 \| Implementar navbar responsivo | Estructurar el menÃº de navegaciÃ³n con los enlaces a Home, Features, Benefits, Plans y Contact. | 2h | Zavaleta, Rodolfo | Done |
| US01 \| MenÃº de navegaciÃ³n | T002 \| Estilos y hamburger menu | Aplicar estilos CSS al menÃº y aÃ±adir comportamiento responsive con menÃº hamburguesa para mÃ³vil. | 2h | Angulo, Marcelo | Done |
| US02 \| VisualizaciÃ³n de planes de suscripciÃ³n | T003 \| DiseÃ±ar tarjetas de planes | Crear las tarjetas de los planes Standard Lab ($199/mes) y Enterprise ($599/mes) con sus caracterÃ­sticas. | 3h | Yarleque, Cristina | Done |
| US02 \| VisualizaciÃ³n de planes de suscripciÃ³n | T004 \| Toggle mensual/anual | Implementar el toggle de cambio entre precios mensuales y anuales con descuento del 15%. | 2h | Cobades, Yhoshua | Done |
| US03 \| VisualizaciÃ³n del equipo creador | T005 \| Maquetar secciÃ³n Our Team | Implementar las tarjetas de los 5 integrantes del equipo Inges Company con foto, nombre y descripciÃ³n. | 2h | Rojas, Nestor | Done |
| US03 \| VisualizaciÃ³n del equipo creador | T006 \| Correcciones secciÃ³n Our Team | Corregir la estructura y contenido de la secciÃ³n del equipo tras revisiÃ³n de pares. | 1h | Angulo, Marcelo | Done |
| US04 \| Formulario de contacto | T007 \| Implementar footer y formulario | Desarrollar el footer con el formulario de suscripciÃ³n por email, datos de contacto y links legales. | 3h | Zavaleta, Rodolfo | Done |
| US04 \| Formulario de contacto | T008 \| Correcciones de estructura index | Corregir la estructura general del index.html para asegurar consistencia semÃ¡ntica y accesibilidad. | 2h | Yarleque, Cristina | Done |
| US05 \| Cambio de idioma | T009 \| LÃ³gica i18n y toggle de idioma | Implementar el switcher de idioma ES/EN con archivos de traducciÃ³n y lÃ³gica JavaScript de i18n. | 3h | Cobades, Yhoshua | Done |
| â€” \| Documentos legales | T010 \| Agregar Terms of Service | Redactar e implementar la pÃ¡gina de TÃ©rminos de Servicio de DoofPlus. | 2h | Rojas, Nestor | Done |
| â€” \| Documentos legales | T011 \| Agregar Privacy Policy | Redactar e implementar la PolÃ­tica de Privacidad conforme a la legislaciÃ³n peruana. | 2h | Angulo, Marcelo | Done |

#### 5.2.1.4. Development Evidence for Sprint Review

En esta secciÃ³n se presentan los principales avances en la implementaciÃ³n del Landing Page.

| Repository | Branch | Commit Id | Commit Message | Commit Message Body | Commited on (Date) |
|------------|--------|-----------|----------------|---------------------|--------------------|
| DoofPlus-LandingPage | main | `1f1a22f` | Merge branch 'release/v1.0.0-rc.1' into main | Se fusionÃ³ la rama de liberaciÃ³n a producciÃ³n. | 20/09/2026 |
| DoofPlus-LandingPage | main | `e530153` | fix: change the defect language | CorrecciÃ³n del idioma predeterminado. | 20/09/2026 |
| DoofPlus-LandingPage | main | `7eded14` | build: add the option to change the language in main.js | AdiciÃ³n de lÃ³gica para alternar idiomas en el script principal. | 20/09/2026 |
| DoofPlus-LandingPage | main | `432fb64` | fix: update links of the images in index.html | ActualizaciÃ³n de rutas y enlaces de las imÃ¡genes. | 20/09/2026 |
| DoofPlus-LandingPage | main | `46b51b6` | build: add styles | IncorporaciÃ³n de la hoja de estilos CSS. | 20/09/2026 |
| DoofPlus-LandingPage | main | `86d4578` | chore: add images | InclusiÃ³n de recursos grÃ¡ficos al proyecto. | 20/09/2026 |
| DoofPlus-LandingPage | main | `06bd5ef` | build: Add footer | CreaciÃ³n de la secciÃ³n del pie de pÃ¡gina. | 20/09/2026 |
| DoofPlus-LandingPage | main | `be8e428` | build: add body | EstructuraciÃ³n y contenido del cuerpo principal. | 20/09/2026 |
| DoofPlus-LandingPage | main | `9b082a5` | feat: add language switching functionality in main.js | ImplementaciÃ³n de funcionalidad de cambio de idioma. | 20/09/2026 |
| DoofPlus-LandingPage | main | `b9ff9e6` | ci: add translations | AdiciÃ³n de diccionarios y archivos de traducciÃ³n. | 20/09/2026 |
| DoofPlus-LandingPage | main | `6a1377f` | docs: update README.md | ActualizaciÃ³n de la documentaciÃ³n del proyecto. | 20/09/2026 |
| DoofPlus-LandingPage | main | `0de92b6` | fix: refactor README.md | RefactorizaciÃ³n de formato en el README. | 20/09/2026 |
| DoofPlus-LandingPage | main | `6e6efc0` | docs: add README.md | CreaciÃ³n inicial del archivo README. | 20/09/2026 |
| DoofPlus-LandingPage | develop | `8dca66b` | Merge remote-tracking branch 'origin/develop' into develop | SincronizaciÃ³n de la rama develop. | 20/09/2026 |
| DoofPlus-LandingPage | develop | `a8c7448` | chore: Create template | CreaciÃ³n de plantilla base del proyecto. | 20/09/2026 |

#### 5.2.1.5. Execution Evidence for Sprint Review

Lo alcanzado en este Sprint corresponde a la Landing Page totalmente funcional, responsiva y con soporte bilingÃ¼e.

![capturas de pantalla](../assets/img/chapter5/screenshots/1.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/2.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/3.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/4.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/5.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/6.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/7.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/8.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/9.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/10.png)

![capturas de pantalla](../assets/img/chapter5/screenshots/11.png)

#### 5.2.1.6. Services Documentation Evidence for Sprint Review

Dado que el enfoque del Sprint 1 fue la Landing Page, la documentaciÃ³n de servicios backend mediante OpenAPI (Swagger) se abordarÃ¡ en los Sprints siguientes conforme se implementen los RESTful Web Services.

#### 5.2.1.7. Software Deployment Evidence for Sprint Review

Durante este Sprint, el equipo configurÃ³ los entornos en la nube para el alojamiento del Landing Page.
Se configurÃ³ **GitHub Pages** apuntando a la rama `main` del repositorio `DoofPlus-LandingPage`, permitiendo que cualquier cambio en el cÃ³digo se publique automÃ¡ticamente.

![github page](../assets/img/chapter5/evidencia/github-pages.png)

![pages](../assets/img/chapter5/evidencia/pages.png)

#### 5.2.1.8. Team Collaboration Insights during Sprint

Todos los miembros del equipo participaron activamente en la implementaciÃ³n de la Landing Page, organizÃ¡ndose a travÃ©s de ramas y realizando Pull Requests que fueron revisados por sus pares antes de ser fusionados a `main`.

![evidencia](../assets/img/chapter5/evidencia/evidencia.png)

## 5.3. Validation Interviews

### 5.3.1. DiseÃ±o de Entrevistas

### 5.3.2. Registro de Entrevistas

### 5.3.3. Evaluaciones segÃºn heurÃ­sticas

## 5.4. Video About-the-Product

# Conclusiones

## Conclusiones y recomendaciones
* **Conclusiones:**
  * Se logrÃ³ cumplir con el Sprint Goal del Sprint 1, desarrollando y desplegando satisfactoriamente la Landing Page de DoofPlus.
  * A travÃ©s del proceso de diseÃ±o e implementaciÃ³n, se validÃ³ la importancia de utilizar convenciones estÃ¡ndar (Semantic Versioning, Conventional Commits) y un flujo de trabajo organizado (GitFlow).
  * Los assumptions y Hypothesis Statements iniciales sobre la necesidad de una presentaciÃ³n clara y responsiva de los planes de suscripciÃ³n han sido abordados, permitiendo que los usuarios (tanto laboratorios como empresas) comprendan rÃ¡pidamente la propuesta de valor del producto.
* **Recomendaciones:**
  * Para los siguientes sprints, se recomienda continuar fortaleciendo la integraciÃ³n continua y el despliegue automÃ¡tico (CI/CD) para agilizar la entrega de valor, especialmente en la Web Application y los RESTful Web Services.
  * Se sugiere realizar validaciones periÃ³dicas con usuarios reales (Validation Interviews) a medida que se implementen los features principales de la aplicaciÃ³n para confirmar que resuelven los Problem Statements definidos.

## Video About-the-Team

# BibliografÃ­a

* Atlassian. (n.d.). *Jira Software*. Recuperado de https://www.atlassian.com/software/jira
* GitHub. (n.d.). *GitHub Pages*. Recuperado de https://pages.github.com/
* Google. (n.d.). *Google HTML/CSS Style Guide*. Recuperado de https://google.github.io/styleguide/htmlcssguide.html
* JetBrains. (n.d.). *WebStorm*. Recuperado de https://www.jetbrains.com/webstorm/
* Microsoft. (n.d.). *TypeScript*. Recuperado de https://www.typescriptlang.org/
* O'Reilly. (n.d.). *Lean UX, 3rd Edition*. 
* Vue.js. (n.d.). *Vue Style Guide*. Recuperado de https://vuejs.org/v2/style-guide/
* W3Schools. (n.d.). *HTML Style Guide and Coding Conventions*. Recuperado de https://www.w3schools.com/html/html5_syntax.asp

# Anexos

## Anexo A. Videos de Exposiciones

En este anexo se incluirÃ¡n de forma progresiva los hipervÃ­nculos a los videos de exposiciÃ³n para cada entrega del proyecto.

* **Entrega AV1 (Sprint 1):** Video de ExposiciÃ³n AV1 - Microsoft Stream (https://web.microsoftstream.com/video/...) / YouTube (https://youtube.com/...)
* **Entrega TB1:** *(Pendiente)*
* **Entrega AV2:** *(Pendiente)*
* **Entrega TB2:** *(Pendiente)*

