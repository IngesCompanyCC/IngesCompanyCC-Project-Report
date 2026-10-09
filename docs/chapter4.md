# Capítulo IV: Product Design

En este capítulo se detallan las decisiones de diseño del producto para su plataforma DoofPlus, junto con la Landing Page. Se establecen guías de estilo visuales, arquitectura de la información (AI) y criterios que aseguran que la experiencia de usuario (UX) sea intuitiva y profesional, donde alineamos a las exigencias en las máquinas de la industria farmacéutica y entidades regulatorias para la calidad de los fármacos como la DIGEMID.

## 4.1. Style Guidelines


En esta sección se establecen las bases visuales y de comunicación para DoofPlus, centralizando los recursos que serán de uso común para todo el equipo de desarrollo y diseño. El objetivo es garantizar una presentación consistente, inclusiva y enfocada a través de todos los puntos de contacto del producto, facilitando la mantenibilidad y escalabilidad del código y del diseño a lo largo del ciclo de vida del proyecto.

### 4.1.1. General Style Guidelines

Para asegurar una interfaz coherente y alineada con los estándares que exige la industria farmacéutica, el sistema de diseño de DoofPlus toma como base **Material Design**, el lenguaje de diseño indicado para el proyecto. En la Web Application se implementa con **Angular CLI** usando un tema basado en **Material Design**, y en la Landing Page con ***HTML5*** y ***CSS3*** respetando los mismos tokens de color, tipografía y espaciado.

#### Branding:
El logotipo escogido para DoofPlus comunica de forma directa y sintética la propuesta de valor del sistema: la integración de la automatización industrial con la rigurosidad del control farmacéutico. Para la sección de Branding, el análisis de los componentes de dicho logotipo se desglosa de la siguiente manera:

<p align="center">
  <img src="../assets/img/chapter4/doofplus-logo.png" alt="DoofPlus Logo" width="350px" />
</p>

