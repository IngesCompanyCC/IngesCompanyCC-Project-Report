# Capítulo IV: Product Design

En este capítulo se detallan las decisiones de diseño del producto para su plataforma DoofPlus, junto con la Landing Page. Se establecen guías de estilo visuales, arquitectura de la información (AI) y criterios que aseguran que la experiencia de usuario (UX) sea intuitiva y profesional, donde alineamos a las exigencias en las máquinas de la industria farmacéutica y entidades regulatorias para la calidad de los fármacos como la DIGEMID.

## 4.1. Style Guidelines


En esta sección se establecen las bases visuales y de comunicación para DoofPlus, centralizando los recursos que serán de uso común para todo el equipo de desarrollo y diseño. El objetivo es garantizar una presentación consistente, inclusiva y enfocada a través de todos los puntos de contacto del producto, facilitando la mantenibilidad y escalabilidad del código y del diseño a lo largo del ciclo de vida del proyecto.

### 4.1.1. General Style Guidelines

Para asegurar una interfaz coherente y alineada con los estándares que exige la industria farmacéutica, el sistema de diseño de DoofPlus toma como base **Material Design**, el lenguaje de diseño indicado para el proyecto. En la Web Application se implementa con **View**  y en la Landing Page con ***HTML5*** y ***CSS3*** respetando los mismos tokens de color, tipografía y espaciado.

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

| **Página** | **Title** | **Meta description** | **Meta keywords** | **Author**     |
| --- | --- | --- | --- |----------------|
| Landing Page (index.html) | DoofPlus \| Pharmaceutical Quality & Batch Traceability Platform | SaaS platform that centralizes quality documentation, batch traceability, deviations and IoT data for pharmaceutical laboratories (GMP/DIGEMID). | pharmaceutical quality management, batch traceability, GMP, DIGEMID, CAPA, audit trail, IoT | IngesCompanyCC |
| Contact us (contact.html) | Contact us \| DoofPlus | Send your questions about DoofPlus and its plans to the IngesCompany team. | DoofPlus contact, pharmaceutical quality software, GMP software Peru | IngesCompanyCC |

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

