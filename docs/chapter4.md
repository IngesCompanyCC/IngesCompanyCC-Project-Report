# Capítulo IV: Product Design

En este capítulo se presenta el diseño de DoofPlus a partir de las User Stories y el Impact Map del capítulo III: las guías de estilo, la arquitectura de información, el diseño del Website y de la Web Application, la arquitectura de software orientada al dominio, el diseño orientado a objetos y el diseño de la base de datos. Las decisiones responden a las exigencias de los laboratorios farmacéuticos y de la DIGEMID sobre la calidad, la trazabilidad y la integridad de los registros.

## 4.1. Style Guidelines

En esta sección se establecen las bases visuales y de comunicación para DoofPlus, centralizando los recursos que serán de uso común para todo el equipo de desarrollo y diseño. El objetivo es garantizar una presentación consistente, inclusiva y enfocada a través de todos los puntos de contacto del producto, facilitando la mantenibilidad y escalabilidad del código y del diseño a lo largo del ciclo de vida del proyecto.

### 4.1.1. General Style Guidelines

Para asegurar una interfaz coherente y alineada con los estándares que exige la industria farmacéutica, el sistema de diseño de DoofPlus toma como base **Material Design**, el lenguaje de diseño indicado para el proyecto. En la Web Application se implementa con **Vite** usando un tema basado en **Material Design**, y en el Website con ***HTML5*** y ***CSS3*** respetando los mismos tokens de color, tipografía y espaciado.

#### Branding:
El logotipo escogido para DoofPlus comunica de forma directa y sintética la propuesta de valor del sistema: la integración de la automatización industrial con la rigurosidad del control farmacéutico. Para la sección de Branding, el análisis de los componentes de dicho logotipo se desglosa de la siguiente manera:

<p align="center">
  <img src="../assets/img/chapter4/doofplus-logo.png" alt="DoofPlus Logo" width="350px" />
</p>