- **Maquinaria y cinta transportadora:** la silueta industrial con cápsulas en la cinta representa el núcleo operativo de la plataforma: la manufactura y la conexión IoT en la línea de producción.
- **Escudo de verificación:** representa el aseguramiento de la calidad y transmite protección de los datos y cumplimiento de las BPM exigidas por DIGEMID.
- **Construcción tipográfica y cromática:** el nombre DoofPlus usa una fuente sans-serif sólida; “Doof” en azul pizarra oscuro evoca la base tecnológica y “Plus” en verde marino (#0D9488) conecta con la salud y la validación de procesos.

Para su uso en las interfaces se definieron dos versiones horizontales del logotipo: a color, para fondos claros (barra de navegación de la Landing Page y de la Web Application), y en blanco, para fondos oscuros (footer de la Landing Page y barras de color). Ambas se usan como componentes reutilizables en Figma.

|                             Versión a color (fondos claros)                             | Versión blanca (fondos oscuros) |
|:---------------------------------------------------------------------------------------:| :---: |
| <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-color.png" width="300"> | <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-white.png" width="300" style="background:#0F172A"> |

#### Typography
La tipografía de DoofPlus es Inter, una fuente sans-serif moderna y legible con pesos de Thin a Black y sus versiones itálicas. Su diseño garantiza una lectura clara de datos numéricos críticos, tablas de lotes y gráficos de telemetría tanto en monitores como en dispositivos móviles. La jerarquía tipográfica es la siguiente:

![Typography](../assets/img/chapter4/typography-guide.png)

| **Elemento** | **Tamaño (desktop)** | **Peso** | **Uso** |
| --- | --- | --- | --- |
| H1 – Título principal | 3rem (48 px), interlineado 1.1 | Semi Bold (600) | Título del hero de la Landing Page |
| H2 – Título de sección o pantalla | 2rem (32 px), interlineado 1.2 | Semi Bold (600) | Secciones de la Landing Page y títulos de pantalla |
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

![paleta-colores](../assets/img/chapter4/colors-palette.png)

#### Spacing

El espaciado se rige por la cuadrícula de 8 puntos de Material Design, que asegura un ritmo vertical constante y facilita la lectura rápida de reportes técnicos:

- **Márgenes:** 64 px en las páginas públicas (Landing Page e inicio de sesión) y 32 px como margen interior del área de trabajo de la Web Application.
- **Espacio entre elementos:** 24 px de separación (gutter) entre columnas y tarjetas, y 16 px de padding interno en los elementos.
- **Geometría:** radio de 8 px en controles, 16 px en tarjetas y forma de píldora en botones de la Landing Page; bordes de 1 px (#E2E8F0).
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
- Cards y Data Tables: Las tarjetas (Cards) estructuran la información de los módulos del sistema (IoT, Compliance, Auditorías) en la Landing Page. Para la aplicación web, el componente central son las Tablas de Datos (Data Tables), diseñadas con bordes sutiles y alternancia de color (Zebra striping) para facilitar la lectura de expedientes de lotes y registros inmutables (Audit Trail) sin fatiga visual.

2. Responsive Design
- Desktop: Orientado al Jefe de Producción y al Administrador. La navegación principal es visible en una barra lateral o superior. El contenido aprovecha múltiples columnas para desplegar gráficos unificados de rendimiento y tablas complejas de fórmulas maestras en monitores de estaciones de trabajo.
- Tablet: Orientado al Especialista QA/QC en la línea de producción. La cuadrícula se adapta a un diseño compacto. Los botones, selectores de estado y campos táctiles se ajustan a un área mínima de 48x48 píxeles para facilitar la interacción de operarios que utilicen guantes de nitrilo o equipos de protección.
- Mobile: Optimizado para la lectura rápida y atención de emergencias. El diseño colapsa a una sola columna y la navegación se agrupa en un menú hamburguesa. Los elementos interactivos priorizan la visualización de notificaciones de urgencia.

3. Interaction Design
- Botones: las llamadas a la acción (CTA) usan el color primario (#0F766E) con texto blanco; las acciones secundarias usan botones outlined. Los estados hover, focus (con contorno visible para teclado), active y disabled están definidos para asegurar la accesibilidad. Las acciones destructivas o de rechazo de lotes usan el color de error y piden confirmación.
- Formularios y Validaciones: Los formularios marcan los campos obligatorios con un asterisco y validan los datos antes del envío. Ante un error, el campo se resalta con el color de error, se muestra un mensaje descriptivo debajo y un aviso general en la parte superior del formulario, conservando los datos ingresados.
- Selector de idioma: componente EN/ES (mat-button-toggle-group) visible en todas las pantallas públicas y autenticadas; inglés (en-US) es el idioma por defecto.

4. Images and Icons
- Imágenes: En la Landing Page se utilizan fotografías de alta calidad, optimizadas en formato WebP, que evocan el entorno de manufactura: líneas de producción automatizadas, laboratorios esterilizados y operarios utilizando tablets. Refuerzan el mensaje de tecnología aplicada al cumplimiento BPM.
- Íconos: Se emplea la biblioteca Material Symbols (variante Rounded) para un estilo lineal y minimalista. Estos íconos ofrecen una guía visual rápida para representar servicios críticos: un microchip o antena para la telemetría, un escudo con un símbolo de check para el cumplimiento regulatorio y cápsulas o maquinaria para la gestión de producción.

5. Repositorio Central
- Organización: el proyecto de la Web Application en Angular se organiza por bounded context dentro de `src/app`: `iam`, `organizations`, `subscriptions`, `manufacturing`, `iot-monitoring` y `quality`, cada uno con las capas `domain`, `application`, `infrastructure` y `presentation`. Los elementos comunes (layout, toolbar, footer, selector de idioma y cliente REST base) se ubican en `src/app/shared`; los estilos globales y los design tokens de color, tipografía y espaciado, en `src/styles.css`; las imágenes e íconos, en `public/images`, y las traducciones, en `public/i18n` (`en.json`, idioma por defecto, y `es.json`). La Landing Page aplica los mismos tokens en su hoja de estilos.
- Versionado: Se utiliza Git gestionado desde GitHub como sistema de control de versiones central. El equipo aplica GitFlow y Conventional Commits para gestionar los cambios en el código, lo que ayuda a garantizar que el entorno de desarrollo mantenga una integración continua y una versión estable del producto en todo momento. Además, se aplica Semantic Versioning para darle un orden a las versiones.


## 4.2. Information Architecture

La arquitectura de la información de DoofPlus establece las decisiones que dirigen la organización del contenido en las experiencias web, lo que está orientado a que tanto los visitantes del sector comercial como los usuarios operativos, que forman parte de los segmentos objetivos, se adapten con facilidad a la funcionalidad del producto y puedan encontrar lo que necesitan sin esfuerzo.

### 4.2.1. Organization Systems

Para estructurar los grupos de información de la plataforma se aplican los siguientes sistemas de organización y esquemas de categorización:

- **Organización jerárquica (visual hierarchy):** en la Landing Page el contenido va de mayor a menor impacto: propuesta de valor (Home), acceso por segmento (Get Started), servicios, características, video, beneficios, planes, testimonios, preguntas frecuentes, contacto y, al final, la startup y su equipo.
- **Organización secuencial (step-by-step):** en el ingreso a la Web Application (elección del entorno → inicio de sesión → 2FA) y en los flujos regulados, como la recepción de materias primas (recepción → muestreo → inspección → aprobado o rechazado) y la liberación de un lote (cuarentena → evaluación de resultados → firma electrónica).
- **Organización matricial:** en los dashboards, que cruzan lotes, variables de equipos e indicadores de cumplimiento.
- **Categorización cronológica:** en el audit trail, la línea de tiempo del lote y la telemetría IoT, ordenados por fecha y hora.
- **Categorización por tópicos:** en el repositorio documental (protocolos, SOP, especificaciones) y en la navegación por módulos.
- **Categorización por audiencia:** en la Landing Page (llamadas a la acción para QA/QC y para Producción) y en la Web Application (entornos de calidad y de producción según el rol).

### 4.2.2. Labeling Systems

Para asegurar la simplicidad y evitar la confusión de los visitantes y usuarios, la representación de los datos se realiza mediante etiquetas que utilizan el mínimo número de palabras posibles, lo que representa la terminología técnica de la industria farmacéutica:

- Landing Page: las etiquetas de la barra de navegación usan asociaciones estándar de una o dos palabras: "Home", "Features" (módulos técnicos), "Benefits", "Plans" (planes y precios) y "About Us", además de "Sign in" (inicio de sesión) y "Get Started" (acceso por segmento). En español latinoamericano se muestran como "Inicio", "Características", "Beneficios", "Planes", "Nosotros", "Iniciar sesión" y "Comenzar".
- Web Application: las etiquetas operativas siguen el Ubiquitous Language de la sección 2.5 y se definen en inglés, idioma por defecto, con su traducción al español: "Batches" (Lotes) agrupa el historial de fabricación, "Raw materials" (Materias primas) la recepción y cuarentena de insumos, "Deviations" y "CAPA plans" (Desviaciones y planes CAPA) las incidencias y su corrección, y "Audit trail" (registro de auditoría) el registro inmutable de cambios. Los estados que se muestran en pantalla son los definidos en el modelo de dominio (por ejemplo, Planned, In progress, On hold, Release requested, Released y Rejected para los lotes).

### 4.2.3. SEO Tags and Meta Tags

Para el posicionamiento y la indexación correcta de las principales páginas de la experiencia web, se asignan los siguientes valores mínimos exigidos:

Valores para la Landing Page (sitio estático indexable):

| **Página** | **Title** | **Meta description** | **Meta keywords** | **Author** |
| --- | --- | --- | --- | --- |
| Landing Page (index.html) | DoofPlus \| Pharmaceutical Quality & Batch Traceability Platform | SaaS platform that centralizes quality documentation, batch traceability, deviations and IoT data for pharmaceutical laboratories (GMP/DIGEMID). | pharmaceutical quality management, batch traceability, GMP, DIGEMID, CAPA, audit trail, IoT | IngesCompany |
| Contact us (contact.html) | Contact us \| DoofPlus | Send your questions about DoofPlus and its plans to the IngesCompany team. | DoofPlus contact, pharmaceutical quality software, GMP software Peru | IngesCompany |

Valores para las vistas principales de la Web Application. Al ser una SPA, el título se actualiza en cada cambio de ruta con la propiedad `title` de las rutas de Angular Router y la descripción con el servicio `Meta` de Angular; keywords y author se definen una vez en `index.html` con los mismos valores de la Landing Page:

| **Vista de la Web Application** | **Title** | **Meta description** |
| --- | --- | --- |
| Choose your environment | Sign in \| DoofPlus | Choose the QA/QC, Production or Administration environment of DoofPlus. |
| Sign in (por entorno) | Sign in to {environment} \| DoofPlus | Secure access to DoofPlus with two-factor authentication. |
| Quality dashboard | Quality Dashboard \| DoofPlus | Pending batches, open deviations and quality indicators. |
| Production dashboard | Production Console \| DoofPlus | Active production orders, batch status and alerts. |
| Batch detail | Batch {batchNumber} \| DoofPlus | Complete traceability timeline of a pharmaceutical batch. |
| Deviations & CAPA | Deviations & CAPA \| DoofPlus | Register, investigate and close deviations with CAPA. |

### 4.2.4. Searching Systems

Para que los usuarios no se pierdan en el volumen de información generado por la producción y la telemetría, la Web Application ofrece:

- **Búsqueda global:** barra en el encabezado para consultar por identificador exacto (número de lote, código de documento o de sensor).
- **Filtros combinados:** por estado del lote (Planned, In progress, On hold, Release requested, Released, Rejected), rango de fechas de fabricación, severidad de la desviación (Minor, Major, Critical) y tipo de documento.
- **Presentación de resultados:** tabla de datos de Angular Material (`mat-table` con `MatPaginator` y `MatSort`) paginada y ordenable que resalta la coincidencia y muestra el estado actual de cada registro; si no hay resultados se muestra un mensaje con sugerencias.

### 4.2.5. Navigation Systems

Las acciones y técnicas que guían a los usuarios son:

1. ***Landing Page:***
- **Navegación por anclas:** barra superior fija con enlaces a cada sección y desplazamiento suave; en mobile, menú hamburguesa que se abre como overlay.
- **Llamadas a la acción por segmento:** la sección "Get Started" ofrece una tarjeta por segmento; cada una lleva directamente al inicio de sesión de su entorno en la Web Application (QA/QC o Producción). El enlace "Sign in" de la barra lleva a la elección de entorno, y "Register your laboratory" al registro de la organización.
- **Páginas secundarias:** "Contact us" (formulario de consultas), "Terms of Service" y "Privacy Policy", enlazadas desde el footer.

2. ***Web Application:***
- **Ingreso por entorno:** la elección de entorno (QA/QC, Production o Administration) precede al inicio de sesión; cada entorno se reconoce por su color, ícono y módulos.
- **Navegación global:** barra lateral (sidebar) con los módulos del entorno. QA/QC: Quality overview, Quality indicators, Quality documents, Deviations, CAPA plans, Batch release, Analytical results, Audits, Audit trail, Regulatory reports y Tasks & collaboration. Production: Production overview, Production orders, Products & formulas, Batches, Raw materials, Equipment & sensors, IoT overview, Incidents y Tasks & collaboration. Administration: Administration overview, Users & profiles, Organizations, Subscriptions & payments, Audit trail y Tasks & collaboration.
- **Barra superior:** búsqueda global, selector de idioma y avatar del usuario, que abre "Profile & preferences".
- **Navegación contextual:** breadcrumbs para ubicar al usuario dentro de un expediente y regresar a vistas generales.

3. **Navegación por teclado y accesibilidad:** orden de tabulación lógico, foco visible y atributos ARIA en menús y diálogos.

## 4.3. Landing Page UI Design

La propuesta de UI de la Landing Page traduce las decisiones de las secciones anteriores: la jerarquía visual ordena el contenido desde la propuesta de valor hasta la presentación de la startup; las etiquetas (Home, Features, Benefits, Plans, About Us) siguen el Labeling System; la barra fija con anclas, las llamadas a la acción por segmento y el enlace "Sign in" implementan el Navigation System; y el Design System de la sección 4.1 (Inter, verde azulado #0F766E, azul pizarra #0F172A y Material Symbols Rounded) se aplica de forma consistente con la Web Application. La Landing Page atiende las user stories US01 a US05 y US44 a US49.

Las secciones se presentan en el siguiente orden, que prioriza la información que el visitante necesita para decidir (qué es DoofPlus, qué ofrece y cuánto cuesta) antes que la presentación del equipo:

| N.° | Sección | Contenido | User stories |
| --- | --- | --- | --- |
| 1 | Home | Propuesta de valor, botón "Get Started" y enlace "View plans" | US01 |
| 2 | Get Started | Una tarjeta por segmento con acceso al inicio de sesión de su entorno y el enlace "Register your laboratory" | US48, US50 |
| 3 | Services | Cuatro servicios principales con ícono y descripción | US02 |
| 4 | Features | Acordeón con las funcionalidades clave | US02 |
| 5 | About the product (video) | Video promocional embebido | US49 |
| 6 | Benefits | Beneficios medibles para el laboratorio | US02 |
| 7 | Plans | Planes Standard Lab y Enterprise con selector mensual/anual | US03, US51 |
| 8 | Testimonials | Opiniones de clientes | US01 |
| 9 | FAQ | Preguntas frecuentes en acordeón | US05 |
| 10 | Contact | Banda de llamada a la acción "Contact us" | US04 |
| 11 | About Us | Misión y visión de IngesCompany | US45 |
| 12 | Our Team | Integrantes del equipo y Video About-the-Team embebido | US45 |
| 13 | Footer | Logotipo blanco, enlaces, contacto, términos, privacidad y selector de idioma | US46, US47 |

### 4.3.1. Landing Page Wireframe

Los wireframes son de baja fidelidad: los textos se representan con barras, las imágenes con un recuadro cruzado y los íconos con círculos; solo se conservan los títulos y las etiquetas de los botones, que definen la estructura. Así se valida la disposición y el flujo de la información sin decidir aún colores ni contenido final.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** barra superior fija con el logotipo, los enlaces a las secciones, "Sign in" y "Get Started". Debajo, el título de la propuesta de valor, un párrafo breve, los dos botones y una imagen del producto a la derecha.

![Landing Page Wireframe · Home](../assets/img/chapter4/landing-page/wireframes/desktop/01-home.png)

**Get Started:** dos tarjetas, una por segmento (QA/QC y Production), cada una con su descripción y su botón de acceso; debajo, el enlace para registrar un laboratorio nuevo.

![Landing Page Wireframe · Get Started](../assets/img/chapter4/landing-page/wireframes/desktop/02-get-started.png)

**Services:** cuatro tarjetas en una fila, cada una con ícono, título y descripción.

![Landing Page Wireframe · Services](../assets/img/chapter4/landing-page/wireframes/desktop/03-services.png)

**Features:** imagen a la izquierda y acordeón a la derecha; solo un elemento permanece abierto a la vez.

![Landing Page Wireframe · Features](../assets/img/chapter4/landing-page/wireframes/desktop/04-features.png)

**About the product (video):** título, descripción y un reproductor de video centrado.

![Landing Page Wireframe · Video](../assets/img/chapter4/landing-page/wireframes/desktop/05-about-the-product-video.png)

**Benefits:** cuatro tarjetas con una cifra destacada y su explicación.

![Landing Page Wireframe · Benefits](../assets/img/chapter4/landing-page/wireframes/desktop/06-benefits.png)

**Plans:** selector mensual/anual y dos tarjetas de plan con precio, lista de características y botón de suscripción.

![Landing Page Wireframe · Plans](../assets/img/chapter4/landing-page/wireframes/desktop/07-plans.png)

**Testimonials:** tres tarjetas con cita, nombre y cargo.

![Landing Page Wireframe · Testimonials](../assets/img/chapter4/landing-page/wireframes/desktop/08-testimonials.png)

**FAQ:** lista de preguntas en acordeón.

![Landing Page Wireframe · FAQ](../assets/img/chapter4/landing-page/wireframes/desktop/09-faq.png)

**Contact:** banda horizontal con un mensaje y el botón "Contact us", que abre la página de contacto.

![Landing Page Wireframe · Contact](../assets/img/chapter4/landing-page/wireframes/desktop/10-contact.png)

**About Us:** texto de misión y visión junto a una imagen.

![Landing Page Wireframe · About Us](../assets/img/chapter4/landing-page/wireframes/desktop/11-about-us.png)

**Our Team:** cuadrícula de tarjetas con foto, nombre y rol, y debajo el reproductor del Video About-the-Team con su descripción y capítulos.

![Landing Page Wireframe · Our Team](../assets/img/chapter4/landing-page/wireframes/desktop/12-our-team.png)

**Footer:** logotipo, columnas de enlaces (producto, empresa y legal), datos de contacto, derechos de autor y selector de idioma.

![Landing Page Wireframe · Footer](../assets/img/chapter4/landing-page/wireframes/desktop/13-footer.png)

**Páginas secundarias (Desktop):** la página "Contact us" contiene el formulario de consultas (nombre, correo y consulta); si el correo es inválido o la consulta está vacía, se muestra el estado "Invalid data" con los campos resaltados; si el envío es correcto, se muestra "Message sent". El footer enlaza además "Terms of Service" y "Privacy Policy".

| Contact us | Contact us · Invalid data | Message sent |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us.png) | ![Contact us · Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-message-sent.png) |

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

En mobile las mismas secciones se apilan en una sola columna, en el mismo orden; las tarjetas ocupan todo el ancho y la navegación se agrupa en un menú hamburguesa que se abre como overlay.

![Landing Page Wireframe · Mobile (1)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-1.png)

![Landing Page Wireframe · Mobile (2)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-2.png)

![Landing Page Wireframe · Mobile (3)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-3.png)

| Menu open | Contact us | Contact us · Invalid data | Message sent |
| :---: | :---: | :---: | :---: |
| ![Menu open](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-menu-open.png) | ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us.png) | ![Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-message-sent.png) |

### 4.3.2. Landing Page Mock-up

Los mock-ups aplican sobre los wireframes el Design System de la sección 4.1 y se presentan en inglés (en-US), idioma por defecto; el selector "EN / ES" de la barra de navegación cambia todos los textos al español latinoamericano (es-419). Se aplican además criterios de diseño inclusivo: contraste alto entre texto y fondo, botones con texto explícito, estados que no dependen solo del color y áreas táctiles de 48 px.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** la barra blanca muestra el logotipo a color, los enlaces Home, Features, Benefits, Plans y About Us, el selector de idioma, "Sign in" y el botón "Get Started". El hero presenta el título "The future of pharmaceutical quality management", una descripción breve, el botón "Get Started" (desplaza a la sección del mismo nombre) y "View plans" (desplaza a Plans).

![Landing Page Mock-up · Home](../assets/img/chapter4/landing-page/mockups/desktop/01-home.png)

**Get Started:** cada segmento tiene su tarjeta: "QA/QC Specialist" lleva al inicio de sesión del entorno QA/QC y "Production Supervisor" al del entorno de Producción. Los laboratorios que aún no usan DoofPlus encuentran el enlace "Register your laboratory", que abre el registro de la organización.

![Landing Page Mock-up · Get Started](../assets/img/chapter4/landing-page/mockups/desktop/02-get-started.png)

**Services:** "Real-time IoT monitoring", "Automated GMP compliance", "Immutable traceability" y "Digital batch management", cada uno con su ícono Material Symbols y una descripción breve.

![Landing Page Mock-up · Services](../assets/img/chapter4/landing-page/mockups/desktop/03-services.png)

**Features:** el acordeón presenta la integración de telemetría IoT, el motor de cumplimiento GMP, las alertas de desviación y el panel de indicadores; cada elemento se expande para mostrar su descripción.

![Landing Page Mock-up · Features](../assets/img/chapter4/landing-page/mockups/desktop/04-features.png)

**About the product (video):** el video promocional explica en pocos minutos cómo DoofPlus acompaña un lote desde la orden de producción hasta su liberación.

![Landing Page Mock-up · Video](../assets/img/chapter4/landing-page/mockups/desktop/05-about-the-product-video.png)

**Benefits:** cuatro tarjetas comunican los beneficios: menos tiempo de preparación de auditorías, registros sin transcripción manual, detección inmediata de desviaciones e infraestructura SaaS sin servidores propios.

![Landing Page Mock-up · Benefits](../assets/img/chapter4/landing-page/mockups/desktop/06-benefits.png)

**Plans:** se comparan Standard Lab (US$199 al mes; hasta 5 dispositivos IoT y 10 usuarios) y Enterprise (US$599 al mes; dispositivos y usuarios ilimitados, multi-sede). El selector "Monthly / Annual" muestra la modalidad anual (US$1,990 y US$5,990), equivalente a dos meses gratis. El botón de cada plan lleva al registro de la organización con el plan preseleccionado.

![Landing Page Mock-up · Plans](../assets/img/chapter4/landing-page/mockups/desktop/07-plans.png)

**Testimonials:** tres opiniones de profesionales de laboratorios farmacéuticos con su nombre y cargo.

![Landing Page Mock-up · Testimonials](../assets/img/chapter4/landing-page/mockups/desktop/08-testimonials.png)

**FAQ:** preguntas sobre cumplimiento normativo, integración IoT, planes y seguridad de los datos, en un acordeón.

![Landing Page Mock-up · FAQ](../assets/img/chapter4/landing-page/mockups/desktop/09-faq.png)

**Contact:** la banda invita a resolver dudas con el botón "Contact us", que abre la página del formulario de contacto.

![Landing Page Mock-up · Contact](../assets/img/chapter4/landing-page/mockups/desktop/10-contact.png)

**About Us:** presenta a IngesCompany, la startup detrás de DoofPlus, con su misión y su visión.

![Landing Page Mock-up · About Us](../assets/img/chapter4/landing-page/mockups/desktop/11-about-us.png)

**Our Team:** presenta a los integrantes de IngesCompany: Marcelo Angulo, Yhoshua Cobades, Ricardo Flores, Nestor Rojas y Rodolfo Zavaleta, con su foto, nombre y rol. Debajo se incrusta el Video About-the-Team, que resume el proceso de trabajo del equipo, la retrospectiva y el testimonio de cada integrante, con un enlace alternativo a YouTube.

![Landing Page Mock-up · Our Team](../assets/img/chapter4/landing-page/mockups/desktop/12-our-team.png)

**Footer:** fondo azul pizarra con el logotipo blanco, los enlaces de producto y de empresa, los datos de contacto (doofplus.inges@gmail.com, +51 (1) 234-5678, Lima, Perú), los enlaces "Terms of Service" y "Privacy Policy", el copyright de IngesCompany y el selector de idioma.

![Landing Page Mock-up · Footer](../assets/img/chapter4/landing-page/mockups/desktop/13-footer.png)

**Páginas secundarias (Desktop):** "Contact us" registra la consulta del visitante (US04); ante datos inválidos muestra el aviso general y el error bajo cada campo, conservando lo ingresado; tras un envío correcto confirma la recepción en "Message sent". "Terms of Service" y "Privacy Policy" presentan las condiciones de uso y el tratamiento de datos personales (US47).

| Contact us | Contact us · Invalid data | Message sent |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us.png) | ![Contact us · Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-message-sent.png) |

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

La versión mobile mantiene el orden y el contenido de desktop en una sola columna. El menú hamburguesa abre un overlay con los enlaces de navegación, "Sign in", "Get Started" y el selector de idioma.

![Landing Page Mock-up · Mobile (1)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-1.png)

![Landing Page Mock-up · Mobile (2)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-2.png)

![Landing Page Mock-up · Mobile (3)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-3.png)

| Menu open | Contact us | Contact us · Invalid data | Message sent |
| :---: | :---: | :---: | :---: |
| ![Menu open](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-menu-open.png) | ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us.png) | ![Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-message-sent.png) |