La propuesta de UI de la Landing Page traduce las decisiones de las secciones anteriores: la jerarquía visual ordena el contenido desde la propuesta de valor hasta la presentación de la startup; las etiquetas (Home, Features, Benefits, Plans, About Us) siguen el Labeling System; la barra fija con anclas, las llamadas a la acción por segmento y el enlace "Sign in" implementan el Navigation System; y el Design System de la sección 4.1 (Inter, verde azulado #0F766E, azul pizarra #0F172A y Material Symbols Rounded) se aplica de forma consistente con la Web Application. La Landing Page atiende las user stories US01 a US05 y US44 a US49. Los wireframes y mock-ups se elaboraron en Figma y están disponibles en el [archivo de diseño de DoofPlus](https://www.figma.com/design/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?node-id=19-813).

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
| ![Contact us](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-contact-us.png) | ![Contact us · Invalid data](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-message-sent.png) |

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

La versión mobile mantiene el orden y el contenido de desktop en una sola columna. El menú hamburguesa abre un overlay con los enlaces de navegación, "Sign in", "Get Started" y el selector de idioma.

![Landing Page Mock-up · Mobile (1)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-1.png)

![Landing Page Mock-up · Mobile (2)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-2.png)

![Landing Page Mock-up · Mobile (3)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-3.png)

| Menu open | Contact us | Contact us · Invalid data | Message sent |
| :---: | :---: | :---: | :---: |
| ![Menu open](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-menu-open.png) | ![Contact us](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-contact-us.png) | ![Invalid data](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-message-sent.png) |

## 4.4. Web Applications UX/UI Design

Esta sección describe el diseño de experiencia (UX) e interfaz (UI) de la Web Application de DoofPlus. La aplicación se organiza en tres entornos, cada uno con su propio inicio de sesión, color y módulos: **QA/QC** (segmento 1, especialista de aseguramiento y control de calidad, persona María México), **Production** (segmento 2, jefe o supervisor de producción, persona Alberto Valle) y **Administration** (administrador del laboratorio, que registra la organización, invita a los usuarios y gestiona la suscripción). Los datos de ejemplo corresponden a un mismo caso: Laboratorios Andinos S.A.C., el lote B-26041 de Paracetamol 500 mg y la excursión de temperatura del sensor T-204 que origina la desviación DEV-26017, de modo que las pantallas de ambos segmentos cuentan una historia coherente. Los wireframes y mock-ups de escritorio y mobile se elaboraron en Figma y están disponibles en el [archivo de diseño de DoofPlus](https://www.figma.com/design/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?node-id=19-814).

Todas las pantallas comparten la misma estructura, derivada de la arquitectura de información de la sección 4.2: un sidebar con el logotipo, el entorno activo y sus módulos (navegación global); una barra superior con la búsqueda global, el selector de idioma y el avatar del usuario; y un área de contenido que ubica arriba los indicadores y abajo las tablas de detalle. Las acciones críticas, como aprobar, liberar o rechazar, se confirman con firma electrónica (US08), y los estados se muestran con los valores del modelo de dominio.

### 4.4.1. Web Applications Wireframes

Los wireframes de baja fidelidad definen la distribución de cada pantalla antes del diseño visual. Se agrupan por segmento y se presentan en montajes, en el mismo orden que los mock-ups de la sección 4.4.3, donde se explica cada pantalla.

**Desktop Web Browser · Compartido: elección de entorno, registro de la organización y perfil**

Incluye "Sign in · Choose your environment", "Organization registration" con su estado "RUC already registered" y "Account · Profile & preferences".

![Web App Wireframes · Desktop · Shared](../assets/img/chapter4/web-application/wireframes/desktop-shared-environment-selection-onboarding-profile-montage-1.png)

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

![Web App Wireframes · Mobile · QA/QC (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Web App Wireframes · Mobile · QA/QC (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-2.png)

![Web App Wireframes · Mobile · Production (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-1.png)

![Web App Wireframes · Mobile · Production (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-2.png)

![Web App Wireframes · Mobile · Administration](../assets/img/chapter4/web-application/wireframes/mobile-laboratory-administrator-montage-1.png)

### 4.4.2. Web Applications Wireflow Diagrams

Los Wireflow Diagrams combinan los wireframes con las acciones del usuario para representar la secuencia de pantallas que lo llevan a cumplir un objetivo. Para cada segmento se definieron seis user goals, basados en sus user stories. Cada diagrama muestra el user goal, la persona, el camino principal y los puntos de decisión que desvían el flujo hacia una pantalla de error o de bloqueo. Los diagramas se elaboraron en FigJam y están disponibles en el [tablero de Wireflows y User Flows](https://www.figma.com/board/6SfHJP9IQFJtTxZKgOYyWp).

#### Segmento 1 – Especialista de Aseguramiento y Control de Calidad (QA/QC)

**User Goal QA-1:** Ingresar a DoofPlus y acceder al entorno QA/QC (US06, US07).

Como especialista QA/QC, quiero ingresar con mis credenciales y confirmar mi identidad para revisar mis pendientes de calidad. María México elige "Sign in" en la Landing Page, selecciona el entorno QA/QC, ingresa su correo y contraseña y confirma el código 2FA.

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


### 4.4.3. Web Applications Mock-ups

Los mock-ups aplican el Design System de la sección 4.1 sobre los wireframes y se presentan en inglés (en-US), idioma por defecto. Cada entorno se reconoce por su color: QA/QC en verde azulado (#0F766E), Production en azul (#1E40AF) y Administration en azul pizarra (#334155). A continuación se presentan las pantallas Desktop por grupo, con su propósito y las user stories que atienden.

#### Compartido: elección de entorno, registro de la organización y perfil

**Sign in · Choose your environment:** se abre desde "Sign in" en la Landing Page. Presenta tres tarjetas, QA/QC, Production y Administration, cada una con su color, ícono y descripción; al elegir una se abre el inicio de sesión de ese entorno. Incluye el enlace "Register your laboratory" y "See plans" para quienes aún no tienen cuenta.

![Mock-up · Choose your environment](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/sign-in-choose-your-environment.png)

**Organization registration:** el administrador registra el laboratorio con su razón social, RUC, planta y datos de contacto, y elige su plan, que aparece preseleccionado cuando llega desde la sección Plans de la Landing Page (US50, US51). Si el RUC ya pertenece a otra organización, el formulario muestra el estado "RUC already registered" y no crea un duplicado.

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

**Compartido:** elección del entorno.

![Mock-up · Mobile · Shared](../assets/img/chapter4/web-application/mockups/mobile-shared-environment-selection-montage-1.png)

**Segmento 1 – QA/QC:** inicio de sesión con sus estados, Task inbox, Approval review y Approval completed, donde la Quality Manager aprueba el documento (con el estado "Record changed", que impide firmar si el registro cambió durante la revisión), Electronic signature (con el estado "Invalid password") y Signature confirmed, donde María firma la liberación del lote B-26038, y Batch detail.

![Mock-up · Mobile · QA/QC (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Mock-up · Mobile · QA/QC (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-2.png)

**Segmento 2 – Production:** inicio de sesión con sus estados, IoT monitoring, Batch lookup, Alert details, Incident reporting (con el estado "Validation error") e Incident submitted.

![Mock-up · Mobile · Production (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-1.png)

![Mock-up · Mobile · Production (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-2.png)

**Administrador del laboratorio:** inicio de sesión del entorno de Administración con sus estados.

![Mock-up · Mobile · Administration](../assets/img/chapter4/web-application/mockups/mobile-laboratory-administrator-montage-1.png)


### 4.4.4. Web Applications User Flow Diagrams

Los User Flow Diagrams representan, para los mismos user goals de la sección 4.4.2, la secuencia de pantallas y acciones del camino principal (happy path) y las decisiones que llevan a caminos alternativos (unhappy paths). Se elaboraron en FigJam, en el mismo [tablero](https://www.figma.com/board/6SfHJP9IQFJtTxZKgOYyWp) que los Wireflow Diagrams.

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

## 4.5. Web Applications Prototyping

El prototipo interactivo de DoofPlus se construyó en Figma sobre los mock-ups de las secciones 4.3.2 y 4.4.3, con el fin de validar la navegación y los flujos antes de la implementación. Sus interacciones siguen los paths de los User Flow Diagrams de la sección 4.4.4:

- **Landing Page:** los enlaces de la barra desplazan a cada sección; "Sign in" abre la elección de entorno; las tarjetas de "Get Started" abren el inicio de sesión de su entorno; los botones de los planes y "Register your laboratory" abren el registro de la organización; "Contact us" abre el formulario de contacto, y los enlaces del footer, los términos y la política de privacidad. En mobile, el ícono de menú abre el overlay de navegación.
- **Ingreso:** la elección de entorno abre el inicio de sesión de QA/QC, Production o Administration; "Continue" lleva al código 2FA y "Verify" a la pantalla inicial del entorno. Los estados de error se muestran como pantallas alternativas.
- **Web Application:** el sidebar lleva a cada módulo del entorno, el avatar abre "Profile & preferences" y los botones de cada pantalla siguen los user goals QA-1 a QA-6 y PR-1 a PR-6, que se definieron como puntos de inicio del prototipo.

Las interacciones aplican el Navigation System de la sección 4.2.5. En la Landing Page, la navegación global de la barra fija y los enlaces del footer usan interacciones "Scroll to" hacia cada sección; las llamadas a la acción y "Sign in" usan "Navigate to" hacia la Web Application, y en mobile el menú se abre y se cierra como overlay ("Open overlay" y "Close"). En la Web Application, el sidebar es la navegación global entre los módulos del entorno, las pestañas y los botones de cada pantalla son la navegación local, y el logotipo y "Back to DoofPlus" regresan a la Landing Page; todas estas acciones usan "Navigate to". Las etiquetas de los enlaces son las del Labeling System de la sección 4.2.2. Para navegar entre la Landing Page y la Web Application, el prototipo se armó en una página propia de Figma ("Prototype") que reúne los mock-ups de ambas.

El diseño del prototipo se guió por cuatro criterios:

- **Cumplimiento regulatorio por diseño:** las acciones críticas exigen firma electrónica, quedan en el audit trail y respetan la segregación de funciones (por ejemplo, el autor de un documento no puede aprobarlo).
- **Navegación basada en los procesos del laboratorio:** los módulos siguen el recorrido del lote, desde la fórmula maestra y la orden de producción hasta su liberación.
- **Consistencia visual:** todos los entornos comparten componentes, tipografía y estructura, y solo cambia el color que identifica al entorno.
- **Prevención de errores:** los estados de bloqueo explican el motivo y la acción necesaria, en lugar de permitir una operación que luego deba corregirse.

Prototipo navegable en Figma (página "Prototype", que une los mock-ups de la Landing Page y de la Web Application para navegar entre ambas): [abrir el prototipo](https://www.figma.com/proto/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?page-id=353%3A237&node-id=353-240&starting-point-node-id=353%3A240). Desde el selector de flujos del visor se accede a los puntos de inicio de cada user goal.

Video de navegación del prototipo: upc-pre-202620-1asi0729-7742-IngesCompany-prototypenavigation-sprint-1, [ver en Microsoft Stream](https://upcedupe-my.sharepoint.com/:v:/g/personal/u202423162_upc_edu_pe/IQC9TP0VdDx0SbIEr4nWmikhAceGoBqdZ78DiR68qJ8FV-A?e=1BIqfW) (copia en [YouTube](https://youtu.be/6PLCLqaF8Tg)). Inicio: 00:00. Duración: 06:10.

**Landing Page** (desde 00:00 hasta 00:24)

![Video de navegación del prototipo · Landing Page](../assets/img/chapter4/prototype/video-landing-page.png)

**Web Application** (desde 00:24 hasta 06:10)

![Video de navegación del prototipo · Web Application](../assets/img/chapter4/prototype/video-web-application.png)

## 4.6. Domain-Driven Software Architecture

### 4.6.2. Software Architecture Context Diagram


### 4.6.3. Software Architecture Container Diagrams


### 4.6.4. Software Architecture Components Diagrams


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