- **Maquinaria y cinta transportadora:** la silueta industrial con cápsulas en la cinta representa el núcleo operativo de la plataforma: la manufactura y la conexión IoT en la línea de producción.
- **Escudo de verificación:** representa el aseguramiento de la calidad y transmite protección de los datos y cumplimiento de las BPM exigidas por DIGEMID.
- **Construcción tipográfica y cromática:** el nombre DoofPlus usa una fuente sans-serif sólida; “Doof” en azul pizarra oscuro evoca la base tecnológica y “Plus” en verde marino (#0D9488) conecta con la salud y la validación de procesos.

Para su uso en las interfaces se definieron dos versiones horizontales del logotipo: a color, para fondos claros (barra de navegación del Website y de la Web Application), y en blanco, para fondos oscuros (footer del Website y barras de color). Ambas se usan como componentes reutilizables en Figma.

| Versión a color (fondos claros) | Versión blanca (fondos oscuros) |
| :---: | :---: |
| <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-color.png" width="300"> | <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-white.png" width="300" style="background:#0F172A"> |

#### Typography
La tipografía de DoofPlus es Inter, una fuente sans-serif moderna y legible con pesos de Thin a Black y sus versiones itálicas. Su diseño garantiza una lectura clara de datos numéricos críticos, tablas de lotes y gráficos de telemetría tanto en monitores como en dispositivos móviles. La jerarquía tipográfica es la siguiente:

![Typography](../assets/img/chapter4/typography-guide.png)

| **Elemento** | **Tamaño (desktop)** | **Peso** | **Uso** |
| --- | --- | --- | --- |
| H1 – Título principal | 3rem (48 px), interlineado 1.1 | Semi Bold (600) | Título del hero del Website |
| H2 – Título de sección o pantalla | 2rem (32 px), interlineado 1.2 | Semi Bold (600) | Secciones del Website y títulos de pantalla |
| H3 – Título de tarjeta | 1.5rem (24 px), interlineado 1.3 | Semi Bold (600) | Tarjetas, paneles y diálogos |
| Body | 1rem (16 px), interlineado 1.45 | Regular (400) | Párrafos y tablas de datos |
| Label | 0.875rem (14 px) | Medium (500) | Etiquetas de formulario, botones y estados |
| Metadata | 0.75rem (12 px) | Regular (400) | Fechas, identificadores y notas |

#### Colors
La paleta de colores de DoofPlus está diseñada para evocar pulcritud clínica, seguridad tecnológica y control sobre los procesos. Se distribuye en cuatro categorías; los colores funcionales se acompañan siempre de un ícono y de un texto, de modo que el estado nunca se comunica solo con color:

| **Token** | **Valor** | **Categoría** | **Uso** |
| --- | --- | --- | --- |
| --primary-color | #0F766E (verde azulado) | Principal | Botones y acciones principales (texto blanco) |
| --accent-color | #0D9488 (verde marino) | Principal | Hover, anillos de foco y detalles decorativos |
| --secondary-color | #0F172A (azul pizarra oscuro) | Principal | Títulos, texto principal y barras oscuras |
| --tertiary-color | #64748B (gris pizarra) | Soporte | Texto secundario y placeholders |
| --bg-light | #F8FAFC | Soporte | Fondo de la aplicación y de secciones |
| --bg-highlight | #F0FDFA | Soporte | Paneles destacados |
| --card-bg | #FFFFFF | Soporte | Tarjetas, tablas y diálogos |
| --border-color | #E2E8F0 | Soporte | Bordes de 1 px |
| --success-color | #4CAF50 (texto #25632A sobre #EDF7ED) | Funcional | Confirmaciones, lotes liberados, controles aprobados |
| --warning-color | #FFC107 (texto #805700 sobre #FFF8DE) | Funcional | Advertencias, cuarentena y pendientes |
| --error-color | #F44336 (texto #B42318 sobre #FFF0EE) | Funcional | Errores, rechazos, OOS y bloqueos |
| --qa-color | #0F766E | Entorno | Identifica el entorno QA/QC en el inicio de sesión |
| --production-color | #1E40AF | Entorno | Identifica el entorno de Producción |
| --admin-color | #334155 | Entorno | Identifica el entorno de Administración |

![paleta-colores](../assets/img/chapter4/color-palette.png)

#### Spacing

El espaciado se rige por la cuadrícula de 8 puntos de Material Design, que asegura un ritmo vertical constante y facilita la lectura rápida de reportes técnicos:

- **Márgenes:** 64 px en las páginas públicas (Website e inicio de sesión) y 32 px como margen interior del área de trabajo de la Web Application.
- **Espacio entre elementos:** 24 px de separación (gutter) entre columnas y tarjetas, y 16 px de padding interno en los elementos.
- **Geometría:** radio de 8 px en controles, 16 px en tarjetas y forma de píldora en botones del Website; bordes de 1 px (#E2E8F0).
- **Área táctil mínima:** 48 x 48 px en botones y controles, especialmente en mobile.

#### Tono de Comunicación

La voz y el tono de DoofPlus están diseñados para reflejar la misma fiabilidad e inmutabilidad que su arquitectura de software, conectando directamente con Supervisores de Producción, Especialistas QA/QC y auditores externos.

- ***Tono:*** Formal, corporativo y analítico. Proyecta dominio absoluto sobre las normativas de calidad (BPM, Data Integrity), manteniendo el rigor que exige la industria farmacéutica.
- ***Actitud:*** Resolutiva y proactiva. La comunicación se enfoca en la eficiencia operativa (“Trazabilidad automatizada”, “Monitoreo en tiempo real”) y en la alerta temprana de desviaciones.
- ***Lenguaje:*** Técnico y preciso. Se utiliza terminología propia del dominio farmacéutico y tecnológico (telemetría, IoT, Cuarentena, Fórmulas Maestras, Audit Trail, DIGEMID) asumiendo que el usuario es un profesional capacitado en estas áreas.
- ***Voz:*** Experta e inquebrantable. Posiciona a DoofPlus como el puente definitivo entre la maquinaria industrial y el cumplimiento normativo, siendo una fuente de verdad única y segura para las auditorías.

### 4.1.2. Web Style Guidelines

Las directrices de estilo web de DoofPlus explican e ilustran las decisiones sobre los estándares visuales y de interacción para las interfaces web responsivas de la plataforma. Nuestro objetivo es crear una experiencia visual que refleje la misión del sistema: digitalizar el control de calidad farmacéutico y la telemetría industrial mediante un diseño limpio, riguroso y altamente funcional, minimizando la carga cognitiva en la planta de producción.

1. Layout
- Sistema de Grid: Utilizamos un diseño de cuadrícula fluida de 12 columnas para garantizar que el contenido de DoofPlus se adapte perfectamente a cualquier resolución de pantalla. Este enfoque permite que los dashboards de telemetría, las tablas de trazabilidad de lotes y los planes de suscripción se ajusten dinámicamente, manteniendo la jerarquía visual requerida en un entorno industrial.
- Headers y Footers (encabezados y pies de página): El encabezado es fijo en la parte superior, proporcionando acceso constante a la navegación principal, alertas de desviaciones críticas y a las acciones de sesión. El pie de página centraliza los enlaces normativos, políticas de privacidad, términos de servicio, copyright y contacto de soporte.
- Cards y Data Tables: Las tarjetas (Cards) estructuran la información de los módulos del sistema (IoT, Compliance, Auditorías) en el Website. Para la aplicación web, el componente central son las Tablas de Datos (Data Tables), diseñadas con bordes sutiles y alternancia de color (Zebra striping) para facilitar la lectura de expedientes de lotes y registros inmutables (Audit Trail) sin fatiga visual.

2. Responsive Design
- Desktop: Orientado al Jefe de Producción y al Administrador. La navegación principal es visible en una barra lateral o superior. El contenido aprovecha múltiples columnas para desplegar gráficos unificados de rendimiento y tablas complejas de fórmulas maestras en monitores de estaciones de trabajo.
- Tablet: Orientado al Especialista QA/QC en la línea de producción. La cuadrícula se adapta a un diseño compacto. Los botones, selectores de estado y campos táctiles se ajustan a un área mínima de 48x48 píxeles para facilitar la interacción de operarios que utilicen guantes de nitrilo o equipos de protección.
- Mobile: Optimizado para la lectura rápida y atención de emergencias. El diseño colapsa a una sola columna y la navegación se agrupa en un menú hamburguesa. Los elementos interactivos priorizan la visualización de notificaciones de urgencia.

3. Interaction Design
- Botones: las llamadas a la acción (CTA) usan el color primario (#0F766E) con texto blanco; las acciones secundarias usan botones outlined. Los estados hover, focus (con contorno visible para teclado), active y disabled están definidos para asegurar la accesibilidad. Las acciones destructivas o de rechazo de lotes usan el color de error y piden confirmación.
- Formularios y Validaciones: Los formularios marcan los campos obligatorios con un asterisco y validan los datos antes del envío. Ante un error, el campo se resalta con el color de error, se muestra un mensaje descriptivo debajo y un aviso general en la parte superior del formulario, conservando los datos ingresados.
- Selector de idioma: componente EN/ES (SelectButton de PrimeVue) visible en todas las pantallas públicas y autenticadas; inglés (en-US) es el idioma por defecto.

4. Images and Icons
- Imágenes: En el Website se utilizan fotografías de alta calidad, optimizadas en formato WebP, que evocan el entorno de manufactura: líneas de producción automatizadas, laboratorios esterilizados y operarios utilizando tablets. Refuerzan el mensaje de tecnología aplicada al cumplimiento BPM.
- Íconos: Se emplea la biblioteca Material Symbols (variante Rounded) para un estilo lineal y minimalista. Estos íconos ofrecen una guía visual rápida para representar servicios críticos: un microchip o antena para la telemetría, un escudo con un símbolo de check para el cumplimiento regulatorio y cápsulas o maquinaria para la gestión de producción.

5. Repositorio Central
- Organización: el proyecto de la Web Application en Vue 3 se organiza por bounded context dentro de `src`: `iam`, `organizations`, `subscriptions`, `manufacturing`, `monitoring` y `quality`, cada uno con las capas `domain`, `application`, `infrastructure` y `presentation`. Los elementos comunes (layout, toolbar, footer, selector de idioma y cliente REST base) se ubican en `src/shared`; los estilos globales y los design tokens de color, tipografía y espaciado, en `src/styles.css`; las imágenes e íconos, en `public/images`, y las traducciones, en `public/i18n` (`en.json`, idioma por defecto, y `es.json`). El Website aplica los mismos tokens en su hoja de estilos.
- Versionado: Se utiliza Git gestionado desde GitHub como sistema de control de versiones central. El equipo aplica GitFlow y Conventional Commits para gestionar los cambios en el código, lo que ayuda a garantizar que el entorno de desarrollo mantenga una integración continua y una versión estable del producto en todo momento. Además, se aplica Semantic Versioning para darle un orden a las versiones.


## 4.2. Information Architecture

La arquitectura de la información de DoofPlus establece las decisiones que dirigen la organización del contenido en las experiencias web, lo que está orientado a que tanto los visitantes del sector comercial como los usuarios operativos, que forman parte de los segmentos objetivos, se adapten con facilidad a la funcionalidad del producto y puedan encontrar lo que necesitan sin esfuerzo.

### 4.2.1. Organization Systems

Para estructurar los grupos de información de la plataforma se aplican los siguientes sistemas de organización y esquemas de categorización:

- **Organización jerárquica (visual hierarchy):** en el Website el contenido va de mayor a menor impacto: propuesta de valor (Home), un espacio de trabajo por segmento (Your workspace), servicios, características, video, beneficios, planes, la startup y su equipo, testimonios, preguntas frecuentes y, al final, la llamada a la acción con el acceso de cada segmento.
- **Organización secuencial (step-by-step):** en el ingreso a la Web Application (elección del entorno → inicio de sesión → 2FA) y en los flujos regulados, como la recepción de materias primas (recepción → muestreo → inspección → aprobado o rechazado) y la liberación de un lote (cuarentena → evaluación de resultados → firma electrónica).
- **Organización matricial:** en los dashboards, que cruzan lotes, variables de equipos e indicadores de cumplimiento.
- **Categorización cronológica:** en el audit trail, la línea de tiempo del lote y la telemetría IoT, ordenados por fecha y hora.
- **Categorización por tópicos:** en el repositorio documental (protocolos, SOP, especificaciones) y en la navegación por módulos.
- **Categorización por audiencia:** en el Website (llamadas a la acción para QA/QC y para Producción) y en la Web Application (entornos de calidad y de producción según el rol).

### 4.2.2. Labeling Systems

Para asegurar la simplicidad y evitar la confusión de los visitantes y usuarios, la representación de los datos se realiza mediante etiquetas que utilizan el mínimo número de palabras posibles, lo que representa la terminología técnica de la industria farmacéutica:

- Website: las etiquetas de la barra de navegación usan asociaciones estándar de una o dos palabras: "Home", "Features" (módulos técnicos), "Benefits", "Plans" (planes y precios) y "About Us", además de "Sign in" (inicio de sesión) y "Get Started" (lleva a la llamada a la acción final, con el acceso de cada segmento). En español latinoamericano se muestran como "Inicio", "Características", "Beneficios", "Planes", "Nosotros", "Iniciar sesión" y "Comenzar".
- Web Application: las etiquetas operativas siguen el Ubiquitous Language de la sección 2.5 y se definen en inglés, idioma por defecto, con su traducción al español: "Batches" (Lotes) agrupa el historial de fabricación, "Raw materials" (Materias primas) la recepción y cuarentena de insumos, "Deviations" y "CAPA plans" (Desviaciones y planes CAPA) las incidencias y su corrección, y "Audit trail" (registro de auditoría) el registro inmutable de cambios. Los estados que se muestran en pantalla son los definidos en el modelo de dominio (por ejemplo, Planned, In progress, On hold, Release requested, Released y Rejected para los lotes).

### 4.2.3. SEO Tags and Meta Tags

Para el posicionamiento y la indexación correcta de las principales páginas de la experiencia web, se asignan los siguientes valores mínimos exigidos:

Valores para el Website (sitio estático indexable):

| **Página** | **Title** | **Meta description** | **Meta keywords** | **Author** |
| --- | --- | --- | --- | --- |
| Website (index.html) | DoofPlus \| Pharmaceutical Quality & Batch Traceability Platform | SaaS platform that centralizes quality documentation, batch traceability, deviations and IoT data for pharmaceutical laboratories (GMP/DIGEMID). | pharmaceutical quality management, batch traceability, GMP, DIGEMID, CAPA, audit trail, IoT | IngesCompanyCC |

Valores para las vistas principales de la Web Application. Al ser una SPA, el título se actualiza en cada cambio de ruta con la propiedad `meta.title` de las rutas de Vue Router y la descripción con un guard global del router; keywords y author se definen una vez en `index.html` con los mismos valores del Website:

| **Vista de la Web Application** | **Title** | **Meta description** |
| --- | --- | --- |
| Choose your environment | Sign in \| DoofPlus | Choose the QA/QC, Production or Administration environment of DoofPlus. |
| Contact us | Contact us \| DoofPlus | Send your questions about DoofPlus and its plans to the IngesCompanyCC team. |
| Sign in (por entorno) | Sign in to {environment} \| DoofPlus | Secure access to DoofPlus with two-factor authentication. |
| Quality dashboard | Quality Dashboard \| DoofPlus | Pending batches, open deviations and quality indicators. |
| Production dashboard | Production Console \| DoofPlus | Active production orders, batch status and alerts. |
| Batch detail | Batch {batchNumber} \| DoofPlus | Complete traceability timeline of a pharmaceutical batch. |
| Deviations & CAPA | Deviations & CAPA \| DoofPlus | Register, investigate and close deviations with CAPA. |

### 4.2.4. Searching Systems

Para que los usuarios no se pierdan en el volumen de información generado por la producción y la telemetría, la Web Application ofrece:

- **Búsqueda global:** barra en el encabezado para consultar por identificador exacto (número de lote, código de documento o de sensor).
- **Filtros combinados:** por estado del lote (Planned, In progress, On hold, Release requested, Released, Rejected), rango de fechas de fabricación, severidad de la desviación (Minor, Major, Critical) y tipo de documento.
- **Presentación de resultados:** tabla de datos de PrimeVue (`DataTable` con paginador y ordenamiento) paginada y ordenable que resalta la coincidencia y muestra el estado actual de cada registro; si no hay resultados se muestra un mensaje con sugerencias.

### 4.2.5. Navigation Systems

Las acciones y técnicas que guían a los usuarios son:

1. ***Website:***
- **Navegación por anclas:** barra superior fija con enlaces a cada sección y desplazamiento suave; en mobile, menú hamburguesa que se abre como overlay.
- **Llamadas a la acción por segmento:** la sección "Your workspace" presenta una tarjeta por segmento, y la llamada a la acción final ofrece un botón por segmento que lleva directamente al inicio de sesión de su entorno en la Web Application (QA/QC o Producción). El enlace "Sign in" de la barra lleva a la elección de entorno, y "Register your laboratory" al registro de la organización.
- **Páginas secundarias:** "Terms of Service" y "Privacy Policy", enlazadas desde el footer. El formulario "Contact us" está en la Web Application, junto al inicio de sesión; el footer del Website muestra los datos de contacto y las redes sociales.

2. ***Web Application:***
- **Ingreso por entorno:** la elección de entorno (QA/QC, Production o Administration) precede al inicio de sesión; cada entorno se reconoce por su color, ícono y módulos.
- **Navegación global:** barra lateral (sidebar) con los módulos del entorno. QA/QC: Quality overview, Quality indicators, Quality documents, Deviations, CAPA plans, Batch release, Analytical results, Audits, Audit trail, Regulatory reports y Tasks & collaboration. Production: Production overview, Production orders, Products & formulas, Batches, Raw materials, Equipment & sensors, IoT overview, Incidents y Tasks & collaboration. Administration: Administration overview, Users & profiles, Organizations, Subscriptions & payments, Audit trail y Tasks & collaboration.
- **Barra superior:** búsqueda global, selector de idioma y avatar del usuario, que abre "Profile & preferences".
- **Navegación contextual:** breadcrumbs para ubicar al usuario dentro de un expediente y regresar a vistas generales.

3. **Navegación por teclado y accesibilidad:** orden de tabulación lógico, foco visible y atributos ARIA en menús y diálogos.

## 4.3. Landing Page UI Design

La propuesta de UI del Website traduce las decisiones de las secciones anteriores: la jerarquía visual ordena el contenido desde la propuesta de valor hasta la presentación de la startup; las etiquetas (Home, Features, Benefits, Plans, About Us) siguen el Labeling System; la barra fija con anclas, las llamadas a la acción por segmento y el enlace "Sign in" implementan el Navigation System; y el Design System de la sección 4.1 (Inter, verde azulado #0F766E, azul pizarra #0F172A y Material Symbols Rounded) se aplica de forma consistente con la Web Application. El Website atiende las user stories US01 a US05 y US44 a US49. Los wireframes y mock-ups se elaboraron en Figma y están disponibles en el archivo de diseño de DoofPlus: https://www.figma.com/design/YYtMivGL4tZEsLacA8HQmN/Aplicaciones-Web?node-id=72-57358.

Las secciones se presentan en el siguiente orden, que prioriza la información que el visitante necesita para decidir (qué es DoofPlus, qué ofrece y cuánto cuesta), después presenta a la startup y termina con la llamada a la acción final:

| N.° | Sección | Contenido | User stories |
| --- | --- | --- | --- |
| 1 | Home | Propuesta de valor, botón "Get Started" y enlace "View plans" | US01 |
| 2 | Your workspace | Una tarjeta por segmento (QA/QC y Production) y el aviso "New to DoofPlus?" con el botón "Get started" | US48 |
| 3 | Services | Cuatro servicios principales con ícono, descripción y enlace "Learn more" | US02 |
| 4 | Features | Panel de lecturas IoT y acordeón con las funcionalidades clave | US02 |
| 5 | About the product (video) | Video promocional con sus capítulos | US49 |
| 6 | Benefits | Cuatro resultados medibles para el laboratorio | US02 |
| 7 | Plans | Planes Standard Lab y Enterprise con selector mensual/anual | US03 |
| 8 | About Us | Misión y visión de IngesCompanyCC | US45 |
| 9 | Our Team | Integrantes del equipo y Video About-the-Team | US45 |
| 10 | Testimonials | Opiniones de clientes | US01 |
| 11 | FAQ | Preguntas frecuentes en acordeón | US05 |
| 12 | Call to action | Acceso al inicio de sesión de cada segmento y al registro del laboratorio | US48, US50 |
| 13 | Footer | Logotipo blanco, redes sociales, enlaces, datos de contacto, términos, privacidad y selector de idioma | US46, US47 |

El formulario de contacto no forma parte del Website: el visitante lo encuentra en la Web Application, junto al inicio de sesión (sección 4.4). En el Website, los datos de contacto y las redes sociales se muestran en el footer.

### 4.3.1. Landing Page Wireframe

Los wireframes son de baja fidelidad: se presentan en escala de grises, los párrafos se representan con barras y las imágenes con recuadros grises; solo se conservan los títulos, las etiquetas de los botones y los íconos, que definen la estructura. Así se valida la disposición y el flujo de la información sin decidir aún colores ni contenido final.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** barra superior fija con el logotipo, los enlaces Home, Features, Benefits, Plans y About Us, el selector de idioma, "Sign in" y "Get Started". Debajo, el título de la propuesta de valor, un párrafo breve, los dos botones y la imagen del producto con la tarjeta de estado de un lote.

![Landing Page Wireframe · Home](../assets/img/chapter4/landing-page/wireframes/desktop/01-home.png)

**Your workspace:** dos tarjetas, una por segmento (QA/QC y Production), con su etiqueta y su descripción; debajo, el aviso para los laboratorios nuevos con el botón "Get started".

![Landing Page Wireframe · Your workspace](../assets/img/chapter4/landing-page/wireframes/desktop/02-workspace.png)

**Services:** cuatro tarjetas en una fila, cada una con ícono, título, descripción y enlace "Learn more".

![Landing Page Wireframe · Services](../assets/img/chapter4/landing-page/wireframes/desktop/03-services.png)

**Features:** panel de lecturas a la izquierda y acordeón a la derecha; solo un elemento permanece abierto a la vez.

![Landing Page Wireframe · Features](../assets/img/chapter4/landing-page/wireframes/desktop/04-features.png)

**About the product (video):** título, descripción, reproductor de video y la lista de capítulos.

![Landing Page Wireframe · Video](../assets/img/chapter4/landing-page/wireframes/desktop/05-about-the-product-video.png)

**Benefits:** cuatro tarjetas con una cifra destacada y su explicación.

![Landing Page Wireframe · Benefits](../assets/img/chapter4/landing-page/wireframes/desktop/06-benefits.png)

**Plans:** selector mensual/anual y dos tarjetas de plan con precio y lista de características.

![Landing Page Wireframe · Plans](../assets/img/chapter4/landing-page/wireframes/desktop/07-plans.png)

**About Us:** texto de presentación con etiquetas y, a la derecha, las tarjetas de misión y visión.

![Landing Page Wireframe · About Us](../assets/img/chapter4/landing-page/wireframes/desktop/08-about-us.png)

**Our Team:** cuadrícula de tarjetas con foto, nombre, rol y descripción, y debajo el reproductor del Video About-the-Team.

![Landing Page Wireframe · Our Team](../assets/img/chapter4/landing-page/wireframes/desktop/09-our-team.png)

**Testimonials:** tres tarjetas con calificación, cita, nombre y cargo.

![Landing Page Wireframe · Testimonials](../assets/img/chapter4/landing-page/wireframes/desktop/10-testimonials.png)

**FAQ:** lista de preguntas en acordeón.

![Landing Page Wireframe · FAQ](../assets/img/chapter4/landing-page/wireframes/desktop/11-faq.png)

**Call to action:** banda final con el título, los botones de inicio de sesión de cada segmento y el enlace para registrar un laboratorio nuevo.

![Landing Page Wireframe · Call to action](../assets/img/chapter4/landing-page/wireframes/desktop/12-call-to-action.png)

**Footer:** logotipo, redes sociales, columnas de enlaces (producto, empresa, contacto y legal), derechos de autor y selector de idioma.

![Landing Page Wireframe · Footer](../assets/img/chapter4/landing-page/wireframes/desktop/13-footer.png)

**Páginas secundarias (Desktop):** el footer enlaza "Terms of Service" y "Privacy Policy".

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

En mobile las mismas secciones se apilan en una sola columna, en el mismo orden; las tarjetas ocupan todo el ancho y la navegación se agrupa en un menú hamburguesa que se abre como overlay.

![Landing Page Wireframe · Mobile (1)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-1.png)

![Landing Page Wireframe · Mobile (2)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-2.png)

![Landing Page Wireframe · Mobile (3)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-3.png)

| Menu open |
| :---: |
| ![Menu open](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-menu-open.png) |

### 4.3.2. Landing Page Mock-up
Los mock-ups aplican sobre los wireframes el Design System de la sección 4.1 y se presentan en inglés (en-US), idioma por defecto; el selector "EN / ES" de la barra de navegación cambia todos los textos al español latinoamericano (es-419). Se aplican además criterios de diseño inclusivo: contraste alto entre texto y fondo, botones con texto explícito, estados que no dependen solo del color y áreas táctiles de 48 px.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** la barra blanca muestra el logotipo a color, los enlaces Home, Features, Benefits, Plans y About Us, el selector de idioma, "Sign in" (abre la elección de entorno de la Web Application) y el botón "Get Started". El hero presenta el título "The Future of Pharmaceutical Quality Management", una descripción breve, el botón "Get Started" (desplaza a la llamada a la acción final) y "View plans" (desplaza a Plans), junto a la imagen de la planta con la tarjeta "Ready for release" del lote B-26038.

![Landing Page Mock-up · Home](../assets/img/chapter4/landing-page/mockups/desktop/01-home.png)

**Your workspace:** "A workspace for each role" presenta una tarjeta por segmento: "For QA/QC Specialists" y "For Production Supervisors", con lo que cada uno hace en su entorno. El aviso "New to DoofPlus?" explica que el administrador registra la organización, elige el plan e invita al equipo, y su botón "Get started" lleva a la llamada a la acción final.

![Landing Page Mock-up · Your workspace](../assets/img/chapter4/landing-page/mockups/desktop/02-workspace.png)

**Services:** "Real-Time IoT Monitoring", "Automated BPM Compliance", "Immutable Traceability" y "Digital Batch Management", cada uno con su ícono, una descripción breve y el enlace "Learn more", que lleva a Features.

![Landing Page Mock-up · Services](../assets/img/chapter4/landing-page/mockups/desktop/03-services.png)

**Features:** el panel muestra las lecturas en vivo de un equipo (temperatura, humedad y presión diferencial) y el acordeón presenta la integración de telemetría IoT, el motor de cumplimiento GMP, las alertas de desviación y el panel de indicadores.

![Landing Page Mock-up · Features](../assets/img/chapter4/landing-page/mockups/desktop/04-features.png)

**About the product (video):** "See DoofPlus in action" incrusta el video promocional de tres minutos con sus capítulos: por qué DoofPlus, de la materia prima al registro de lote, de la alerta IoT a la CAPA y la liberación con firma electrónica.

![Landing Page Mock-up · Video](../assets/img/chapter4/landing-page/mockups/desktop/05-about-the-product-video.png)

**Benefits:** sobre fondo azul pizarra, cuatro cifras comunican los resultados: 80 % menos tiempo de preparación de auditorías, cero errores humanos en los registros, menos de 5 segundos para detectar una desviación y US$0 en servidores propios.

![Landing Page Mock-up · Benefits](../assets/img/chapter4/landing-page/mockups/desktop/06-benefits.png)

**Plans:** se comparan Standard Lab (US$199 al mes; hasta 5 dispositivos IoT y 10 usuarios) y Enterprise (US$599 al mes; dispositivos y usuarios ilimitados, multi-sede). El selector "Monthly / Annually" muestra la modalidad anual (US$1,990 y US$5,990), equivalente a dos meses gratis. El plan se elige al registrar el laboratorio en la Web Application.

![Landing Page Mock-up · Plans](../assets/img/chapter4/landing-page/mockups/desktop/07-plans.png)

**About Us:** presenta a IngesCompanyCC, la startup detrás de DoofPlus, con sus valores (trazabilidad, integridad de datos, cumplimiento regulatorio y tecnología abierta), su misión y su visión.

![Landing Page Mock-up · About Us](../assets/img/chapter4/landing-page/mockups/desktop/08-about-us.png)

**Our Team:** presenta a los integrantes de IngesCompanyCC: Marcelo Angulo, Yhoshua Cobades, Cristina Yarleque, Nestor Rojas y Rodolfo Zavaleta, con su foto, nombre, rol y descripción. Debajo se incrusta el Video About-the-Team, que resume el proceso de trabajo del equipo, la retrospectiva y el testimonio de cada integrante.

![Landing Page Mock-up · Our Team](../assets/img/chapter4/landing-page/mockups/desktop/09-our-team.png)

**Testimonials:** tres opiniones de profesionales de laboratorios farmacéuticos, con su calificación, nombre y cargo.

![Landing Page Mock-up · Testimonials](../assets/img/chapter4/landing-page/mockups/desktop/10-testimonials.png)

**FAQ:** preguntas sobre los entornos de cada segmento, el cumplimiento GMP, los sensores compatibles, el cambio o la cancelación del plan y la seguridad de la información, en un acordeón.

![Landing Page Mock-up · FAQ](../assets/img/chapter4/landing-page/mockups/desktop/11-faq.png)

**Call to action:** "Ready to modernize your pharmaceutical quality management?" cierra la página con un botón por segmento ("I'm a QA/QC Specialist · Sign in" e "I'm a Production Supervisor · Sign in"), que abre el inicio de sesión de su entorno, y el enlace "Register your laboratory", que abre el registro de la organización.

![Landing Page Mock-up · Call to action](../assets/img/chapter4/landing-page/mockups/desktop/12-call-to-action.png)

**Footer:** fondo azul pizarra con el logotipo blanco, el lema, las redes sociales (LinkedIn, GitHub, X, YouTube e Instagram), los enlaces de producto y de empresa, los datos de contacto (doofplus.inges@gmail.com, +51 (1) 234-5678, Lima, Perú), los enlaces "Terms of Service" y "Privacy Policy", el copyright de IngesCompanyCC y el selector de idioma.

![Landing Page Mock-up · Footer](../assets/img/chapter4/landing-page/mockups/desktop/13-footer.png)

**Páginas secundarias (Desktop):** "Terms of Service" y "Privacy Policy" presentan las condiciones de uso y el tratamiento de datos personales (US47), con un enlace para volver al Website.

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

La versión mobile mantiene el orden y el contenido de desktop en una sola columna. El menú hamburguesa abre un overlay con los enlaces de navegación, "Sign in", "Get Started" y el selector de idioma.

![Landing Page Mock-up · Mobile (1)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-1.png)

![Landing Page Mock-up · Mobile (2)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-2.png)

![Landing Page Mock-up · Mobile (3)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-3.png)

| Menu open |
| :---: |
| ![Menu open](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-menu-open.png) |

## 4.4. Web Applications UX/UI Design

Esta sección describe el diseño de experiencia (UX) e interfaz (UI) de la Web Application de DoofPlus. La aplicación se organiza en tres entornos, cada uno con su propio inicio de sesión, color y módulos: **QA/QC** (segmento 1, especialista de aseguramiento y control de calidad, persona María México), **Production** (segmento 2, jefe o supervisor de producción, persona Alberto Valle) y **Administration** (administrador del laboratorio, que registra la organización, invita a los usuarios y gestiona la suscripción). Los datos de ejemplo corresponden a un mismo caso: Laboratorios Andinos S.A.C., el lote B-26041 de Paracetamol 500 mg y la excursión de temperatura del sensor T-204 que origina la desviación DEV-26017, de modo que las pantallas de ambos segmentos cuentan una historia coherente. Los wireframes y mock-ups de escritorio y mobile se elaboraron en Figma y están disponibles en el archivo de diseño de DoofPlus: https://www.figma.com/design/YYtMivGL4tZEsLacA8HQmN/Aplicaciones-Web?node-id=72-57364.

Todas las pantallas comparten la misma estructura, derivada de la arquitectura de información de la sección 4.2: un sidebar con el logotipo, el entorno activo y sus módulos (navegación global); una barra superior con la búsqueda global, el selector de idioma y el avatar del usuario; y un área de contenido que ubica arriba los indicadores y abajo las tablas de detalle. Las acciones críticas, como aprobar, liberar o rechazar, se confirman con firma electrónica (US08), y los estados se muestran con los valores del modelo de dominio.

### 4.4.1. Web Applications Wireframes

Los wireframes de baja fidelidad definen la distribución de cada pantalla antes del diseño visual. Se agrupan por segmento y se presentan en montajes, en el mismo orden que los mock-ups de la sección 4.4.3, donde se explica cada pantalla.

**Desktop Web Browser · Compartido: elección de entorno, contacto, registro de la organización y perfil**

Incluye "Sign in · Choose your environment", "Organization registration" con su estado "RUC already registered" y "Account · Profile & preferences". El formulario "Contact us" se ubica en la misma zona pública que el inicio de sesión, con sus estados "Invalid data" e "Inquiry received".

![Web App Wireframes · Desktop · Shared](../assets/img/chapter4/web-application/wireframes/desktop-shared-environment-selection-onboarding-profile-montage-1.png)

| Contact us | Contact us · Invalid data | Contact us · Inquiry received |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/web-application/wireframes/contact/contact-us.png) | ![Contact us · Invalid data](../assets/img/chapter4/web-application/wireframes/contact/contact-us-invalid-data.png) | ![Contact us · Inquiry received](../assets/img/chapter4/web-application/wireframes/contact/contact-us-inquiry-received.png) |

**Desktop Web Browser · Segmento 1: Especialista QA/QC**

Incluye el inicio de sesión del entorno QA/QC con sus estados (credenciales inválidas, 2FA y acceso no autorizado) y los módulos Quality overview, Quality indicators, Quality documents, Analytical results, Deviation report & detail, CAPA plan, Batch release, Audits & findings, Audit trail, Regulatory reports y Tasks & collaboration.

![Web App Wireframes · Desktop · QA/QC (1)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-1.png)

![Web App Wireframes · Desktop · QA/QC (2)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-2.png)

![Web App Wireframes · Desktop · QA/QC (3)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-3.png)

![Web App Wireframes · Desktop · QA/QC (4)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-4.png)

![Web App Wireframes · Desktop · QA/QC (5)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-5.png)

**Desktop Web Browser · Segmento 2: Jefe o Supervisor de Producción**

Incluye el inicio de sesión del entorno de Producción con sus estados y los módulos Production overview, Products & master formulas, Production order & master formula, Batches (y su estado "Batch not created"), Batch detail & traceability, Batch IoT evidence, Raw-material receipt, Equipment & IoT devices, IoT overview y Equipment & sensor detail.

![Web App Wireframes · Desktop · Production (1)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-1.png)

![Web App Wireframes · Desktop · Production (2)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-2.png)

![Web App Wireframes · Desktop · Production (3)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-3.png)

![Web App Wireframes · Desktop · Production (4)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-4.png)

**Desktop Web Browser · Administrador del laboratorio**

Incluye el inicio de sesión del entorno de Administración y los módulos Administration overview, Users & profiles, Invite user y Subscriptions & payments.

![Web App Wireframes · Desktop · Administration (1)](../assets/img/chapter4/web-application/wireframes/desktop-laboratory-administrator-montage-1.png)

![Web App Wireframes · Desktop · Administration (2)](../assets/img/chapter4/web-application/wireframes/desktop-laboratory-administrator-montage-2.png)

**Mobile Web Browser**

En mobile se priorizan las tareas que se realizan fuera del escritorio: la elección de entorno y el inicio de sesión, la bandeja de tareas, la revisión y firma de aprobaciones y la consulta de lotes para QA/QC, y el monitoreo IoT, la consulta de lotes y el reporte de incidencias desde planta para Producción.

![Web App Wireframes · Mobile · Shared](../assets/img/chapter4/web-application/wireframes/mobile-shared-environment-selection-montage-1.png)

| Contact us | Contact us · Invalid data | Contact us · Inquiry received |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/web-application/wireframes/contact/contact-us-mobile.png) | ![Contact us · Invalid data](../assets/img/chapter4/web-application/wireframes/contact/contact-us-mobile-invalid-data.png) | ![Contact us · Inquiry received](../assets/img/chapter4/web-application/wireframes/contact/contact-us-mobile-inquiry-received.png) |

![Web App Wireframes · Mobile · QA/QC (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Web App Wireframes · Mobile · QA/QC (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-2.png)

![Web App Wireframes · Mobile · Production (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-1.png)

![Web App Wireframes · Mobile · Production (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-2.png)

![Web App Wireframes · Mobile · Administration](../assets/img/chapter4/web-application/wireframes/mobile-laboratory-administrator-montage-1.png)

### 4.4.2. Web Applications Wireflow Diagrams

Los Wireflow Diagrams combinan los wireframes con las acciones del usuario para representar la secuencia de pantallas que lo llevan a cumplir un objetivo. Para cada segmento se definieron seis user goals, basados en sus user stories, y uno para el visitante del Website (VI-1), que envía una consulta desde el formulario "Contact us" de la Web Application. Cada diagrama muestra el user goal, la persona, el camino principal y los puntos de decisión que desvían el flujo hacia una pantalla de error o de bloqueo. Los diagramas se elaboraron en FigJam y están disponibles en el tablero de Wireflows y User Flows: https://www.figma.com/board/WxYyDGMJ42w7w7yQNNnGNN.

#### Segmento 1 – Especialista de Aseguramiento y Control de Calidad (QA/QC)

**User Goal QA-1:** Ingresar a DoofPlus y acceder al entorno QA/QC (US06, US07).

Como especialista QA/QC, quiero ingresar con mis credenciales y confirmar mi identidad para revisar mis pendientes de calidad. María México elige "Sign in" en el Website, selecciona el entorno QA/QC, ingresa su correo y contraseña y confirma el código 2FA.

Flujo: Home → Choose your environment → Sign in · QA/QC → Two-factor authentication → Quality overview.

![Wireflow QA-1](../assets/img/chapter4/web-application/wireflows/wireflow-qa-1.png)

**User Goal QA-2:** Gestionar la documentación de calidad y sus protocolos (US09, US10, US12, US13, US42).

Como especialista QA/QC, quiero enviar a aprobación la nueva revisión de un documento controlado para mantenerlo vigente. María redacta la revisión 2.4 del SOP-QA-014, la envía a aprobación y sigue la tarea, que resuelve la Quality Manager (Lucía Paredes).

Flujo: Quality overview → Quality documents → Tasks & collaboration.

![Wireflow QA-2](../assets/img/chapter4/web-application/wireflows/wireflow-qa-2.png)

**User Goal QA-3:** Registrar una desviación y gestionar su CAPA (US18, US19, US20, US21).

Como especialista QA/QC, quiero documentar la causa raíz de una desviación y crear su plan CAPA para controlar el riesgo de calidad. María abre DEV-26017, registra la causa raíz y crea el plan CAPA con responsables y fechas.

Flujo: Quality overview → Deviation report & detail → CAPA plan.

![Wireflow QA-3](../assets/img/chapter4/web-application/wireflows/wireflow-qa-3.png)

**User Goal QA-4:** Planificar una auditoría y reunir sus evidencias (US27, US28, US29, US59).

Como especialista QA/QC, quiero planificar una auditoría y generar su paquete de evidencias para responder a los inspectores. María planifica la auditoría, revisa el audit trail del alcance y genera el paquete de evidencias.

Flujo: Audits & findings → Audit trail → Regulatory reports.

![Wireflow QA-4](../assets/img/chapter4/web-application/wireflows/wireflow-qa-4.png)

**User Goal QA-5:** Registrar y validar resultados analíticos (US11).

Como especialista QA/QC, quiero registrar las variables de un ensayo y que el sistema calcule el resultado para respaldar la liberación del lote. El sistema aplica la fórmula del protocolo y compara el resultado con la especificación.

Flujo: Quality overview → Analytical results → Batch release.

![Wireflow QA-5](../assets/img/chapter4/web-application/wireflows/wireflow-qa-5.png)

**User Goal QA-6:** Revisar la trazabilidad completa de un lote y liberarlo (US27, US54).

Como especialista QA/QC, quiero revisar todos los eventos atribuidos de un lote antes de firmar su liberación. María revisa el audit trail del lote B-26041 y firma la liberación.

Flujo: Quality overview → Audit trail → Batch release.

![Wireflow QA-6](../assets/img/chapter4/web-application/wireflows/wireflow-qa-6.png)

#### Segmento 2 – Jefe o Supervisor de Producción Farmacéutica

**User Goal PR-1:** Ingresar a DoofPlus y acceder al entorno de Producción (US06, US07).

Como jefe de producción, quiero ingresar con mis credenciales y confirmar mi identidad para supervisar las órdenes activas. Alberto Valle elige "Sign in", selecciona el entorno de Producción, ingresa sus credenciales y confirma el código 2FA.

Flujo: Home → Choose your environment → Sign in · Production → Two-factor authentication → Production overview.

![Wireflow PR-1](../assets/img/chapter4/web-application/wireflows/wireflow-pr-1.png)

**User Goal PR-2:** Gestionar la ejecución de un lote y consultar su historial (US35, US36, US57, US14, US15, US16).

Como jefe de producción, quiero emitir la orden de producción de un producto con fórmula maestra aprobada y registrar su lote para seguir su ejecución.

Flujo: Products & master formulas → Production order & master formula → Batches → Batch detail & traceability.

![Wireflow PR-2](../assets/img/chapter4/web-application/wireflows/wireflow-pr-2.png)

**User Goal PR-3:** Monitorear equipos y condiciones ambientales (US23, US24, US25, US26, US37).

Como jefe de producción, quiero seguir una alerta IoT hasta el equipo y la evidencia del lote en proceso para actuar a tiempo. Alberto abre la alerta del equipo EQ-COAT-02 y luego la evidencia IoT del lote.

Flujo: IoT overview → Equipment & sensor detail → Batch IoT evidence.

![Wireflow PR-3](../assets/img/chapter4/web-application/wireflows/wireflow-pr-3.png)

**User Goal PR-4:** Reportar una incidencia de producción desde planta (US56, US22).

Como jefe de producción, quiero reportar una incidencia desde mi celular cuando recibo una alerta de equipo para que Calidad la evalúe.

Flujo (Mobile): Alert details → Incident reporting → Incident submitted.

![Wireflow PR-4](../assets/img/chapter4/web-application/wireflows/wireflow-pr-4.png)

**User Goal PR-5:** Trazar un lote para investigar un evento (US15, US17, US58).

Como jefe de producción, quiero revisar la genealogía de un lote y la recepción de sus insumos para verificar su disposición de calidad. Si el lote del insumo sigue en cuarentena, Alberto hace seguimiento a la solicitud de aprobación en Tasks & collaboration.

Flujo: Batches → Batch detail & traceability → Raw-material receipt.

![Wireflow PR-5](../assets/img/chapter4/web-application/wireflows/wireflow-pr-5.png)

**User Goal PR-6:** Revisar reportes e indicadores de producción (US32, US33).

Como jefe de producción, quiero revisar los indicadores de producción y el historial de un lote para tomar decisiones sobre la planta.

Flujo: Production overview → Batches → Batch detail & traceability.

![Wireflow PR-6](../assets/img/chapter4/web-application/wireflows/wireflow-pr-6.png)

#### Visitante del Website

**User Goal VI-1:** Enviar una consulta al equipo de DoofPlus (US04).

Como visitante interesado, quiero enviar una consulta al equipo de DoofPlus para resolver mis dudas sobre la plataforma y sus planes. Desde el Website, el visitante elige "Sign in", abre "Contact us" en la elección de entorno, completa su nombre, su correo y su consulta y recibe la confirmación. Si el correo no es válido o la consulta está vacía, el formulario muestra el error bajo cada campo y el visitante los corrige.

Flujo: Website · Home → Choose your environment → Contact us → Inquiry received.

![Wireflow VI-1](../assets/img/chapter4/web-application/wireflows/wireflow-vi-1.png)

### 4.4.3. Web Applications Mock-ups

Los mock-ups aplican el Design System de la sección 4.1 sobre los wireframes y se presentan en inglés (en-US), idioma por defecto. Cada entorno se reconoce por su color: QA/QC en verde azulado (#0F766E), Production en azul (#1E40AF) y Administration en azul pizarra (#334155). A continuación se presentan las pantallas Desktop por grupo, con su propósito y las user stories que atienden.

#### Compartido: elección de entorno, contacto, registro de la organización y perfil

**Sign in · Choose your environment:** se abre desde "Sign in" en el Website. Presenta tres tarjetas, QA/QC, Production y Administration, cada una con su color, ícono y descripción; al elegir una se abre el inicio de sesión de ese entorno. Incluye el enlace "Register your organization" para los laboratorios que aún no tienen cuenta y "Contact us" para quienes tienen preguntas; la barra superior muestra también "Contact us" junto al selector de idioma.

![Mock-up · Choose your environment](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/sign-in-choose-your-environment.png)

**Contact us:** formulario de consultas del visitante (US04), en la zona pública de la Web Application, junto al inicio de sesión. El panel verde azulado presenta los temas de consulta (planes, demo guiada, cumplimiento DIGEMID y GMP, soporte) y los canales del equipo (correo, teléfono y oficina); el formulario pide nombre, correo de trabajo y consulta. Si el correo no es válido o la consulta está vacía, se muestra el error bajo cada campo ("Invalid data"); si el envío es correcto, se registra la consulta y se confirma su recepción ("Inquiry received"), con las opciones "Send another inquiry" y "Back to sign in". En mobile, la barra superior muestra solo el ícono de contacto.

| Contact us | Contact us · Invalid data | Contact us · Inquiry received |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/web-application/mockups/contact/contact-us.png) | ![Contact us · Invalid data](../assets/img/chapter4/web-application/mockups/contact/contact-us-invalid-data.png) | ![Contact us · Inquiry received](../assets/img/chapter4/web-application/mockups/contact/contact-us-inquiry-received.png) |

**Organization registration:** el administrador registra el laboratorio con su razón social, RUC, planta y datos de contacto, y elige su plan, que aparece preseleccionado cuando llega desde la sección Plans del Website (US50, US51). Si el RUC ya pertenece a otra organización, el formulario muestra el estado "RUC already registered" y no crea un duplicado.

| Organization registration | RUC already registered |
| :---: | :---: |
| ![Organization registration](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/organization-registration.png) | ![RUC already registered](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/organization-registration-ruc-already-registered.png) |

**Account · Profile & preferences:** se abre desde el avatar en cualquier entorno. Muestra los datos personales y el área del usuario, sus preferencias de notificación (correo y en la aplicación) y de idioma, y el estado del segundo factor; el rol y el acceso a la planta los asigna el administrador del laboratorio.

![Mock-up · Profile & preferences](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/account-profile-preferences.png)

#### Segmento 1 – Especialista QA/QC

**Sign in · QA/QC:** inicio de sesión del entorno QA/QC con correo corporativo y contraseña (US06). Si las credenciales no son válidas se muestra "Invalid credentials" (tras cinco intentos la cuenta se bloquea quince minutos); luego se solicita el código 2FA; si el rol del usuario no autoriza el entorno se muestra "Access not authorized" (US07).

| Sign in · QA/QC | Invalid credentials |
| :---: | :---: |
| ![Sign in QA/QC](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-invalid-credentials.png) |

| Two-factor authentication | Access not authorized |
| :---: | :---: |
| ![2FA](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-two-factor-authentication.png) | ![Access not authorized](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-access-not-authorized.png) |

**Quality overview:** dashboard de calidad (US31) con los lotes pendientes de liberación, las desviaciones abiertas, los planes CAPA vencidos y las alertas recientes, como la excursión de temperatura del sensor T-204.

![Mock-up · Quality overview](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-overview.png)

**Quality indicators:** indicadores de trazabilidad y de desviaciones (US33, US34), con los registros obligatorios faltantes por lote.

![Mock-up · Quality indicators](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-indicators.png)

**Quality documents:** repositorio de SOP y protocolos con su versión y estado (Draft, In review, Approved, Obsolete), y el flujo de aprobación (US09, US10, US12, US13). La aprobación corresponde a la Quality Manager (Lucía Paredes); si la autora de la revisión, María México, intenta aprobarla, la aprobación se bloquea, porque las BPM exigen un revisor independiente.

| Quality documents | Self-approval blocked |
| :---: | :---: |
| ![Quality documents](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-documents.png) | ![Self-approval blocked](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-documents-self-approval-blocked.png) |

**Analytical results:** registro de las variables del ensayo; el sistema calcula el resultado con la fórmula del protocolo y lo compara con la especificación (US11). Un resultado fuera de especificación (OOS) exige registrar una desviación.

![Mock-up · Analytical results](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-analytical-results.png)

**Deviation report & detail:** detalle de DEV-26017 con su severidad, el lote afectado, la evidencia IoT asociada y el análisis de causa raíz (US18, US19, US22). Estados: Open, Under investigation y Closed.

![Mock-up · Deviation report & detail](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-deviation-report-detail.png)

**CAPA plan:** acciones correctivas y preventivas con responsable, fecha límite y estado (Open, Implemented, Overdue, Verified) (US20, US21). Mientras la causa raíz esté incompleta, el plan no puede avanzar.

| CAPA plan | Root cause required |
| :---: | :---: |
| ![CAPA plan](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-capa-plan.png) | ![Root cause required](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-capa-plan-root-cause-required.png) |

**Batch release:** lista de verificación de la liberación del lote B-26041 (resultados analíticos, desviaciones cerradas, evidencia IoT y registros completos) y firma electrónica (US54, US08). Si algún control no se cumple, la liberación se bloquea y se listan los registros pendientes.

| Batch release | Release blocked |
| :---: | :---: |
| ![Batch release](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-batch-release.png) | ![Release blocked](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-batch-release-blocked.png) |

**Audits & findings:** planificación de auditorías internas y registro de sus hallazgos (US29, US59).

![Mock-up · Audits & findings](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-audits-findings.png)

**Audit trail:** registro inmutable de cada cambio con usuario, fecha, valor anterior, valor nuevo y motivo, filtrable por lote, usuario o fecha (US27, US30).

![Mock-up · Audit trail](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-audit-trail.png)

**Regulatory reports:** generación de reportes y del paquete de evidencias de una auditoría o inspección (US28).

![Mock-up · Regulatory reports](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-regulatory-reports.png)

**Tasks & collaboration:** bandeja de tareas y solicitudes de aprobación entre Calidad y Producción, con su estado y responsable (US40, US41, US42, US43).

![Mock-up · Tasks & collaboration](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-tasks-collaboration.png)

#### Segmento 2 – Jefe o Supervisor de Producción

**Sign in · Production:** mismo flujo de ingreso que QA/QC, con el color del entorno de Producción: credenciales, "Invalid credentials", código 2FA y "Access not authorized" (US06, US07).

| Sign in · Production | Invalid credentials |
| :---: | :---: |
| ![Sign in Production](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-invalid-credentials.png) |

| Two-factor authentication | Access not authorized |
| :---: | :---: |
| ![2FA](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-two-factor-authentication.png) | ![Access not authorized](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-access-not-authorized.png) |

**Production overview:** dashboard de producción (US32) con las órdenes activas, los lotes por estado, el rendimiento y las alertas de las líneas.

![Mock-up · Production overview](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-production-overview.png)

**Products & master formulas:** catálogo de productos y sus fórmulas maestras con versión y estado; solo una fórmula aprobada, como MFR-AC500 v3.2, puede usarse en una orden (US35, US36).

![Mock-up · Products & master formulas](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-products-master-formulas.png)

**Production order & master formula:** emisión de la orden de producción a partir de la fórmula maestra aprobada, con cantidades, equipos y fechas (US57).

![Mock-up · Production order](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-production-order-master-formula.png)

**Batches:** registro y lista de lotes con su estado (Planned, In progress, On hold, Finished, Release requested, Released, Rejected) (US14, US16). Si el número de lote ya existe o la fórmula no está aprobada, el lote no se crea y se explica el motivo.

| Batches | Batch not created |
| :---: | :---: |
| ![Batches](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batches.png) | ![Batch not created](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batches-batch-not-created.png) |

**Batch detail & traceability:** historial del lote B-26041 (120,000 tabletas) con su genealogía: materias primas, equipos, etapas y eventos (US15, US17).

![Mock-up · Batch detail & traceability](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batch-detail-traceability.png)

**Batch IoT evidence:** lecturas de los sensores asociados al lote, capturadas automáticamente, con la excursión de 27.8 °C del sensor T-204 frente al límite de 18–25 °C (US25, US26).

![Mock-up · Batch IoT evidence](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batch-iot-evidence.png)

**Raw-material receipt:** recepción de materias primas con su lote de proveedor y su estado de calidad (Quarantine, Approval requested, Approved, Rejected) (US58). Un insumo solo puede usarse en un lote cuando Calidad lo aprueba.

![Mock-up · Raw-material receipt](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-raw-material-receipt.png)

**Equipment & IoT devices:** registro de equipos y sensores con su estado (Fit for use, Not fit for use, In maintenance), calibraciones y mantenimientos (US23, US37, US38, US39). Un equipo no apto o un sensor ya asociado a otro lote no puede vincularse (US24).

![Mock-up · Equipment & IoT devices](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-equipment-iot-devices.png)

**IoT overview y Equipment & sensor detail:** monitoreo en tiempo real de los sensores de planta y detalle de un equipo con sus lecturas, límites y alertas (US26).

| IoT overview | Equipment & sensor detail |
| :---: | :---: |
| ![IoT overview](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/iot-iot-overview.png) | ![Equipment & sensor detail](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/iot-equipment-sensor-detail.png) |

#### Administrador del laboratorio

**Sign in · Administration:** ingreso al entorno de Administración con credenciales y código 2FA.

| Sign in · Administration | Invalid credentials | Two-factor authentication |
| :---: | :---: | :---: |
| ![Sign in Administration](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration-invalid-credentials.png) | ![2FA](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration-two-factor-authentication.png) |

**Administration overview:** resumen de los usuarios activos e invitaciones pendientes, la organización y sus sedes (planta de Ate y laboratorio de Lima), el estado de la suscripción, los usuarios que requieren atención y la actividad administrativa reciente.

![Mock-up · Administration overview](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-administration-overview.png)

**Users & profiles e Invite user:** lista de usuarios con su rol y estado (Invited, Active, Locked, Disabled) y el diálogo para invitar a un nuevo integrante con su rol (US07, US55).

| Users & profiles | Invite user |
| :---: | :---: |
| ![Users & profiles](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-users-profiles.png) | ![Invite user](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-invite-user.png) |

**Subscriptions & payments:** plan vigente, modalidad mensual o anual, historial de pagos con Niubiz y su estado (Pending, Approved, Rejected), y las opciones de renovación y cancelación (US51, US52, US53).

![Mock-up · Subscriptions & payments](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-subscriptions-payments.png)

#### Mobile Web Browser

En mobile, la navegación del entorno se agrupa en una barra inferior y las pantallas se reducen a las tareas de campo de cada segmento.

**Compartido:** elección del entorno y formulario de contacto.

![Mock-up · Mobile · Shared](../assets/img/chapter4/web-application/mockups/mobile-shared-environment-selection-montage-1.png)

| Contact us | Contact us · Invalid data | Contact us · Inquiry received |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/web-application/mockups/contact/contact-us-mobile.png) | ![Contact us · Invalid data](../assets/img/chapter4/web-application/mockups/contact/contact-us-mobile-invalid-data.png) | ![Contact us · Inquiry received](../assets/img/chapter4/web-application/mockups/contact/contact-us-mobile-inquiry-received.png) |

**Segmento 1 – QA/QC:** inicio de sesión con sus estados, Task inbox, Approval review y Approval completed, donde la Quality Manager aprueba el documento (con el estado "Record changed", que impide firmar si el registro cambió durante la revisión), Electronic signature (con el estado "Invalid password") y Signature confirmed, donde María firma la liberación del lote B-26038, y Batch detail.

![Mock-up · Mobile · QA/QC (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Mock-up · Mobile · QA/QC (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-2.png)

**Segmento 2 – Production:** inicio de sesión con sus estados, IoT monitoring, Batch lookup, Alert details, Incident reporting (con el estado "Validation error") e Incident submitted.

![Mock-up · Mobile · Production (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-1.png)

![Mock-up · Mobile · Production (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-2.png)

**Administrador del laboratorio:** inicio de sesión del entorno de Administración con sus estados.

![Mock-up · Mobile · Administration](../assets/img/chapter4/web-application/mockups/mobile-laboratory-administrator-montage-1.png)

### 4.4.4. Web Applications User Flow Diagrams

Los User Flow Diagrams representan, para los mismos user goals de la sección 4.4.2, la secuencia de pantallas y acciones del camino principal (happy path) y las decisiones que llevan a caminos alternativos (unhappy paths). Se elaboraron en FigJam, en el mismo tablero: https://www.figma.com/board/WxYyDGMJ42w7w7yQNNnGNN que los Wireflow Diagrams.

#### Segmento 1 – Especialista QA/QC

**User Goal QA-1:** Ingresar a DoofPlus y acceder al entorno QA/QC.

Happy path: Home → "Sign in" → Choose your environment → QA/QC → correo y contraseña → Two-factor authentication → Quality overview.

Unhappy paths: ¿Credenciales válidas? No → "Invalid credentials"; permanece en el formulario y, tras cinco intentos, la cuenta se bloquea quince minutos | ¿El rol autoriza el entorno QA/QC? No → "Access not authorized".

![User Flow QA-1](../assets/img/chapter4/web-application/user-flows/user-flow-qa-1.png)

**User Goal QA-2:** Gestionar la documentación de calidad y sus protocolos.

Happy path: Quality overview → Quality documents → envía la revisión → Tasks & collaboration (tarea de aprobación).

Unhappy path: ¿El revisor es distinto del autor? No → "Self-approval blocked"; la aprobación debe asignarse a otro revisor.

![User Flow QA-2](../assets/img/chapter4/web-application/user-flows/user-flow-qa-2.png)

**User Goal QA-3:** Registrar una desviación y gestionar su CAPA.

Happy path: Quality overview → Deviation report & detail (DEV-26017) → registra la causa raíz → CAPA plan.

Unhappy path: ¿La causa raíz está documentada? No → "Root cause required"; el plan CAPA no avanza.

![User Flow QA-3](../assets/img/chapter4/web-application/user-flows/user-flow-qa-3.png)

**User Goal QA-4:** Planificar una auditoría y reunir sus evidencias.

Happy path: Audits & findings → Audit trail del alcance → Regulatory reports (paquete de evidencias).

Unhappy path: ¿Están todos los registros obligatorios? No → Quality indicators muestra los registros faltantes antes de la auditoría.

![User Flow QA-4](../assets/img/chapter4/web-application/user-flows/user-flow-qa-4.png)

**User Goal QA-5:** Registrar y validar resultados analíticos.

Happy path: Quality overview → Analytical results → resultado dentro de especificación → Batch release.

Unhappy path: ¿El resultado está dentro de la especificación? No → resultado OOS; se registra una desviación en Deviation report & detail.

![User Flow QA-5](../assets/img/chapter4/web-application/user-flows/user-flow-qa-5.png)

**User Goal QA-6:** Revisar la trazabilidad completa de un lote y liberarlo.

Happy path: Quality overview → Audit trail del lote → Batch release → firma electrónica.

Unhappy path: ¿Se cumplen todos los controles de liberación? No → "Release blocked"; se listan los registros pendientes.

![User Flow QA-6](../assets/img/chapter4/web-application/user-flows/user-flow-qa-6.png)

#### Segmento 2 – Jefe o Supervisor de Producción

**User Goal PR-1:** Ingresar a DoofPlus y acceder al entorno de Producción.

Happy path: Home → "Sign in" → Choose your environment → Production → correo y contraseña → Two-factor authentication → Production overview.

Unhappy paths: ¿Credenciales válidas? No → "Invalid credentials" | ¿El rol autoriza el entorno de Producción? No → "Access not authorized".

![User Flow PR-1](../assets/img/chapter4/web-application/user-flows/user-flow-pr-1.png)

**User Goal PR-2:** Gestionar la ejecución de un lote y consultar su historial.

Happy path: Products & master formulas → selecciona la fórmula aprobada → Production order & master formula → Batches → Batch detail & traceability (B-26041).

Unhappy path: ¿El número de lote es único y la fórmula está aprobada? No → "Batch not created", con el motivo.

![User Flow PR-2](../assets/img/chapter4/web-application/user-flows/user-flow-pr-2.png)

**User Goal PR-3:** Monitorear equipos y condiciones ambientales.

Happy path: IoT overview → alerta de EQ-COAT-02 → Equipment & sensor detail → Batch IoT evidence.

Unhappy path: ¿El equipo está apto y el sensor libre? No → Equipment & IoT devices; la asociación no se realiza.

![User Flow PR-3](../assets/img/chapter4/web-application/user-flows/user-flow-pr-3.png)

**User Goal PR-4:** Reportar una incidencia de producción desde planta.

Happy path (Mobile): Alert details → "Report incident" → Incident reporting → Incident submitted.

Unhappy path: ¿Los campos obligatorios están completos? No → "Validation error"; el formulario permanece abierto con los errores resaltados.

![User Flow PR-4](../assets/img/chapter4/web-application/user-flows/user-flow-pr-4.png)

**User Goal PR-5:** Trazar un lote para investigar un evento.

Happy path: Batches → Batch detail & traceability → Raw-material receipt del insumo.

Unhappy path: ¿Calidad aprobó el lote del insumo? No → el insumo permanece en Quarantine y no puede usarse; la solicitud de aprobación se sigue en Tasks & collaboration.

![User Flow PR-5](../assets/img/chapter4/web-application/user-flows/user-flow-pr-5.png)

**User Goal PR-6:** Revisar reportes e indicadores de producción.

Happy path: Production overview → Batches → Batch detail & traceability.

Unhappy path: ¿Hay una incidencia abierta en una línea? Sí → se sigue en IoT overview.

![User Flow PR-6](../assets/img/chapter4/web-application/user-flows/user-flow-pr-6.png)

#### Visitante del Website

**User Goal VI-1:** Enviar una consulta al equipo de DoofPlus.

Happy path: Website · Home → "Sign in" → Choose your environment → "Contact us" → nombre, correo y consulta → Inquiry received.

Unhappy path: ¿El correo y la consulta son válidos? No → "Invalid data"; el visitante corrige los campos y vuelve a enviar.

![User Flow VI-1](../assets/img/chapter4/web-application/user-flows/user-flow-vi-1.png)

## 4.5. Web Applications Prototyping

El prototipo interactivo de DoofPlus se construyó en Figma sobre los mock-ups de las secciones 4.3.2 y 4.4.3, con el fin de validar la navegación y los flujos antes de la implementación. Sus interacciones siguen los paths de los User Flow Diagrams de la sección 4.4.4:

- **Website:** los enlaces de la barra desplazan a cada sección; "Sign in" abre la elección de entorno; "Get Started" desplaza a la llamada a la acción final, cuyos botones abren el inicio de sesión de cada entorno y "Register your laboratory" el registro de la organización; los enlaces del footer abren los términos, la política de privacidad, el correo y las redes sociales. En la Web Application, "Contact us" abre el formulario de contacto desde la barra superior y desde la elección de entorno. En mobile, el ícono de menú abre el overlay de navegación.
- **Ingreso:** la elección de entorno abre el inicio de sesión de QA/QC, Production o Administration; "Continue" lleva al código 2FA y "Verify" a la pantalla inicial del entorno. Los estados de error se muestran como pantallas alternativas.
- **Web Application:** el sidebar lleva a cada módulo del entorno, el avatar abre "Profile & preferences" y los botones de cada pantalla siguen los user goals QA-1 a QA-6 y PR-1 a PR-6, que se definieron como puntos de inicio del prototipo.

Las interacciones aplican el Navigation System de la sección 4.2.5. En el Website, la navegación global de la barra fija y los enlaces del footer usan interacciones "Scroll to" hacia cada sección; las llamadas a la acción y "Sign in" usan "Navigate to" hacia la Web Application, y en mobile el menú se abre y se cierra como overlay ("Open overlay" y "Close"). En la Web Application, el sidebar es la navegación global entre los módulos del entorno, las pestañas y los botones de cada pantalla son la navegación local, y el logotipo y "Back to DoofPlus" regresan al Website; todas estas acciones usan "Navigate to". Las etiquetas de los enlaces son las del Labeling System de la sección 4.2.2. Para navegar entre el Website y la Web Application, el prototipo se armó en una página propia de Figma ("Prototype") que reúne los mock-ups de ambas.

El diseño del prototipo se guió por cuatro criterios:

- **Cumplimiento regulatorio por diseño:** las acciones críticas exigen firma electrónica, quedan en el audit trail y respetan la segregación de funciones (por ejemplo, el autor de un documento no puede aprobarlo).
- **Navegación basada en los procesos del laboratorio:** los módulos siguen el recorrido del lote, desde la fórmula maestra y la orden de producción hasta su liberación.
- **Consistencia visual:** todos los entornos comparten componentes, tipografía y estructura, y solo cambia el color que identifica al entorno.
- **Prevención de errores:** los estados de bloqueo explican el motivo y la acción necesaria, en lugar de permitir una operación que luego deba corregirse.

Prototipo navegable en Figma (página "Prototype", que une los mock-ups del Website y de la Web Application para navegar entre ambas): abrir el prototipo: https://www.figma.com/proto/YYtMivGL4tZEsLacA8HQmN/Aplicaciones-Web?page-id=1%3A1117&node-id=191-3378&starting-point-node-id=191%3A3378. Desde el selector de flujos del visor se accede a los puntos de inicio de cada user goal.

Video de navegación del prototipo (Sprint 1): ver en Microsoft Stream: https://upcedupe-my.sharepoint.com/:v:/g/personal/u202423162_upc_edu_pe/IQC9TP0VdDx0SbIEr4nWmikhAceGoBqdZ78DiR68qJ8FV-A?e=1BIqfW (copia en YouTube: https://youtu.be/6PLCLqaF8Tg). Inicio: 00:00. Duración: 06:10.

**Website** (desde 00:00 hasta 00:24)

![Video de navegación del prototipo · Website](../assets/img/chapter4/prototype/video-landing-page.png)

**Web Application** (desde 00:24 hasta 06:10)

![Video de navegación del prototipo · Web Application](../assets/img/chapter4/prototype/video-web-application.png)

## 4.6. Domain-Driven Software Architecture
La arquitectura de DoofPlus se fundamenta en Domain-Driven Design (DDD). El punto de partida es el Big Picture EventStorming (sección 2.4), que dejó una línea de tiempo de eventos organizada en siete swimlanes, con sus actores, sistemas externos y problemas. En esta sección ese conocimiento se profundiza con un Design-Level EventStorming hasta identificar los bounded contexts y obtener aggregates, commands, policies, read models y sistemas externos por contexto; luego la solución se representa con el modelo C4 (contexto, contenedores y componentes). Cada bounded context se corresponde con un módulo de la Web Application en Vue 3 y con un namespace del RESTful API en ASP.NET Core.

La siguiente tabla resume la trazabilidad entre artefactos:

| Bounded context | Tipo | Swimlanes del Big Picture | Épicas | Aggregates (DLES) | Módulo Vue / proyecto ASP.NET Core |
| --- | --- | --- | --- | --- | --- |
| Manufacturing & Batch Management | Core | Producción y almacén | EP04, EP09 (productos y fórmulas) | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch | `manufacturing` |
| Quality & Compliance | Core | Gestión documental, Control de calidad y liberación, Desviaciones y CAPA, Auditoría y cumplimiento | EP03, EP05, EP07, EP08, EP10 | QualityDocument, MaterialApproval, BatchReview, AnalyticalResult, Deviation, Audit, RegulatoryReport | `quality` |
| IoT Monitoring | Supporting | Monitoreo de equipos (IoT) | EP06, EP09 (equipos, calibraciones y mantenimiento) | Equipment, IoTDevice, TelemetryReading, Alert | `monitoring` / `iotmonitoring` |
| Identity & Access Management | Generic | Plataforma y administración, Gestión documental | EP02 | User, ElectronicSignature | `iam` |
| Organizations & Profiles | Supporting | Plataforma y administración | EP01 (consultas del formulario de contacto), EP02 (registro de la organización) | Organization, Profile, ContactInquiry | `organizations` |
| Subscriptions & Payments | Generic | Plataforma y administración | EP11 | Plan, Subscription | `subscriptions` |

Los dashboards (EP08) y las notificaciones entre áreas (EP10) no forman un contexto propio: los dashboards son read models que cada contexto expone y las notificaciones son policies que reaccionan a domain events.

### 4.6.1. Design-Level Event Storming

El equipo realizó el Design-Level EventStorming en Miro siguiendo la agenda propuesta en "The best agenda for Design-Level Event Storming" (EventStorming Journal) y la guía del statement (https://bit.ly/dles-guide). Se trabajó un bounded context a la vez, tomando como punto de partida los eventos del Big Picture que pertenecen a ese contexto. Quality & Compliance, el contexto más grande, se modeló en un solo frame con dos swimlanes: liberación de lotes (documentos, insumos, resultados analíticos y liberación) y desviaciones y auditoría (desviaciones, CAPA, auditorías y reportes regulatorios).

Tablero de Miro: https://miro.com/app/board/uXjVHkhKOXE=/

La agenda de la guía tiene 11 fases. El equipo las aplicó agrupadas en los pasos que ya usaba, y decidió qué fases son opcionales para el proyecto:

| Fase de la guía | Paso en DoofPlus | Cómo se aplicó |
| --- | --- | --- |
| 1. The target design | Paso 0: Target design | Se presentó la gramática del Design-Level (actor, read model, command, business rule o external system, domain event y policy). |
| 2. Domain Events | Paso 1: Timelines | Se copiaron los eventos del Big Picture que pertenecen a cada contexto y se ordenaron en el tiempo. |
| 3. Commands | Paso 2: Commands | Se escribió, antes de cada evento, la intención que lo provoca. |
| 4. Actors or policies | Paso 3: Actors and policies | Cada command se antecedió por el actor que lo ejecuta o por la policy que lo dispara automáticamente. |
| 5 y 6. Blank stickies / Read models and UX mock-ups | Paso 4: Read models | Se registró la información que el actor necesita ver para decidir. Los mock-ups en post-its blancos se omitieron porque las pantallas ya se diseñaron en Figma (sección 4.4); cada read model corresponde a una vista de la Web Application. |
| 7. External systems | Paso 5: External systems | Se ubicaron los sistemas externos entre el command y el evento. |
| 8 a 11. Business rules, aggregates of business rules y aggregate names | Paso 6: Business rules y aggregates | Donde no interviene un sistema externo se escribió la regla de negocio que protege el command (tomada de los criterios de aceptación de la User Story correspondiente); las reglas relacionadas se apilaron y el grupo recibió el nombre del aggregate. |
| Opcional después del taller: Bounded Context Canvas y Example Mapping | Paso 7: Bounded contexts | Se agruparon los aggregates en bounded contexts y se trazó el context map. El Bounded Context Canvas no se elaboró (es opcional) y el Example Mapping se reemplazó por los escenarios Gherkin de la sección 3.1. |

Notación usada en el tablero: domain events en naranja, commands en azul, actores en amarillo pequeño, policies en lila, read models en verde, sistemas externos en rosado, business rules en amarillo y aggregates como bloques amarillos que agrupan sus reglas.

#### Paso 0: Target design

Antes de modelar, se acordó la "imagen que lo explica todo": un actor consulta un read model, decide y ejecuta un command; el command se valida con las business rules del aggregate o invoca a un sistema externo; el resultado es un domain event, que puede disparar una policy y con ella un nuevo command.

Frame en Miro: https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685756367551

![Target design](../assets/img/chapter4/design-level-event-storming/target-design.jpg)

#### Paso 1: Timelines

Se organizaron en una línea de tiempo vertical los eventos de cada contexto, con los resultados alternativos en la columna "Alternative" (por ejemplo, "Document approved" o "Document rejected"). Al revisar qué dispara cada evento, en este nivel se agregaron eventos que faltaban en el Big Picture: "Inquiry received", "Subscription plan selected", "Electronic signature recorded", "Equipment registered", "IoT sensor registered", "Raw material approval requested from Quality", "Preventive maintenance performed", "Batch put on hold" y "CAPA action overdue"; además, "User signed up" se renombró como "User registered in the organization". También aparecen eventos de detalle que no eran relevantes en la vista general, como "User authenticated", "Sign-in failed", "Account locked", "Facility added", "Profile updated" y "Alert acknowledged".

**Identity & Access Management**

![Identity & Access Management - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/iam-1-timelines.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/org-1-timelines.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/sub-1-timelines.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/mfg-1-timelines.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/iot-1-timelines.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/qa-1-timelines.jpg)

#### Paso 2: Commands

Cada evento se antecedió por el command que lo provoca, redactado en imperativo (por ejemplo, "Create batch" produce "Batch created"). Un mismo command puede terminar en dos eventos alternativos, como "Approve production order", que produce "Production order approved" o "Production order rejected".

**Identity & Access Management**

![Identity & Access Management - paso 2](../assets/img/chapter4/design-level-event-storming/commands/iam-2-commands.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 2](../assets/img/chapter4/design-level-event-storming/commands/org-2-commands.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 2](../assets/img/chapter4/design-level-event-storming/commands/sub-2-commands.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 2](../assets/img/chapter4/design-level-event-storming/commands/mfg-2-commands.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 2](../assets/img/chapter4/design-level-event-storming/commands/iot-2-commands.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 2](../assets/img/chapter4/design-level-event-storming/commands/qa-2-commands.jpg)

#### Paso 3: Actors and policies

Se identificó quién ejecuta cada command: Laboratory Administrator, QA/QC Specialist, Quality Manager, Production Supervisor, Internal Auditor, Action Owner y, para las tareas programadas, el sistema (System, scheduler). Cuando un command se ejecuta automáticamente, el actor se reemplazó por una policy. Las principales policies son:

| Bounded context | Policy (cuando ocurre…, entonces…) |
| --- | --- |
| IAM | Cuando ocurren 5 intentos fallidos de inicio de sesión, bloquear la cuenta 15 minutos. |
| Organizations | Cuando se registra la organización, crear la cuenta del administrador en IAM. |
| Subscriptions | Cuando se activa la suscripción, habilitar los límites del plan (usuarios y sensores). |
| Manufacturing | Cuando se recibe materia prima, solicitar su aprobación a Calidad. |
| Manufacturing | Cuando se aprueba la orden, planificar la producción. |
| Manufacturing | Cuando la incidencia es crítica, poner el lote en espera; cuando se escala, registrar una desviación en Quality. |
| Manufacturing | Cuando se solicita la liberación, poner el lote en cuarentena en Quality. |
| IoT Monitoring | Cuando llega una lectura, evaluar las reglas de alerta; cuando un parámetro sale de rango, generar una alerta. |
| IoT Monitoring | Cuando vence la calibración, marcar el equipo como no apto y notificar. |
| Quality | Cuando un resultado sale de especificación, marcarlo OOS y registrar una desviación. |
| Quality | Cuando se libera el lote, emitir el certificado y actualizar el lote en Manufacturing. |
| Quality | Cuando se cierra una desviación, reevaluar el lote afectado. |

**Identity & Access Management**

![Identity & Access Management - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/iam-3-actors-policies.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/org-3-actors-policies.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/sub-3-actors-policies.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/mfg-3-actors-policies.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/iot-3-actors-policies.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/qa-3-actors-policies.jpg)

#### Paso 4: Read models

Se registró la información que cada actor consulta antes de decidir. Estos read models son la base de las vistas de la Web Application y de los dashboards: por ejemplo, "Batch dashboard" (GxP Batch Execution & Management Console), "Deviations and CAPA board" (Critical Deviations & CAPA Actions Control), "Laboratory results dashboard" (Analytical Results Entry & Validation), "Alerts dashboard" (Environmental & Equipment Monitoring) y "Audit trail" (Cross-Traceability & Audit Center). Cada read model se obtiene con una query del contexto, atendida por su query service: por ejemplo, el panel de control del lote se arma con la consulta del lote y su línea de tiempo, y el tablero de desviaciones, con la consulta de las desviaciones abiertas por severidad.

**Identity & Access Management**

![Identity & Access Management - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/iam-4-read-models.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/org-4-read-models.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/sub-4-read-models.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/mfg-4-read-models.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/iot-4-read-models.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/qa-4-read-models.jpg)

#### Paso 5: External systems

Se ubicaron los sistemas externos en el punto donde intervienen: Niubiz (pago y renovación de suscripciones), ThingsBoard (registro de sensores e ingesta de lecturas), SendGrid (invitaciones, alertas y notificaciones por correo), el RFID Reader (recepción de materias primas), la Authenticator App (TOTP) del usuario (códigos de 2FA) y DIGEMID (inspección). Respecto del tablero original se corrigieron tres elementos: "Registro en la base de datos" no es un sistema externo (la base de datos es parte de la solución), el "Motor de alertas" es lógica propia del contexto IoT Monitoring y Google Authenticator no expone un API: solo genera el código que el usuario ingresa.

**Identity & Access Management**

![Identity & Access Management - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/iam-5-external-systems.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/org-5-external-systems.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/sub-5-external-systems.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/mfg-5-external-systems.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/iot-5-external-systems.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/qa-5-external-systems.jpg)

#### Paso 6: Business rules y aggregates

Donde no interviene un sistema externo se escribió la business rule que el command debe cumplir. Las reglas se tomaron de los criterios de aceptación de las User Stories (el identificador aparece en el post-it), por ejemplo "Unique batch number (US14)", "Approved raw material only (US17)" o "Requires a root cause and verified CAPA (US19)". Las reglas que protegen los mismos datos se apilaron y cada grupo recibió el nombre de su aggregate:

| Bounded context | Aggregates | Ejemplo de invariante |
| --- | --- | --- |
| IAM | User, ElectronicSignature | Una cuenta se bloquea tras 5 intentos fallidos; firmar exige reingresar la contraseña. |
| Organizations & Profiles | ContactInquiry, Organization, Profile | El RUC de la organización es válido y único. |
| Subscriptions & Payments | Plan, Subscription | La suscripción se activa solo si Niubiz autoriza el cobro. |
| Manufacturing & Batch Management | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch | Un lote solo consume materia prima aprobada y solo Calidad puede liberarlo. |
| IoT Monitoring | Equipment, IoTDevice, TelemetryReading, Alert | Un equipo con calibración vencida no puede asignarse a un lote. |
| Quality & Compliance | QualityDocument, MaterialApproval, BatchReview, AnalyticalResult, Deviation, Audit, RegulatoryReport | Un lote con un resultado OOS sin desviación cerrada no puede liberarse. |

Frames en Miro por bounded context. Debajo de los frames finales, el tablero tiene la sección "DLES step by step per bounded context", con una fila por contexto y un frame por paso (Pasos 1 a 6); el enlace lleva al Paso 1 de cada fila:

| Bounded context | Frame final | Pasos 1 a 6 |
| --- | --- | --- |
| Identity & Access Management | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685754766070 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685853215191 |
| Organizations & Profiles | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685754766071 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685853215761 |
| Subscriptions & Payments | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685754766072 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685853249317 |
| Manufacturing & Batch Management | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685754766787 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685853302296 |
| IoT Monitoring | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685754766073 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685853335403 |
| Quality & Compliance | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764686149839907 | https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764686150007814 |

**Identity & Access Management**

![Identity & Access Management - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/iam-6-aggregates.jpg)

**Organizations & Profiles**

![Organizations & Profiles - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/org-6-aggregates.jpg)

**Subscriptions & Payments**

![Subscriptions & Payments - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/sub-6-aggregates.jpg)

**Manufacturing & Batch Management**

![Manufacturing & Batch Management - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/mfg-6-aggregates.jpg)

**IoT Monitoring**

![IoT Monitoring - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/iot-6-aggregates.jpg)

**Quality & Compliance** (swimlane 1: liberación de lotes; swimlane 2: desviaciones y auditoría)

![Quality & Compliance - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/qa-6-aggregates.jpg)

#### Paso 7: Bounded contexts

Los aggregates se agruparon en seis bounded contexts, siguiendo los swimlanes del Big Picture y el lenguaje que comparten sus eventos, con nombres en inglés alineados al Ubiquitous Language y al código. Respecto del Design-Level original del equipo se mantuvieron los seis contextos y se refinaron sus aggregates: "Módulo de Credenciales y Sesión" pasó a User (la sesión se maneja con JWT y no se persiste), la matriz de roles pasó de Organizations a IAM, "Perfil Corporativo y Tenant" se dividió en Organization y Profile, "Inventario y Materia Prima" se separó en Product, MasterFormula y RawMaterialLot, "Lote de Producción" en ProductionOrder y ProductionBatch, "Registro de Maquinaria y Telemetría" en Equipment, IoTDevice, TelemetryReading y Alert, y "Expediente de Trazabilidad y Auditoría" en MaterialApproval, BatchReview, AnalyticalResult y Audit. Así cada aggregate protege un conjunto pequeño de reglas y se corresponde con una clase raíz y sus tablas.

El context map muestra cómo se integran los contextos. Las consultas entre contextos pasan por un Anti-Corruption Layer (fachada `ContextFacade` del contexto proveedor y servicio `External…Service` del consumidor); las decisiones de Quality hacia Manufacturing se comunican con domain events.

Frame en Miro: https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685756367552

![Context map](../assets/img/chapter4/design-level-event-storming/context-map.jpg)

| Contexto consumidor | Contexto proveedor | Integración | Motivo |
| --- | --- | --- | --- |
| Organizations & Profiles | IAM | ACL (`IamContextFacade`) | Crear la cuenta del administrador al registrar la organización. |
| Quality & Compliance | IAM | ACL (`IamContextFacade`) | Registrar firmas electrónicas en aprobaciones y liberaciones. |
| Subscriptions & Payments | Organizations & Profiles | ACL (`OrganizationsContextFacade`) | Validar la organización suscriptora. |
| IoT Monitoring | Subscriptions & Payments | ACL (`SubscriptionsContextFacade`) | Respetar el límite de sensores del plan. |
| Manufacturing | Quality & Compliance | ACL (`QualityContextFacade`) | Solicitar la aprobación de insumos y la cuarentena del lote. |
| Manufacturing | Quality & Compliance | Domain events (`MaterialApprovalDecided`, `BatchReleaseDecided`) | Actualizar el estado del insumo y del lote con el dictamen de Calidad. |
| Manufacturing e IoT Monitoring | Entre sí | ACL (`IotMonitoringContextFacade`, `ManufacturingContextFacade`) | Asignar sensores al lote y verificar que el lote esté en curso. |

### 4.6.2. Software Architecture Context Diagram

El diagrama de contexto (nivel 1 del modelo C4) presenta a DoofPlus como una "caja negra": el foco está en el sistema y en las personas y sistemas externos con los que interactúa, sin detallar cómo está construido por dentro. Los diagramas C4 se elaboraron con Structurizr DSL (Diagram-as-Code) y se renderizaron con Structurizr; todas las vistas salen de un único modelo (`assets/diagrams/structurizr/workspace.dsl`), la posición de cada elemento se guarda en `workspace.json` y los textos de los diagramas están en inglés, al igual que el resto de artefactos.

Personas que usan DoofPlus:

- **Laboratory Visitor:** representante de un laboratorio que conoce DoofPlus desde el Website, revisa los planes y registra su laboratorio.
- **QA/QC Specialist** (segmento objetivo 1): gestiona documentos, dictamen de insumos, desviaciones, CAPA, auditorías y la liberación de lotes.
- **Pharmaceutical Production Supervisor** (segmento objetivo 2): gestiona órdenes y lotes, monitorea los equipos y solicita aprobaciones a Calidad.
- **Laboratory Administrator:** registra la organización, los usuarios, los roles, los sensores y la suscripción.

Sistemas externos:

- **ThingsBoard:** plataforma IoT que recibe las lecturas de los sensores de planta y las reenvía a DoofPlus.
- **Niubiz:** pasarela de pagos que autoriza los cobros de las suscripciones.
- **SendGrid:** servicio de correo para invitaciones, alertas y notificaciones.
- **RFID Reader:** lector del almacén con el que el Jefe de Producción escanea la etiqueta RFID de cada lote de insumo recibido; envía ese código a DoofPlus.
- **Authenticator App (TOTP):** aplicación móvil del usuario que genera los códigos del segundo factor. No se integra por API con DoofPlus, por eso su relación se dibuja con línea punteada.

En el diagrama se observa que las cuatro personas usan DoofPlus mediante HTTPS, que ThingsBoard envía la telemetría al sistema mediante un webhook y que DoofPlus se integra con Niubiz y SendGrid a través de sus API REST. DIGEMID, identificada en el EventStorming, no forma parte del diagrama porque inspecciona al laboratorio sin intercambiar datos con DoofPlus: el modelo C4 solo incluye a las personas y los sistemas conectados directamente con el sistema.

![Context Level Diagram](../assets/img/chapter4/software-architecture/c4/c4-01-context.png)

### 4.6.3. Software Architecture Container Diagrams

En el nivel de contenedores, la atención pasa de "quién usa el sistema" a "cómo se organiza el sistema en aplicaciones y almacenes de datos". El diagrama muestra los contenedores de DoofPlus, sus responsabilidades, las decisiones de tecnología y la forma en que se comunican entre sí y con los sistemas externos:

| Container | Tecnología | Despliegue | Responsabilidad |
| --- | --- | --- | --- |
| Website | HTML5, CSS3, JavaScript | GitHub Pages | Presentar la propuesta de valor, los planes y el equipo, y llevar a cada usuario, mediante el call to action, al inicio de sesión de su entorno o al registro de la organización. |
| Web Application | Archivos estáticos generados por `npm run build` (Vite) | Firebase Hosting | Entregar al navegador del usuario el contenido estático y la Single-Page Application (`index.html` y los archivos JavaScript y CSS). No ejecuta lógica de negocio. |
| Single-Page Application | Vue 3, Vite, Pinia, Vue Router, Vue I18n, PrimeVue, JavaScript | Navegador del usuario | Toda la interfaz de DoofPlus, con un módulo por bounded context; consume el RESTful API con un token JWT. |
| RESTful API | ASP.NET Core, C#, Entity Framework Core, JWT, BCrypt, Scalar | Render | Monolito modular con los seis bounded contexts; expone endpoints REST documentados con OpenAPI e interactivos con Scalar, recibe la telemetría de ThingsBoard y publica notificaciones por WebSocket (SignalR). |
| Database | MySQL 8 | Railway | Persistencia relacional; las tablas se agrupan por bounded context. |

La aplicación web de DoofPlus se representa con dos contenedores, como indica el modelo C4 para una Single-Page Application. Al compilar el proyecto Vue con Vite se genera una carpeta con `index.html` y los archivos JavaScript y CSS; Firebase Hosting (Web Application) solo los entrega cuando el usuario ingresa a la URL de DoofPlus, y la aplicación se ejecuta en el navegador del usuario (Single-Page Application), por eso este contenedor se dibuja con la forma de un navegador. El Website es un contenedor aparte.

Las figuras siguen la notación del diagrama de contenedores del sitio oficial del modelo C4: el Website y la Web Application, que solo entregan archivos estáticos (HTML, CSS y JavaScript), se dibujan como una carpeta (*Directory*); la Single-Page Application, como un navegador; el RESTful API, como una aplicación del lado del servidor (*Server-side Application*, con el símbolo `>_`), y la Database, como un cilindro.

En el diagrama se observa que:

- El visitante ingresa al **Website**, cuyo call to action lo lleva a la URL de la Web Application.
- Los tres usuarios de la plataforma visitan la URL de DoofPlus; la **Web Application** entrega la **Single-Page Application** a su navegador, y desde ese momento trabajan con la SPA.
- La **Single-Page Application** se comunica solo con el **RESTful API**: realiza peticiones JSON/HTTPS con un token JWT y recibe las alertas en tiempo real por WebSocket.
- El **RESTful API** lee y escribe en la **Database** mediante Entity Framework Core, recibe la telemetría de **ThingsBoard** sin pasar por la SPA y se integra con **Niubiz** y **SendGrid**. Sus endpoints se documentan con OpenAPI y se prueban desde la interfaz de **Scalar**.
- El **RFID Reader** se conecta al equipo del almacén y escribe el código de la etiqueta en la Single-Page Application como entrada de teclado (USB HID), por lo que no requiere integración con el RESTful API.

Se eligió un monolito modular en lugar de microservicios porque el statement define un único RESTful API y porque el equipo y el volumen de datos de laboratorios pequeños y medianos no justifican la complejidad operativa de varios servicios. La separación por bounded context dentro del código (paquetes independientes que solo se comunican mediante fachadas y eventos) permite extraer un contexto a un servicio propio en el futuro.

![Container Level Diagram](../assets/img/chapter4/software-architecture/c4/c4-02-container.png)

### 4.6.4. Software Architecture Components Diagrams

En el nivel de componentes se detalla cómo se descompone cada contenedor que contiene código propio: la Single-Page Application y el RESTful API. En ambos, cada componente corresponde a un bounded context identificado en el Design-Level EventStorming (sección 4.6.1), más un componente `Shared` con los elementos reutilizados por todos. La descomposición de cada bounded context en sus capas (domain, application, infrastructure y presentation o interfaces) y en sus clases se presenta en los diagramas de clases de la sección 4.7.

#### Single-Page Application

La Single-Page Application sigue la estructura del proyecto en Vue 3: un módulo por bounded context en `src/<bounded-context>/`, más el módulo `shared`.

- **Shared:** el shell del espacio de trabajo (layout, toolbar, sidebar, footer y selector de idioma), las rutas de cada entorno (QA/QC, Production y Administration) y el cliente REST base del que heredan los endpoints de todos los módulos.
- **Identity & Access Management:** elección del entorno, inicio de sesión con 2FA, sesión, usuarios, invitaciones y protección de las rutas según el rol.
- **Organizations & Profiles:** registro de la organización, plantas, resumen de administración, consultas de contacto y preferencias del perfil.
- **Subscriptions & Payments:** planes, medio de pago, suscripción vigente e historial de facturas.
- **Manufacturing & Batch Management:** resumen de producción, órdenes, productos y fórmulas, lotes y recepción de insumos.
- **IoT Monitoring:** resumen IoT, equipos y sensores, lecturas, alertas y evidencia IoT de cada lote.
- **Quality & Compliance:** documentos, desviaciones, CAPA, liberación de lotes, resultados analíticos, auditorías, audit trail y reportes regulatorios.

En el diagrama se observa que los usuarios trabajan en el shell de `Shared`, que carga de forma diferida el módulo del bounded context que corresponde a cada vista; cada módulo llama al RESTful API mediante JSON/HTTPS. El RFID Reader escribe el código de la etiqueta en el módulo de Manufacturing durante la recepción de insumos.

![Component Diagram - Single-Page Application](../assets/img/chapter4/software-architecture/c4/c4-03-spa-components.png)

#### RESTful API

El RESTful API es un monolito modular: cada bounded context es un namespace independiente del proyecto ASP.NET Core, y los namespaces solo se comunican mediante fachadas ACL (`<Context>ContextFacade`) y eventos de dominio.

- **Shared:** clase base de los aggregates auditables, estrategia de nombres en snake_case, el tipo `Result` y la configuración común.
- **Identity & Access Management:** registro e inicio de sesión con JWT y TOTP, usuarios, roles, bloqueo de cuentas tras cinco intentos fallidos y firmas electrónicas. Envía las invitaciones por SendGrid.
- **Organizations & Profiles:** organizaciones (con RUC único), plantas, perfiles y consultas de contacto. Al registrar una organización pide a IAM crear su usuario administrador y avisa de cada consulta por SendGrid.
- **Subscriptions & Payments:** planes, suscripciones, pagos, renovaciones y cancelaciones. Autoriza los cobros con Niubiz.
- **Manufacturing & Batch Management:** productos, fórmulas maestras, lotes de insumos, órdenes de producción, lotes e incidencias.
- **IoT Monitoring:** equipos, calibraciones, sensores, lecturas de telemetría y alertas. Recibe la telemetría de ThingsBoard y envía las alertas por WebSocket y por SendGrid.
- **Quality & Compliance:** documentos de calidad, dictamen de insumos, revisión y liberación de lotes, desviaciones, CAPA, auditorías, audit trail y reportes regulatorios.

En el diagrama se observa que:

- La Single-Page Application llama a cada bounded context mediante sus endpoints REST; con IoT Monitoring, además, recibe las alertas en tiempo real por WebSocket.
- Organizations & Profiles crea el administrador de la organización mediante la fachada de IAM, y Quality & Compliance le pide a IAM la firma electrónica de documentos y liberaciones.
- Manufacturing & Batch Management solicita a Quality & Compliance la aprobación de insumos y la cuarentena de los lotes; Quality & Compliance le devuelve su veredicto mediante los eventos `MaterialApprovalDecided` y `BatchReleaseDecided`.
- Manufacturing & Batch Management pide a IoT Monitoring asignar sensores a cada lote, e IoT Monitoring consulta a Manufacturing el lote en curso al registrar cada lectura y a Subscriptions & Payments el límite de sensores del plan.
- Cada bounded context persiste sus datos en sus propias tablas de la Database.

![Component Diagram - RESTful API](../assets/img/chapter4/software-architecture/c4/c4-04-api-components.png)

## 4.7. Software Object-Oriented Design

El diseño orientado a objetos traduce los aggregates del Design-Level EventStorming a clases C# del RESTful API. Se aplicaron estas convenciones:

- Cada aggregate root extiende `AuditableAbstractAggregateRoot`, que aporta el identificador `long Id` y las fechas `CreatedAt` y `UpdatedAt` (en los diagramas, `Id` se muestra en cada aggregate y la clase base solo en IAM).
- Las entities internas de un aggregate se acceden solo a través de su raíz; los value objects (por ejemplo, `BatchNumber`, `Quantity`, `Money`, `Ruc`) se implementan como records inmutables de C#.
- Los nombres siguen las convenciones de codificación de C# de Microsoft: clases, propiedades, métodos y valores de enumeraciones en PascalCase, parámetros en camelCase e interfaces con el prefijo `I` (por ejemplo, `IUserRepository`). Las propiedades se muestran con su tipo de C# (`long`, `string`, `bool`, `DateTime`, `DateOnly`, `decimal`, `ICollection<T>`) y tienen get público y set privado.
- Los cambios de estado se solicitan con commands (`CreateBatchCommand`, `CloseDeviationCommand`, etc.) atendidos por command services; las consultas usan query services. Los repositorios y servicios de aplicación son interfaces asíncronas que devuelven `Task<T>`, implementadas con Entity Framework Core.
- Las relaciones entre contextos se modelan por identificador (`batchId`, `userId`) y no por referencia directa, respetando los límites de cada bounded context.

### 4.7.1. Class Diagrams

**Identity & Access Management.** `User` es el aggregate root de la identidad: controla su estado (`Invited`, `Active`, `Locked`, `Disabled`), sus roles y los intentos fallidos de inicio de sesión. `ElectronicSignature` registra quién firmó qué registro y con qué significado. Los servicios de tokens (JWT), hashing (BCrypt) y TOTP se definen como interfaces implementadas en la capa de infraestructura.

![Class Diagram - IAM](../assets/img/chapter4/diagram-class/class-01-iam.png)

**Organizations & Profiles.** `Organization` agrupa sus plantas y se identifica por el value object `Ruc`; `Profile` guarda los datos y preferencias de cada usuario; `ContactInquiry` registra las consultas enviadas desde el formulario "Contact us" de la Web Application y, mediante una policy, avisa al equipo de DoofPlus.

![Class Diagram - Organizations & Profiles](../assets/img/chapter4/diagram-class/class-02-organizations.png)

**Subscriptions & Payments.** `Subscription` controla el ciclo de vida de la suscripción y sus pagos; `Plan` define precios y límites. `PaymentGateway` abstrae la pasarela y `NiubizPaymentGateway` la implementa.

![Class Diagram - Subscriptions & Payments](../assets/img/chapter4/diagram-class/class-03-subscriptions.png)

**Manufacturing & Batch Management.** `ProductionBatch` es el aggregate central del dominio: concentra el ciclo de vida del lote (`Planned` a `Released` o `Rejected`), sus consumos de insumos, parámetros de proceso, incidencias y su línea de tiempo (`BatchEvent`). `ProductionOrder`, `MasterFormula`, `Product` y `RawMaterialLot` completan el contexto.

![Class Diagram - Manufacturing & Batch Management](../assets/img/chapter4/diagram-class/class-04-manufacturing.png)

**IoT Monitoring.** `Equipment` mantiene su historial de calibraciones y mantenimientos y define si está apto para producción; `IoTDevice` representa un sensor de ThingsBoard asignable a un lote; `TelemetryReading` guarda cada lectura y `AlertRuleEvaluator` genera las alertas.

![Class Diagram - IoT Monitoring](../assets/img/chapter4/diagram-class/class-05-iot.png)

**Quality & Compliance.** `QualityDocument` gestiona versiones y aprobación de SOP y protocolos; `MaterialApproval` registra el dictamen de cada lote de insumo; `BatchReview` controla la cuarentena, evaluación y liberación del lote y emite el `ReleaseCertificate`; `AnalyticalResult` calcula el resultado y detecta los OOS. `Deviation` controla la clasificación, investigación, causa raíz y acciones CAPA hasta su cierre; `Audit` registra hallazgos y observaciones; `AuditTrailEntry`, de solo inserción, persiste el read model "Audit trail" del Design-Level EventStorming; `RegulatoryReport` guarda los reportes generados.

![Class Diagram - Quality & Compliance](../assets/img/chapter4/diagram-class/class-06-quality.png)

## 4.8. Database Design

La base de datos de DoofPlus se implementa en MySQL 8 y se genera a partir de las entidades del RESTful API con Entity Framework Core. Sus principales características son:

- **Organización por bounded context:** cada contexto tiene su propio conjunto de tablas, que corresponde a sus aggregates. Dentro de un contexto se usan llaves foráneas; entre contextos las referencias son lógicas (solo el identificador) y se marcan como "ref <contexto>.<tabla>" en los diagramas.
- **Convenciones:** nombres en inglés, en snake_case y en plural, aplicados con la convención `UseSnakeCaseNamingConvention()` del `AppDbContext`; llaves primarias `bigint AUTO_INCREMENT`; restricciones `NOT NULL`, `UNIQUE` y estados como enumeraciones en texto.
- **Auditoría e integridad:** todas las tablas incluyen `created_at` y `updated_at` (omitidos en los diagramas); `audit_trail_entries` es de solo inserción y `electronic_signatures` conserva las firmas de cada registro, en línea con los principios ALCOA y 21 CFR Part 11.

### 4.8.1. Database Diagrams

Los diagramas se elaboraron con Mermaid (Diagram-as-Code), uno por bounded context:

| Bounded context | Tablas | Aggregates que persiste |
| --- | --- | --- |
| IAM | users, roles, user_roles, electronic_signatures | User, ElectronicSignature |
| Organizations & Profiles | organizations, plants, profiles, contact_inquiries | Organization, Profile, ContactInquiry |
| Subscriptions & Payments | plans, subscriptions, payments | Plan, Subscription |
| Manufacturing & Batch Management | products, master_formulas, formula_components, raw_material_lots, production_orders, production_batches, material_consumptions, process_parameters, incidents, batch_events | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch |
| IoT Monitoring | equipment, calibration_records, maintenance_records, iot_devices, telemetry_readings, alert_rules, alerts | Equipment, IoTDevice, TelemetryReading, Alert |
| Quality & Compliance | quality_documents, document_versions, material_approvals, analytical_results, batch_reviews, evidence_attachments, release_certificates, deviations, capa_actions, audits, audit_findings, audit_trail_entries, regulatory_reports | QualityDocument, MaterialApproval, AnalyticalResult, BatchReview, Deviation, Audit, AuditTrailEntry, RegulatoryReport |

**Identity & Access Management**

![Database Diagram - IAM](../assets/img/chapter4/database/db-01-iam.png)

**Organizations & Profiles**

![Database Diagram - Organizations](../assets/img/chapter4/database/db-02-organizations.png)

**Subscriptions & Payments**

![Database Diagram - Subscriptions](../assets/img/chapter4/database/db-03-subscriptions.png)

**Manufacturing & Batch Management**

![Database Diagram - Manufacturing](../assets/img/chapter4/database/db-04-manufacturing.png)

**IoT Monitoring**

![Database Diagram - IoT](../assets/img/chapter4/database/db-05-iot.png)

**Quality & Compliance (documentos, insumos, resultados, liberación, desviaciones, CAPA, auditorías y reportes)**

![Database Diagram - Quality & Compliance](../assets/img/chapter4/database/db-06-quality.png)

La fuente Structurizr DSL de los diagramas C4 se encuentra en `assets/diagrams/structurizr/workspace.dsl`, y las fuentes Mermaid de los diagramas de clases y de base de datos, en `assets/diagrams/mermaid`.