## 4.4. Web Applications UX/UI Design

La presente sección describe el diseño de experiencia de usuario (UX) e interfaz de usuario (UI) desarrollado para la plataforma web DoofPlus. La propuesta fue diseñada para apoyar la gestión integral de calidad farmacéutica bajo entornos regulados GxP, facilitando la administración documental, la trazabilidad de procesos productivos, la gestión de desviaciones y el monitoreo operativo de laboratorios y líneas de manufactura.

El diseño considera principios de usabilidad, accesibilidad, consistencia visual y eficiencia operativa, asegurando que los diferentes perfiles de usuario puedan ejecutar actividades críticas relacionadas con el cumplimiento normativo, la liberación de lotes y la auditoría regulatoria.

### 4.4.1. Web Applications Wireframes

En esta sección se presentan los wireframes diseñados para la aplicación web de DoofPlus. Cada pantalla fue desarrollada para gestionar procesos de calidad farmacéutica, producción regulada GxP, trazabilidad de lotes, control documental y cumplimiento normativo mediante firmas electrónicas y registros auditables.

A continuación, se muestran las representaciones esquemáticas de baja fidelidad que describen la estructura, distribución de componentes y funcionalidades principales de cada módulo de la plataforma.

- **Landing Page - DoofPlus**

Pantalla de presentación de la plataforma que comunica la propuesta de valor de DoofPlus y permite acceder al portal especializado para gestión de calidad y producción farmacéutica bajo normativas GxP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Landing%20Page.png)

- **Regulatory Identification - DoofPlus**

Pantalla de autenticación regulatoria que solicita las credenciales corporativas y la firma electrónica necesarias para acceder a funcionalidades sujetas a cumplimiento FDA 21 CFR Part 11 y normativas GxP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Login.png)

- **Environment Selection Portal - DoofPlus**

Interfaz que permite seleccionar el entorno de trabajo autorizado, diferenciando entre el segmento de calidad (QA/QC) y el entorno de producción farmacéutica.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Selección%20de%20Espacio.png)

- **QA & Lab Console Dashboard - DoofPlus**

Panel principal para usuarios de calidad que centraliza la supervisión de lotes pendientes, ensayos analíticos, desviaciones abiertas y actividades del laboratorio.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Dashboard%20Calidad.png)

- **Document Management & Master SOPs - DoofPlus**

Repositorio documental diseñado para gestionar procedimientos operativos estándar (SOPs), registros electrónicos, certificados de análisis y documentación regulatoria controlada.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Documentación.png)

- **Quality Protocols & Validation Management - DoofPlus**

Módulo destinado a la administración de protocolos de validación, cualificación de equipos y seguimiento de actividades relacionadas con IQ, OQ y PQ.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Protocolos.png)

- **Critical Deviations & CAPA Actions Control - DoofPlus**

Pantalla de seguimiento de desviaciones críticas, análisis de impacto GMP y control de acciones correctivas y preventivas (CAPA).

![Wireframe](../assets/img/chapter4/prototype/wireframes/Desviaciones.png)

- **Process Audit Master Plan - DoofPlus**

Módulo para planificar, ejecutar y monitorear auditorías internas, inspecciones regulatorias y hallazgos asociados al cumplimiento GMP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Auditorías.png)

- **GxP Regulatory Reports & Metrics - DoofPlus**

Panel de análisis que permite generar reportes regulatorios, revisar métricas de desempeño y exportar información validada para auditorías e inspecciones.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Reportes.png)

- **Analytical Testing & Microbiology Control (QC) - DoofPlus**

Pantalla de control de ensayos analíticos y microbiológicos que permite gestionar muestras, equipos de laboratorio y resultados fuera de especificación (OOS).

![Wireframe](../assets/img/chapter4/prototype/wireframes/Ensayos.png)

- **Analytical Results Entry & Validation - DoofPlus**

Interfaz destinada al registro y validación de resultados analíticos, integrando verificación de especificaciones y aprobación mediante firma electrónica.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Resultados.png)

- **Pharmaceutical Batch History & Traceability - DoofPlus**

Módulo de consulta histórica que permite rastrear lotes farmacéuticos, consultar estados regulatorios y acceder a certificados de análisis.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Historial%20de%20Lotes.png)

- **Cross-Traceability & Audit Center - DoofPlus**

Centro de trazabilidad que integra genealogía de lotes, registros de laboratorio, documentación asociada y auditoría completa de eventos regulatorios.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Centro%20de%20Trazabilidad.png)

- **GxP Production Control Console - DoofPlus**

Panel principal del entorno de producción que permite supervisar órdenes activas, progreso de eBR y estado de los procesos de manufactura.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Dashboard%20Producción.png)

- **GxP Batch Execution & Management Console - DoofPlus**

Interfaz para la gestión operativa de lotes de fabricación, incluyendo seguimiento de etapas de producción, firmas electrónicas y responsables asignados.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Gestión%20de%20Lotes.png)

- **GxP Incident Registration & Deviation Management - DoofPlus**

Módulo de registro de incidencias que permite documentar eventos de desviación, adjuntar evidencias y gestionar acciones de contención.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Incidencias.png)

- **GxP Profile & Regulatory Credentials - DoofPlus**

Pantalla de perfil regulatorio donde los usuarios administran credenciales, firmas electrónicas y permisos asociados a los distintos contextos del sistema.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Perfil.png)

- **General Settings & GxP Policies - DoofPlus**

Módulo de configuración orientado a la administración de políticas GxP, parámetros de seguridad, auditorías internas y canales de notificación regulatoria.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Configuración.png)

### 4.4.2. Web Applications Wireflow Diagrams

Los Wireflow Diagrams se utilizan para representar visualmente la navegación y las interacciones que realizan los usuarios dentro de una aplicación para alcanzar un objetivo determinado. Estos diagramas combinan wireframes y flujos de usuario, permitiendo visualizar las diferentes pantallas involucradas en cada proceso y la secuencia de acciones necesarias para completar una tarea.

Para DoofPlus se desarrollaron distintos Wireflow Diagrams basados en los principales objetivos de los usuarios dentro de un entorno farmacéutico regulado por normas GxP. Cada diagrama describe el flujo que siguen los usuarios para gestionar procesos de producción, control de calidad, documentación regulatoria, trazabilidad y cumplimiento normativo.

**Especialista de Aseguramiento y Control de Calidad (QA/QC)**

**User Goal 1:** Acceder a la plataforma y configurar el entorno regulatorio de trabajo.

Como usuario, quiero ingresar a DoofPlus y configurar el entorno regulatorio correspondiente para acceder a los módulos y funciones necesarias para la gestión de calidad farmacéutica.

[User 1](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-1.png)

**User Goal 2:** Monitorear equipos y condiciones ambientales asociadas a la producción.

Como usuario, quiero supervisar el estado de los equipos y las variables ambientales críticas para asegurar que las operaciones de manufactura cumplan con los requisitos regulatorios establecidos.

[User 2](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-2.png)

**User Goal 3:** Gestionar lotes de producción y garantizar su trazabilidad.

Como usuario, quiero registrar y monitorear los lotes de producción para asegurar la trazabilidad completa desde su fabricación hasta su liberación.

[User 3](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-3.png)

**User Goal 4:** Consultar la trazabilidad histórica y el plan maestro de auditorías.

Como usuario, quiero acceder al historial de lotes y a los registros de auditoría para verificar evidencias de cumplimiento y mantener la integridad de la información regulatoria.

[User 4](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-4.png)

User Goal 5: Gestionar protocolos de laboratorio y validar resultados de calidad.

Como usuario de control de calidad, quiero administrar protocolos de laboratorio y registrar resultados analíticos para garantizar el cumplimiento de los estándares GxP y los procedimientos de validación.

[User 5](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-5.png)

**User Goal 6:** Supervisar desviaciones, CAPA y métricas regulatorias.

Como usuario, quiero registrar desviaciones, gestionar acciones correctivas y preventivas (CAPA) y consultar métricas regulatorias para facilitar el cumplimiento normativo y la mejora continua.

[User 6](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-6.png)

**Jefe o Supervisor de Producción Farmacéutica**

User Goal 1: Acceder al dashboard de calidad para supervisar el estado de los procesos.

Como especialista de QA, quiero acceder a un dashboard centralizado que me permita monitorear indicadores de calidad, lotes en revisión y elementos pendientes de validación.

[User 1](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-1.png)

User Goal 2: Gestionar auditorías y evidencias de cumplimiento regulatorio.

Como especialista de QA, quiero revisar auditorías y evidencias documentadas para verificar el cumplimiento de los requisitos regulatorios y de calidad.

[User 2](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-2.png)

User Goal 3: Registrar desviaciones e iniciar acciones CAPA.

Como especialista de QA, quiero registrar incidencias y gestionar acciones correctivas y preventivas para controlar riesgos y asegurar la mejora continua de los procesos.

[User 3](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-3.png)

User Goal 4: Gestionar protocolos de validación y control de calidad.

Como especialista de QA, quiero administrar protocolos de validación para verificar que los procesos y procedimientos cumplan con los requisitos regulatorios establecidos.

[User 4](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-4.png)

User Goal 5: Administrar documentación regulatoria y procedimientos operativos estándar.

Como especialista de QA, quiero gestionar documentos y SOPs para mantener registros controlados, actualizados y trazables dentro del sistema.

[User 5](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-5.png)

User Goal 6: Consultar reportes regulatorios y métricas de desempeño.

Como especialista de QA, quiero visualizar reportes regulatorios e indicadores de calidad para evaluar tendencias, identificar riesgos y respaldar la toma de decisiones.

[User 6](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-6.png)

### 4.4.3. Web Applications Mock-ups

En esta sección se presentan los mock-ups desarrollados para la aplicación web de DoofPlus. Estas representaciones de alta fidelidad muestran la apariencia final de la plataforma, incorporando la identidad visual del producto, componentes interactivos y elementos orientados al cumplimiento regulatorio farmacéutico bajo estándares GMP y FDA 21 CFR Part 11.

Los mock-ups fueron diseñados considerando los procesos críticos de aseguramiento y control de calidad, manufactura farmacéutica, trazabilidad de lotes y gestión documental, garantizando una experiencia de usuario intuitiva y alineada con los requisitos de integridad de datos, auditoría y firmas electrónicas.

- **Landing Page - DoofPlus**

Pantalla de presentación de la plataforma que comunica la propuesta de valor de DoofPlus y permite acceder al portal especializado para gestión de calidad y producción farmacéutica bajo normativas GxP.

![Mockup](../assets/img/chapter4/prototype/mockup/Landing%20Page.png)

- **Regulatory Identification - DoofPlus**

Pantalla de autenticación regulatoria que solicita las credenciales corporativas y la firma electrónica necesarias para acceder a funcionalidades sujetas a cumplimiento FDA 21 CFR Part 11 y normativas GxP.

![Mockup](../assets/img/chapter4/prototype/mockup/Login.png)

- **Environment Selection Portal - DoofPlus**

Interfaz que permite seleccionar el entorno de trabajo autorizado, diferenciando entre el segmento de calidad (QA/QC) y el entorno de producción farmacéutica.

![Mockup](../assets/img/chapter4/prototype/mockup/Selección%20de%20Espacio.png)

- **QA & Lab Console Dashboard - DoofPlus**

Panel principal para usuarios de calidad que centraliza la supervisión de lotes pendientes, ensayos analíticos, desviaciones abiertas y actividades del laboratorio.

![Mockup](../assets/img/chapter4/prototype/mockup/Dashboard%20Calidad.png)

- **Document Management & Master SOPs - DoofPlus**

Repositorio documental diseñado para gestionar procedimientos operativos estándar (SOPs), registros electrónicos, certificados de análisis y documentación regulatoria controlada.

![Mockup](../assets/img/chapter4/prototype/mockup/Documentación.png)

- **Quality Protocols & Validation Management - DoofPlus**

Módulo destinado a la administración de protocolos de validación, cualificación de equipos y seguimiento de actividades relacionadas con IQ, OQ y PQ.

![Mockup](../assets/img/chapter4/prototype/mockup/Protocolos.png)

- **Critical Deviations & CAPA Actions Control - DoofPlus**

Pantalla de seguimiento de desviaciones críticas, análisis de impacto GMP y control de acciones correctivas y preventivas (CAPA).

![Mockup](../assets/img/chapter4/prototype/mockup/Desviaciones.png)

- **Process Audit Master Plan - DoofPlus**

Módulo para planificar, ejecutar y monitorear auditorías internas, inspecciones regulatorias y hallazgos asociados al cumplimiento GMP.

![Mockup](../assets/img/chapter4/prototype/mockup/Auditorías.png)

- **GxP Regulatory Reports & Metrics - DoofPlus**

Panel de análisis que permite generar reportes regulatorios, revisar métricas de desempeño y exportar información validada para auditorías e inspecciones.

![Mockup](../assets/img/chapter4/prototype/mockup/Reportes.png)

- **Analytical Testing & Microbiology Control (QC) - DoofPlus**

Pantalla de control de ensayos analíticos y microbiológicos que permite gestionar muestras, equipos de laboratorio y resultados fuera de especificación (OOS).

![Mockup](../assets/img/chapter4/prototype/mockup/Ensayos.png)

- **Analytical Results Entry & Validation - DoofPlus**

Interfaz destinada al registro y validación de resultados analíticos, integrando verificación de especificaciones y aprobación mediante firma electrónica.

![Mockup](../assets/img/chapter4/prototype/mockup/Resultados.png)

- **Pharmaceutical Batch History & Traceability - DoofPlus**

Módulo de consulta histórica que permite rastrear lotes farmacéuticos, consultar estados regulatorios y acceder a certificados de análisis.

![Mockup](../assets/img/chapter4/prototype/mockup/Historial%20de%20Lotes.png)

- **Cross-Traceability & Audit Center - DoofPlus**

Centro de trazabilidad que integra genealogía de lotes, registros de laboratorio, documentación asociada y auditoría completa de eventos regulatorios.

![Mockup](../assets/img/chapter4/prototype/mockup/Centro%20de%20Trazabilidad.png)

- **GxP Production Control Console - DoofPlus**

Panel principal del entorno de producción que permite supervisar órdenes activas, progreso de eBR y estado de los procesos de manufactura.

![Mockup](../assets/img/chapter4/prototype/mockup/Dashboard%20Producción.png)

- **GxP Batch Execution & Management Console - DoofPlus**

Interfaz para la gestión operativa de lotes de fabricación, incluyendo seguimiento de etapas de producción, firmas electrónicas y responsables asignados.

![Mockup](../assets/img/chapter4/prototype/mockup/Gestión%20de%20Lotes.png)

- **GxP Incident Registration & Deviation Management - DoofPlus**

Módulo de registro de incidencias que permite documentar eventos de desviación, adjuntar evidencias y gestionar acciones de contención.

![Mockup](../assets/img/chapter4/prototype/mockup/Incidencias.png)

- **GxP Profile & Regulatory Credentials - DoofPlus**

Pantalla de perfil regulatorio donde los usuarios administran credenciales, firmas electrónicas y permisos asociados a los distintos contextos del sistema.

![Mockup](../assets/img/chapter4/prototype/mockup/Perfil.png)

- **General Settings & GxP Policies - DoofPlus**

Módulo de configuración orientado a la administración de políticas GxP, parámetros de seguridad, auditorías internas y canales de notificación regulatoria.

![Mockup](../assets/img/chapter4/prototype/mockup/Configuración.png)

### 4.4.4. Web Applications User Flow Diagrams

Los User Flow Diagrams representan la secuencia de acciones que realizan los usuarios dentro de la plataforma para alcanzar un objetivo específico. Estos diagramas permiten visualizar la navegación entre módulos, las decisiones tomadas durante el proceso y los diferentes escenarios que pueden ocurrir durante la interacción con el sistema.

Para DoofPlus se definieron distintos flujos asociados a los procesos críticos de calidad y manufactura farmacéutica. Cada User Flow se clasifica como Happy Path, cuando el usuario completa exitosamente el objetivo planteado, o Unhappy Path, cuando el flujo se origina a partir de una incidencia, desviación o situación excepcional que requiere atención y seguimiento.

***User Flow 1: Acceso a la plataforma y selección del entorno operativo***

Este flujo describe el proceso que realiza un usuario desde el ingreso a la plataforma hasta el acceso al entorno de trabajo correspondiente según su rol y permisos regulatorios.

**Happy Path**

Como usuario autorizado, quiero acceder a la plataforma, completar la autenticación regulatoria y seleccionar mi entorno de trabajo para comenzar a utilizar las funcionalidades correspondientes a mi perfil.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-1.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path*

Como usuario, quiero acceder a la plataforma y al entorno de manufactura para consultar indicadores regulatorios y reportes asociados al proceso productivo.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-1.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 2: Gestión de muestras y consulta de trazabilidad***

Este flujo representa el proceso mediante el cual un especialista de calidad registra una muestra, valida los resultados obtenidos y consulta posteriormente la trazabilidad asociada al lote analizado.

**Happy Path**

Como especialista de calidad, quiero registrar muestras y validar resultados analíticos para garantizar la trazabilidad y el cumplimiento de los procedimientos de laboratorio.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-2.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero consultar el historial de trazabilidad y auditoría de un lote para investigar eventos o situaciones excepcionales detectadas durante la producción.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-2.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 3: Registro de incidencias y gestión de desviaciones***

Este flujo muestra cómo una incidencia detectada durante las operaciones es registrada y posteriormente evaluada mediante el proceso de gestión de desviaciones y acciones correctivas.

**Happy Path**

Como especialista de calidad, quiero gestionar desviaciones y registrar acciones CAPA para corregir incumplimientos identificados y reducir riesgos regulatorios.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-3.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como operador de manufactura, quiero registrar una incidencia operativa para documentar una desviación que pueda afectar la calidad, seguridad o continuidad del proceso.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-3.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 4: Gestión documental y protocolos de validación***

Este flujo describe la administración de documentos regulados y protocolos de validación necesarios para mantener la conformidad con los estándares GMP.

**Happy Path**

Como especialista de calidad, quiero gestionar documentos y protocolos de validación para asegurar que los procedimientos se encuentren actualizados y correctamente controlados.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-4.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero monitorear equipos y consultar el estado de ejecución de lotes para identificar anomalías que puedan afectar la operación.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-4.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 5: Evaluación de cumplimiento regulatorio***

Este flujo representa el proceso de análisis del estado de cumplimiento mediante la revisión de desviaciones, validaciones y reportes regulatorios.

**Happy Path**

Como especialista de calidad, quiero revisar el estado del sistema de calidad y consultar métricas regulatorias para evaluar el nivel de cumplimiento de la organización.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-5.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero realizar seguimiento a la ejecución de lotes y verificar posteriormente la información de trazabilidad para investigar posibles desviaciones.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-5.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 6: Auditoría y trazabilidad de lotes***

Este flujo muestra cómo los usuarios acceden a la información histórica de los lotes y a los registros de auditoría para respaldar procesos de inspección y liberación farmacéutica.

**Happy Path**

Como especialista de calidad, quiero consultar la trazabilidad completa de un lote y revisar el historial de auditoría para verificar la integridad y consistencia de los registros.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-6.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero acceder al historial y la trazabilidad de un lote para analizar información relacionada con una situación excepcional o una observación generada durante el proceso productivo.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-6.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

## 4.5. Web Applications Prototyping

La sección de Web Applications Prototyping presenta los prototipos interactivos desarrollados para validar los flujos operativos y regulatorios de DoofPlus antes de su implementación. Estos prototipos permiten simular la experiencia real de navegación dentro de la plataforma, evaluando la accesibilidad, usabilidad y eficiencia de las interacciones propuestas.

El diseño de los prototipos fue guiado por cuatro principios fundamentales:

1. Cumplimiento regulatorio por diseño

Todas las interacciones fueron concebidas considerando requisitos de FDA 21 CFR Part 11, GMP y buenas prácticas de documentación, incorporando controles asociados a firmas electrónicas, auditoría de registros y segregación de funciones.

2. Arquitectura basada en procesos farmacéuticos

La navegación se organiza alrededor de los procesos más frecuentes dentro de la industria farmacéutica:

- Gestión documental regulatoria.
- Control y liberación de lotes.
- Investigación de desviaciones.
- Gestión CAPA.
- Auditorías regulatorias.
- Validación y control analítico.

3. Consistencia visual y operativa

Los prototipos mantienen una identidad visual uniforme mediante el uso consistente de colores institucionales, componentes reutilizables, tablas regulatorias y paneles de control orientados a la supervisión operativa.

4. Optimización para entornos de trabajo regulados

La interfaz prioriza:

- Acceso rápido a información crítica.
- Visualización inmediata del estado de cumplimiento.
- Reducción de errores durante el ingreso de datos.
- Navegación simplificada para procesos frecuentes.
- Facilidad de auditoría e inspección regulatoria.

Los prototipos permiten validar que las tareas principales del sistema, tales como consultar documentación aprobada, investigar desviaciones, ejecutar acciones CAPA y realizar auditorías internas, puedan completarse de forma eficiente y manteniendo la trazabilidad requerida por los estándares regulatorios del sector farmacéutico.

## 4.6. Domain-Driven Software Architecture
La arquitectura de DoofPlus se fundamenta en Domain-Driven Design (DDD) para modelar con precisión las reglas de negocio del sector farmacéutico exigida por DIGEMID. Mediante la delimitación de bounded contexts, se separan claramente las responsabilidades de cada subsistema. En esta sección se presentan los resultados del Event Storming, así como los diagramas de contexto, contenedores y componentes que estructuran la solución.

### 4.6.1. Design-Level Event Storming
Para identificar los eventos de dominio y profundizar en la arquitectura del sistema, el equipo de IngesCompany llevó a cabo una sesión de Design-Level Event Storming. Esta técnica permitió visualizar y comprender el flujo de eventos, reglas de negocio y dependencias tecnológicas, facilitando la identificación formal de los Contextos Delimitados de DoofPlus.
El desarrollo del proceso de Domain-Driven Design se realizó de manera colaborativa utilizando la plataforma Miro.
Enlace al tablero: [click aquí para ver el enlace](https://miro.com/app/board/uXjVHkhKOXE=/)
#### Paso 1: Timelines
Organizamos los eventos (post-its naranjas) en líneas de tiempo para visualizar la secuencia lógica de las operaciones de la plataforma SaaS y farmacéutica. Identificamos los siguientes flujos principales:

- Flujo B2B y Organizaciones: Registro de empresas clientes y configuración de perfiles corporativos.

- Flujo de Suscripciones (SaaS): Selección de planes, procesamiento de pagos y renovación o cancelación de suscripciones.

- Flujo de Identidad y Accesos: Inicio de sesión con autenticación de doble factor y cierre de sesión seguro.

- Flujo de Inventario: Registro de fármacos, recepción de materias primas y asignación de ubicación en almacén.

- Flujo de Fabricación: Creación de lotes, aprobación de órdenes, inicio y cierre de producción, y solicitud de liberación.

- Flujo de Calidad y Cumplimiento: Creación y publicación de protocolos, investigación de desviaciones (CAPA), revisión de lotes, generación de reportes y expedientes de trazabilidad.

- Flujo de Telemetría IoT: Registro automático de variables críticas, calibración de maquinaria y generación de alertas operativas o ambientales.

![timeline IAM](../assets/img/chapter4/design-level-event-storming/timelines/timeline-iam.png)
![timeline lotes](../assets/img/chapter4/design-level-event-storming/timelines/timeline-lotes.png)
![timeline telemetria](../assets/img/chapter4/design-level-event-storming/timelines/timeline-telemetria.png)
![timeline calidad](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad.png)
![timeline calidad2](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad2.png)
![timeline calidad3](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad3.png)
![timeline SaaS](../assets/img/chapter4/design-level-event-storming/timelines/timeline-saas.png)
![timeline B2B](../assets/img/chapter4/design-level-event-storming/timelines/timeline-b2b.png)

#### Paso 2: Commands
Definimos los comandos (post-its azules, acciones en verbo imperativo) que los actores ejecutan en el sistema para mutar el estado de la aplicación:

| Actor / Sistema | Comandos Principales (Intenciones de acción)                                                                                                                                                                                             |
| :--- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Administrador de Sistema** | Registrar empresa cliente, Asignar roles y permisos, Suspender cuenta de empresa, Seleccionar plan de suscripción, Procesar pago, Cancelar suscripción.                                                                                  |
| **Especialista de control de calidad (QA/QC)** | Iniciar sesión, Crear protocolo, Aprobar protocolo, Publicar versión, Clasificar desviación, Registrar acción correctiva, Iniciar auditoría, Registrar hallazgo, Evaluar lote, Aprobar distribución, Generar reporte.                    |
| **Jefe de Producción Farmacéutica** | Crear lote, Iniciar producción, Actualizar estado, Cerrar lote, Solicitar liberación, Registrar fármaco, Recibir materia prima, Calibrar maquinaria de producción, Monitorear producción.                                                |
| **Sistemas Internos / IoT** | Renovar suscripción, Rechazar pago, Registrar variables críticas, Registrar desviaciones, Generar alertas.                                                                                                                               |
![commands IAM](../assets/img/chapter4/design-level-event-storming/commands/commands-iam.png)
![commands lotes](../assets/img/chapter4/design-level-event-storming/commands/commands-lotes.png)
![commands telemetria](../assets/img/chapter4/design-level-event-storming/commands/commands-telemetria.png)
![commands calidad](../assets/img/chapter4/design-level-event-storming/commands/commands-calidad.png)
![commands calidad2](../assets/img/chapter4/design-level-event-storming/commands/commands-calidad2.png)
![commads SaaS](../assets/img/chapter4/design-level-event-storming/commands/commands-saas.png)
![commands B2B](../assets/img/chapter4/design-level-event-storming/commands/commands-b2b.png)

#### Paso 3: Policies & actors

Identificamos a los actores del sistema (post-its amarillos: Especialista QA/QC, Jefe de Producción, Administrador) y las reglas de negocio automáticas implícitas en el flujo para garantizar el cumplimiento de las BPM:

*   **CUANDO** se intenta iniciar sesión **ENTONCES** exigir validación mediante *Google Authenticator*[cite: 4].
*   **CUANDO** se procesa un pago a través de la pasarela **ENTONCES** renovar la suscripción y activar el panel[cite: 9].
*   **CUANDO** se recibe materia prima **ENTONCES** actualizar el *Inventario de Materia Prima y Almacén*[cite: 5].
*   **CUANDO** los dispositivos IoT registran desviaciones de parámetros **ENTONCES** disparar el motor de alertas y generar alerta ambiental de almacén[cite: 6].
*   **CUANDO** se identifica una causa raíz **ENTONCES** registrar acción correctiva en el registro CAPA[cite: 7].
*   **CUANDO** el Especialista QA aprueba la distribución **ENTONCES** generar reporte y certificado de calidad[cite: 8].
*   **CUANDO** se cierra el lote de producción **ENTONCES** habilitar la solicitud de liberación[cite: 5].
    ![policies lotes](../assets/img/chapter4/design-level-event-storming/policies/policy-lotes.png)
    ![policies telemetria](../assets/img/chapter4/design-level-event-storming/policies/policy-telemetria.png)
    ![policies calidad](../assets/img/chapter4/design-level-event-storming/policies/policy-calidad.png)
    ![policies saas](../assets/img/chapter4/design-level-event-storming/policies/policy-saas.png)

#### Paso 4: Read Models

Los Modelos de Lectura (post-its verdes) representan las vistas de consulta críticas que los actores necesitan para tomar decisiones:

*   **Administración B2B:** *Directorio de Empresas Clientes*, *Matriz de Roles y Permisos*, *Tabla de Planes de Suscripción*[cite: 9].
*   **Control de Acceso:** *Pantalla de Verificación 2FA*, *Estado de Sesión*[cite: 4].
*   **Producción y Logística:** *Panel de Control de Lote*, *Dashboard de Tendencias Operativas*, *Catálogo Maestro de Fármacos*, *Inventario de Materia Prima y Almacén*[cite: 5].
*   **Control de Calidad (QA/QC):** *Bandeja de Solicitudes de Calidad*, *Panel de Resultados de Laboratorio*, *Agenda y Registro de Auditorías*[cite: 7, 8].
*   **Monitoreo Industrial:** *Historial de Calibración de Maquinaria*, *Dashboard de Telemetría en Tiempo Real*, *Panel de Alertas y Desviaciones Sensoriales*[cite: 6].
    ![rm IAM](../assets/img/chapter4/design-level-event-storming/read-models/rm-iam.png)
    ![rm lotes](../assets/img/chapter4/design-level-event-storming/read-models/rm-lotes.png)
    ![rm telemetria](../assets/img/chapter4/design-level-event-storming/read-models/rm-telemetria.png)
    ![rm calidad](../assets/img/chapter4/design-level-event-storming/read-models/rm-calidad.png)
    ![rm calidad2](../assets/img/chapter4/design-level-event-storming/read-models/rm-calidad2.png)
    ![rm SaaS](../assets/img/chapter4/design-level-event-storming/read-models/rm-saas.png)
    ![rm B2B](../assets/img/chapter4/design-level-event-storming/read-models/rm-b2b.png)

#### Paso 5: External Systems

Mapeamos los sistemas e infraestructura externos (post-its rosados) que interactúan con nuestro dominio central para delegar responsabilidades específicas:

*   **Google Authenticator:** Utilizado en el proceso de inicio de sesión para el control de doble factor (2FA)[cite: 4].
*   **Pasarela de Pago:** Sistema financiero externo para procesar renovaciones o rechazar pagos de las suscripciones SaaS[cite: 9].
*   **Dispositivos IoT:** Hardware en planta encargado de capturar y emitir parámetros y variables críticas hacia el sistema[cite: 6].
*   **Motor de Alertas:** Servicio externo o microservicio encargado de despachar las alertas ambientales generadas por desviaciones de la maquinaria[cite: 6].
    ![es IAM](../assets/img/chapter4/design-level-event-storming/external-systems/es-iam.png)
    ![es lotes](../assets/img/chapter4/design-level-event-storming/external-systems/es-lotes.png)
    ![es telemetria](../assets/img/chapter4/design-level-event-storming/external-systems/es-telemetria.png)
    ![es calidad](../assets/img/chapter4/design-level-event-storming/external-systems/es-calidad.png)
    ![es calidad2](../assets/img/chapter4/design-level-event-storming/external-systems/es-calidad2.png)
    ![es SaaS](../assets/img/chapter4/design-level-event-storming/external-systems/es-saas.png)
    ![es B2B](../assets/img/chapter4/design-level-event-storming/external-systems/es-b2b.png)

#### Paso 6: Aggregates

Agrupamos los comandos y eventos en Agregados (grandes bloques amarillos centrales), los cuales actúan como las entidades transaccionales raíz que protegen la consistencia de los datos:

*   **Perfil Corporativo y Tenant:** Centraliza los datos de la empresa cliente y la asignación de roles.
*   **Motor de Facturación y Suscripción:** Gestiona el estado del plan, pagos y cuenta de la empresa[cite: 9].
*   **Módulo de Credenciales y Sesión:** Controla el ciclo de vida de la sesión autenticada[cite: 4].
*   **Inventario y Materia Prima:** Gestiona el catálogo de fármacos y la recepción logística[cite: 5].
*   **Lote de Producción:** Controla las órdenes, estados e incidencias del ciclo de manufactura[cite: 5].
*   **Registro de Maquinaria y Telemetría:** Agrupa la calibración de equipos, ingesta de parámetros y el cálculo de indicadores IoT[cite: 6].
*   **Repositorio Documental y Protocolos:** Controla las versiones y aprobaciones de los estándares de calidad[cite: 7].
*   **Registro de Investigación y CAPA:** Gestiona las desviaciones de calidad, análisis de causa raíz y verificaciones[cite: 7].
*   **Expediente de Trazabilidad y Auditoría:** Consolida rastreos de lotes, auditorías, hallazgos y certificados de liberación final[cite: 7, 8].
    ![aggregate IAM](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-iam.png)
    ![aggregate lotes](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-lotes.png)
    ![aggregate telemetria](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-telemetria.png)
    ![aggregate calidad](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-calidad.png)
    ![aggregate SaaS](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-saas.png)
    ![aggregate B2B](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-b2b.png)

#### Paso 7: Bounded Contexts

Finalmente, consolidamos la arquitectura modular de DoofPlus definiendo formalmente 6 *Bounded Contexts* a partir de la agrupación de los Agregados:

| Bounded Context | Agregados Core y Responsabilidad |
| :--- | :--- |
| **BC: Gestión de Organizaciones y Perfiles (B2B)** | Contiene *Perfil Corporativo y Tenant*. Gestiona el registro multi-tenant y la matriz de roles y permisos del sistema. |
| **BC: Gestión de suscripciones y pagos (SaaS)** | Contiene el *Motor de Facturación y Suscripción*. Administra los planes comerciales y la integración con la pasarela de pagos[cite: 9]. |
| **BC: Gestión de identidades y accesos (IAM)** | Contiene el *Módulo de Credenciales y Sesión*. Responsable de la seguridad, login y validación 2FA[cite: 4]. |
| **BC: Fabricación y gestión de lotes** | Agrupa *Inventario y Materia Prima* y *Lote de Producción*. Coordina todo el flujo operativo de manufactura farmacéutica[cite: 5]. |
| **BC: Telemetría y monitorización IoT** | Contiene el *Registro de Maquinaria y Telemetría*. Procesa la ingesta de datos industriales y el disparo del motor de alertas[cite: 6]. |
| **BC: Gestión de calidad y cumplimiento** | Agrupa el *Repositorio Documental*, *Registro CAPA* y el *Expediente de Trazabilidad y Auditoría*. Asegura las certificaciones, auditorías y liberación de producto[cite: 7, 8]. |
![bc IAM](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-iam.png)
![bc lotes](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-lotes.png)
![bc telemetria](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-telemetria.png)
![bc calidad](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-calidad.png)
![bc SaaS](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-saas.png)
![bc B2B](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-b2b.png)

### 4.6.2. Software Architecture Context Diagram

En esta sección, el equipo presenta el diagrama de contexto (Nivel 1 del modelo C4), el cual ofrece una visión general de alto nivel de la arquitectura de la plataforma **Doof-Plus**. El objetivo de este nivel es ilustrar el sistema como una "caja negra" central, delimitando claramente sus fronteras frente a los usuarios humanos que lo operan y los sistemas externos de los cuales depende para ejecutar sus flujos de negocio.

![Context Level Diagram](../assets/img/chapter4/software-architecture/context-diagram.svg)

**Explicación del diagrama:**
El sistema central, **Doof-Plus**, se ubica en el centro como una plataforma SaaS farmacéutica B2B unificada. A su alrededor, interactúan dos grupos principales:

1. **Usuarios (Actores):**
    - **Jefe de Producción Farmacéutica:** Interactúa con el sistema mediante peticiones HTTPS para planificar manufactura, gestionar lotes y monitorear la telemetría operativa de la planta.
    - **Especialista QA/QC:** Utiliza la plataforma para realizar la auditoría de procesos, gestionar normativas, aprobar acciones correctivas (CAPA) y emitir certificados de liberación.
    - **Administrador de Sistema:** Opera la plataforma para gestionar la alta de empresas clientes (Tenants), distribuir roles globales y administrar los planes de suscripción.

2. **Sistemas Externos:**
    - **Google Authenticator:** Proveedor de identidad externo con el que Doof-Plus se comunica vía REST API para validar códigos de seguridad de doble factor (2FA).
    - **ThingsBoard:** Plataforma externa especializada en IoT que procesa en crudo los datos de los sensores de la planta, y luego envía de forma consolidada las alertas ambientales y métricas a Doof-Plus.
    - **Niubiz (Payment Gateway):** Pasarela de pagos externa utilizada para procesar, autorizar y tokenizar el cobro de las suscripciones del modelo SaaS.

### 4.6.3. Software Architecture Container Diagrams

En esta sección, se presenta el diagrama de contenedores (Nivel 2 del modelo C4), el cual realiza un acercamiento a la arquitectura interna de Doof-Plus. Este nivel expone las unidades de despliegue independientes, mostrando la distribución de responsabilidades, las decisiones tecnológicas clave y la comunicación entre los contenedores.

![Container Level Diagram](../assets/img/chapter4/software-architecture/container-diagram.svg)

**Explicación del diagrama y decisiones tecnológicas:**
La arquitectura de Doof-Plus está diseñada bajo un patrón de microservicios con una capa de persistencia híbrida, garantizando escalabilidad y separación de responsabilidades (*Bounded Contexts*). Los contenedores y su comunicación se estructuran de la siguiente manera:

1. **Capa de Presentación (Front-End):**
    - **Aplicación Web (SPA):** Desarrollada en **TypeScript** (empleando React/Angular). Es la unidad desplegable con la que interactúan los actores a través de su navegador web. Se comunica con los microservicios backend de forma síncrona mediante peticiones HTTP/REST (JSON).

2. **Capa de Microservicios Backend (APIs):**
    - **API de IAM y Gestión de Tenants:** (Java/TypeScript). Centraliza el control de acceso, la emisión de JWT y la multitenencia.
    - **API Principal de Fabricación:** (Java/TypeScript). Núcleo transaccional del dominio que gestiona la lógica de órdenes de producción y la actualización del inventario de materias primas.
    - **Motor de Calidad y Cumplimiento:** (Java/TypeScript). Servicio regulatorio que administra los flujos normativos y la inmutabilidad de los reportes CAPA y de auditoría.
    - **Servicio de Suscripciones y Facturación:** (Java/TypeScript). Gestiona la lógica comercial del SaaS y orquesta los pagos delegándolos a la API de Niubiz.
    - **Motor de Ingesta de Telemetría IoT:** Desarrollado en **Node.js/TypeScript** por su naturaleza no bloqueante, ideal para recibir un alto volumen de Webhooks entrantes desde ThingsBoard.

3. **Capa de Persistencia (Bases de Datos):**
    - **Base de Datos Relacional (MySQL):** Seleccionada por su cumplimiento ACID. Persiste los datos transaccionales estrictos: credenciales, catálogos, trazabilidad de lotes y facturación (comunicación vía TCP/IP SQL).
    - **Base de Datos Documental (MongoDB):** Seleccionada por su flexibilidad de esquemas y rendimiento en operaciones de escritura. Almacena las series temporales masivas generadas por el motor IoT (comunicación vía MongoDB Wire Protocol).

### 4.6.4. Software Architecture Components Diagrams

En esta sección, el equipo presenta los diagramas de componentes (Nivel 3 del modelo C4) correspondientes a cada uno de los microservicios (Containers) backend considerados. Estos diagramas detallan los bloques estructurales de código (Controladores, Servicios y Repositorios), sus responsabilidades de implementación y cómo interactúan para resolver la lógica de dominio antes de persistir los datos.

**1. Descomposición del Container: API de IAM y Gestión de Tenants**
![Component Diagram - IAM](../assets/img/chapter4/software-architecture/component-IAM.svg)
- **Controlador de Autenticación:** *REST Controller* que intercepta peticiones HTTP para login y 2FA.
- **Servicio de Validación de Tokens:** Lógica de negocio encargada de generar y firmar criptográficamente los tokens JWT.
- **Servicio de Gestión de Tenants:** Gestiona la segregación de datos para aislar la información de cada empresa B2B.
- **Repositorio IAM:** Componente ORM que accede a MySQL para validar credenciales.

**2. Descomposición del Container: API Principal de Fabricación**
![Component Diagram - Manufactura](../assets/img/chapter4/software-architecture/component-manufactura.svg)
- **Controlador de Lotes:** *REST Controller* que recibe los comandos operativos (ej. Iniciar Lote, Cerrar Lote).
- **Servicio de Dominio de Manufactura:** Clase de servicio que orquesta las reglas de negocio sobre los estados de la producción.
- **Servicio de Inventario:** Lógica que valida y descuenta los insumos del almacén para evitar quiebres de stock.
- **Repositorio de Lotes e Inventario:** Componente ORM que traduce las entidades a consultas transaccionales hacia MySQL.

**3. Descomposición del Container: Motor de Calidad y Cumplimiento**
![Component Diagram - Calidad](../assets/img/chapter4/software-architecture/component-calidad.svg)
- **Controlador de Cumplimiento:** *REST Controller* para la gestión de cuarentenas y aprobaciones.
- **Servicio de Investigación CAPA:** Bloque que controla el ciclo de vida de las desviaciones normativas y sus resoluciones.
- **Repositorio de Trazabilidad y Auditoría:** Componente encargado de garantizar la inmutabilidad de los registros históricos en la base de datos relacional.

**4. Descomposición del Container: Servicio de Suscripciones y Facturación**
![Component Diagram - Facturación](../assets/img/chapter4/software-architecture/component-facturacion.svg)
- **Controlador de Facturación:** Interfaz HTTP para consultar planes y realizar actualizaciones de cuenta.
- **Gestor de Planes de Suscripción:** Servicio que valida las restricciones operativas según el límite del plan adquirido por el Tenant.
- **Cliente de Pasarela de Pagos:** Componente de integración externa que serializa la petición hacia Niubiz para autorizar cargos.
- **Repositorio de Facturación:** ORM responsable de guardar el historial de transacciones en MySQL.

**5. Descomposición del Container: Motor de Ingesta de Telemetría IoT**
![Component Diagram - Telemetría](../assets/img/chapter4/software-architecture/component-telemetria.svg)
- **Receptor de Webhooks:** Controlador optimizado en Node.js para recibir flujos continuos de datos JSON desde ThingsBoard.
- **Motor de Reglas de Alertas:** Servicio lógico que contrasta las variables operativas contra umbrales de seguridad predefinidos.
- **Cliente de Notificaciones:** Componente disparador que emite eventos de advertencia hacia la plataforma si ocurre una anomalía en planta.
- **Repositorio de Series Temporales:** Adaptador de datos que persiste los logs y métricas a alta velocidad en las colecciones de MongoDB.

## 4.7. Software Object-Oriented Design

En esta sección, el equipo presenta el diseño orientado a objetos y los diagramas de clases tácticos basados en Domain-Driven Design (DDD) para cada uno de los **6 Bounded Contexts** de la plataforma **Doof-Plus**. Esta aproximación detalla las entidades, objetos de valor, enumeraciones, multiplicidades y los miembros de cada clase, especificando atributos y métodos con sus respectivos niveles de visibilidad (`+` para public y `-` para private).

### 4.7.1. Class Diagrams

#### 1. Bounded Context: IAM & Tenant Management
Este diagrama modela el diseño táctico para el control de identidades, la seguridad perimetral y la separación lógica de las empresas clientes (Tenants) bajo un esquema multitenant B2B.
- **Clases Principales:** `Tenant` (Raíz de Agregado), `User`, `Credential`, y `UserSession`.
- **Enumeraciones:** `AuthProvider`, `SessionStatus`.
- **Detalle de Relaciones:** El `Tenant` agrupa múltiples usuarios, los cuales se componen estrictamente de credenciales y generan sesiones de usuario asociadas a proveedores de identidad externos.

![ Diagrama de Clases IAM & Tenant Management](../assets/img/chapter4/diagram-class/diagram-class-b1.png)
#### 2. Bounded Context: Core Manufacturing
Modela el núcleo operativo y transaccional de la planta farmacéutica, abarcando la creación de lotes, órdenes de producción, control de materias primas e incidentes en línea.
- **Clases Principales:** `ProductionBatch` (Raíz de Agregado), `BatchOrder`, `RawMaterialInventory`, y `OperationalIncident`.
- **Enumeraciones:** `BatchStatus`, `IncidentSeverity`.
- **Detalle de Relaciones:** Cada lote de producción gestiona una orden, consume inventario de materias primas y registra incidencias operativas asociadas a su severidad.

![ Diagrama de Clases Core Manufacturing](../assets/img/chapter4/diagram-class/diagram-class-b2.png)

#### 3. Bounded Context: Quality & Compliance
Encapsula el diseño normativo y regulatorio de las Buenas Prácticas de Manufactura (BPM), permitiendo la trazabilidad inmutable y el control de calidad.
- **Clases Principales:** `QualityProtocol` (Raíz de Agregado), `QuarantineRecord`, y `CapaInvestigation`.
- **Enumeraciones:** `ComplianceVerdict`, `CapaState`.
- **Detalle de Relaciones:** El protocolo de calidad controla los registros de cuarentena de los lotes y origina investigaciones de Acciones Correctivas y Preventivas (CAPA) en caso de desviaciones.

![ Diagrama de Clases Quality & Compliance](../assets/img/chapter4/diagram-class/diagram-class-b3.png)

#### 4. Bounded Context: Subscription & Billing (SaaS)
Modela la lógica comercial orientada al modelo SaaS de la plataforma B2B, gestionando planes de suscripción, cuentas corporativas, facturación y pagos.
- **Clases Principales:** `SubscriptionPlan`, `TenantBillingAccount` (Raíz de Agregado), `Invoice`, y `PaymentTransaction`.
- **Enumeraciones:** PlanTier, `PaymentStatus`.
- **Detalle de Relaciones:** La cuenta de facturación del Tenant se suscribe a un plan, genera facturas periódicas y procesa transacciones de pago mediante la pasarela externa.

![ Diagrama de Clases Subscription & Billing](../assets/img/chapter4/diagram-class/diagram-class-b4.png)

#### 5. Bounded Context: IoT Telemetry & Integration
Diseñado para el procesamiento de eventos de maquinaria en tiempo real, conectando los flujos de datos con las reglas de alerta de la planta.
- **Clases Principales:** `MachineEquipment`, `SensorTelemetryStream` (Raíz de Agregado), y `AlertRuleEngine`.
- **Enumeraciones:** `SensorType`, `AlertLevel`.
- **Detalle de Relaciones:** Los flujos de telemetría son emitidos por los equipos de maquinaria y evaluados continuamente por el motor de reglas de alertas.

![ Diagrama de Clases IoT Telemetry & Integration](../assets/img/chapter4/diagram-class/diagram-class-b5.png)

#### 6. Bounded Context: Plant Asset & Device
Modela la gestión de dispositivos de hardware en planta, específicamente el rastreo y control de lectores RFID y activos físicos vinculados a las líneas de producción.
- **Clases Principales:** `RfidReaderDevice` (Raíz de Agregado) y `PlantAsset`.
- **Enumeraciones:** `DeviceStatus`.
- **Detalle de Relaciones:** El dispositivo lector RFID se encarga de rastrear un activo de planta específico manteniendo un estado operativo actualizado.

![ Diagrama de Clases Plant Asset & Device](../assets/img/chapter4/diagram-class/diagram-class-b6.png)

## 4.8. Database Design

En esta sección se presenta el diseño de la base de datos relacional orientada a soportar los diferentes Bounded Contexts identificados para la plataforma DoofPlus. El diseño garantiza la persistencia, integridad y trazabilidad de la información crítica del negocio farmacéutico y la telemetría IoT.

Las principales características consideradas para este diseño son:

- Aislamiento por Contexto (Desacoplamiento): Las tablas se han agrupado lógicamente según su Bounded Context. En una arquitectura de microservicios, cada contexto gestionaría su propio esquema físico. Las referencias inter-contexto se manejan mediante identificadores únicos (UUIDs) en lugar de Foreign Keys estrictas a nivel de base de datos física, favoreciendo la escalabilidad.

- Integridad Referencial y Restricciones (Constraints): Dentro de cada contexto, se aplican Primary Keys (PK) y Foreign Keys (FK) para garantizar la consistencia de los datos. Se utilizan restricciones NOT NULL, UNIQUE y validaciones de estado para proteger las reglas de negocio (BPM).

- Trazabilidad y Auditoría (Auditability): Cumple con normativas como la FDA 21 CFR Part 11, entidades críticas incluyen campos de control de concurrencia y marcas de tiempo exactas, soportadas por tablas de registro inmutable.

### 4.8.1. Database Diagrams
En esta sección se presenta el diseño de la base de datos relacional de DoofPlus, organizado por bounded context. Cada contexto gestiona su propio conjunto de tablas, lo que nos garantiza la separación de responsabilidades y la alineación con la arquitectura DDD definida en los apartados anteriores. Para el diseño y modelado de estos diagramas se utilizará la herramienta de Lucichart. La base de datos está orientada a implementarse en MySQL y sus tablas principales incluyen campos de auditoría como created_at y updated_at, con el objetivo de mantener trazabilidad sobre la creación y actualización de los registros.

Los diagramas de base de datos se organizan en los siguientes contextos:

- Base de datos completa: muestra la integración general de las tablas principales de todos los bounded contexts de DoofPlus.

- Gestión de organizaciones (B2B) Database: contiene las tablas relacionadas con el registro multi-tenant de laboratorios clientes, perfiles corporativos y la matriz de roles y permisos.

- Suscripciones y pagos (SaaS) Database: contiene planes de suscripción, suscripciones activas, pagos procesados y transacciones de facturación.

- IAM Database: contiene credenciales de usuarios, autenticación de doble factor (2FA) y control de sesiones activas.

- Fabricación y gestión de lotes Database: contiene el catálogo de fármacos, registro de materias primas (RFID), órdenes de manufactura y uso de insumos en lotes de producción.

- Telemetría y monitorización IoT Database: contiene el inventario de maquinaria, sensores IoT, registros de telemetría y alertas ambientales/operativas.

- Gestión de calidad y cumplimiento Database: contiene protocolos documentales, investigaciones de desviaciones (CAPA), certificados de liberación y el historial de auditoría inmutable.

Diagrama de base de datos completo:
![Database diagram](../assets/img/chapter4/diagram-database.png)

Para ver a detalle [haga click aquí](https://lucid.app/lucidchart/6102493d-2535-49c1-a3e5-bf2ab643abdc/edit?viewport_loc=-2209%2C-1329%2C5810%2C2503%2C0_0&invitationId=inv_5c9ee0d8-9bc3-4332-9822-98bf6cc97570)