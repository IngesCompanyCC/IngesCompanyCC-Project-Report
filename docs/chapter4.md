# CapÃ­tulo IV: Product Design

En este capÃ­tulo se presenta el diseÃ±o de DoofPlus a partir de las User Stories y el Impact Map del capÃ­tulo III: las guÃ­as de estilo, la arquitectura de informaciÃ³n, el diseÃ±o de la Landing Page y de la Web Application, la arquitectura de software orientada al dominio, el diseÃ±o orientado a objetos y el diseÃ±o de la base de datos. Las decisiones responden a las exigencias de los laboratorios farmacÃ©uticos y de la DIGEMID sobre la calidad, la trazabilidad y la integridad de los registros.

## 4.1. Style Guidelines

En esta secciÃ³n se establecen las bases visuales y de comunicaciÃ³n para DoofPlus, centralizando los recursos que serÃ¡n de uso comÃºn para todo el equipo de desarrollo y diseÃ±o. El objetivo es garantizar una presentaciÃ³n consistente, inclusiva y enfocada a travÃ©s de todos los puntos de contacto del producto, facilitando la mantenibilidad y escalabilidad del cÃ³digo y del diseÃ±o a lo largo del ciclo de vida del proyecto.

### 4.1.1. General Style Guidelines

Para asegurar una interfaz coherente y alineada con los estÃ¡ndares que exige la industria farmacÃ©utica, el sistema de diseÃ±o de DoofPlus toma como base **Material Design**, el lenguaje de diseÃ±o indicado para el proyecto. En la Web Application se implementa con **Vue CLI** usando un tema basado en **Material Design**, y en la Landing Page con ***HTML5*** y ***CSS3*** respetando los mismos tokens de color, tipografÃ­a y espaciado.

#### Branding:
El logotipo escogido para DoofPlus comunica de forma directa y sintÃ©tica la propuesta de valor del sistema: la integraciÃ³n de la automatizaciÃ³n industrial con la rigurosidad del control farmacÃ©utico. Para la secciÃ³n de Branding, el anÃ¡lisis de los componentes de dicho logotipo se desglosa de la siguiente manera:

<p align="center">
  <img src="../assets/img/chapter4/doofplus-logo.png" alt="DoofPlus Logo" width="350px" />
</p>

- **Maquinaria y cinta transportadora:** la silueta industrial con cÃ¡psulas en la cinta representa el nÃºcleo operativo de la plataforma: la manufactura y la conexiÃ³n IoT en la lÃ­nea de producciÃ³n.
- **Escudo de verificaciÃ³n:** representa el aseguramiento de la calidad y transmite protecciÃ³n de los datos y cumplimiento de las BPM exigidas por DIGEMID.
- **ConstrucciÃ³n tipogrÃ¡fica y cromÃ¡tica:** el nombre DoofPlus usa una fuente sans-serif sÃ³lida; â€œDoofâ€ en azul pizarra oscuro evoca la base tecnolÃ³gica y â€œPlusâ€ en verde marino (#0D9488) conecta con la salud y la validaciÃ³n de procesos.

Para su uso en las interfaces se definieron dos versiones horizontales del logotipo: a color, para fondos claros (barra de navegaciÃ³n de la Landing Page y de la Web Application), y en blanco, para fondos oscuros (footer de la Landing Page y barras de color). Ambas se usan como componentes reutilizables en Figma.

| VersiÃ³n a color (fondos claros) | VersiÃ³n blanca (fondos oscuros) |
| :---: | :---: |
| <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-color.png" width="300"> | <img src="../assets/img/chapter4/brand/doofplus-logo-horizontal-white.png" width="300" style="background:#0F172A"> |

#### Typography
La tipografÃ­a de DoofPlus es Inter, una fuente sans-serif moderna y legible con pesos de Thin a Black y sus versiones itÃ¡licas. Su diseÃ±o garantiza una lectura clara de datos numÃ©ricos crÃ­ticos, tablas de lotes y grÃ¡ficos de telemetrÃ­a tanto en monitores como en dispositivos mÃ³viles. La jerarquÃ­a tipogrÃ¡fica es la siguiente:

![Typography](../assets/img/chapter4/typography-guide.png)

| **Elemento** | **TamaÃ±o (desktop)** | **Peso** | **Uso** |
| --- | --- | --- | --- |
| H1 â€“ TÃ­tulo principal | 3rem (48 px), interlineado 1.1 | Semi Bold (600) | TÃ­tulo del hero de la Landing Page |
| H2 â€“ TÃ­tulo de secciÃ³n o pantalla | 2rem (32 px), interlineado 1.2 | Semi Bold (600) | Secciones de la Landing Page y tÃ­tulos de pantalla |
| H3 â€“ TÃ­tulo de tarjeta | 1.5rem (24 px), interlineado 1.3 | Semi Bold (600) | Tarjetas, paneles y diÃ¡logos |
| Body | 1rem (16 px), interlineado 1.45 | Regular (400) | PÃ¡rrafos y tablas de datos |
| Label | 0.875rem (14 px) | Medium (500) | Etiquetas de formulario, botones y estados |
| Metadata | 0.75rem (12 px) | Regular (400) | Fechas, identificadores y notas |

#### Colors
La paleta de colores de DoofPlus estÃ¡ diseÃ±ada para evocar pulcritud clÃ­nica, seguridad tecnolÃ³gica y control sobre los procesos. Se distribuye en cuatro categorÃ­as; los colores funcionales se acompaÃ±an siempre de un Ã­cono y de un texto, de modo que el estado nunca se comunica solo con color:

| **Token** | **Valor** | **CategorÃ­a** | **Uso** |
| --- | --- | --- | --- |
| --primary-color | #0F766E (verde azulado) | Principal | Botones y acciones principales (texto blanco) |
| --accent-color | #0D9488 (verde marino) | Principal | Hover, anillos de foco y detalles decorativos |
| --secondary-color | #0F172A (azul pizarra oscuro) | Principal | TÃ­tulos, texto principal y barras oscuras |
| --tertiary-color | #64748B (gris pizarra) | Soporte | Texto secundario y placeholders |
| --bg-light | #F8FAFC | Soporte | Fondo de la aplicaciÃ³n y de secciones |
| --bg-highlight | #F0FDFA | Soporte | Paneles destacados |
| --card-bg | #FFFFFF | Soporte | Tarjetas, tablas y diÃ¡logos |
| --border-color | #E2E8F0 | Soporte | Bordes de 1 px |
| --success-color | #4CAF50 (texto #25632A sobre #EDF7ED) | Funcional | Confirmaciones, lotes liberados, controles aprobados |
| --warning-color | #FFC107 (texto #805700 sobre #FFF8DE) | Funcional | Advertencias, cuarentena y pendientes |
| --error-color | #F44336 (texto #B42318 sobre #FFF0EE) | Funcional | Errores, rechazos, OOS y bloqueos |
| --qa-color | #0F766E | Entorno | Identifica el entorno QA/QC en el inicio de sesiÃ³n |
| --production-color | #1E40AF | Entorno | Identifica el entorno de ProducciÃ³n |
| --admin-color | #334155 | Entorno | Identifica el entorno de AdministraciÃ³n |

![paleta-colores](../assets/img/chapter4/color-palette.png)

#### Spacing

El espaciado se rige por la cuadrÃ­cula de 8 puntos de Material Design, que asegura un ritmo vertical constante y facilita la lectura rÃ¡pida de reportes tÃ©cnicos:

- **MÃ¡rgenes:** 64 px en las pÃ¡ginas pÃºblicas (Landing Page e inicio de sesiÃ³n) y 32 px como margen interior del Ã¡rea de trabajo de la Web Application.
- **Espacio entre elementos:** 24 px de separaciÃ³n (gutter) entre columnas y tarjetas, y 16 px de padding interno en los elementos.
- **GeometrÃ­a:** radio de 8 px en controles, 16 px en tarjetas y forma de pÃ­ldora en botones de la Landing Page; bordes de 1 px (#E2E8F0).
- **Ãrea tÃ¡ctil mÃ­nima:** 48 x 48 px en botones y controles, especialmente en mobile.

#### Tono de ComunicaciÃ³n

La voz y el tono de DoofPlus estÃ¡n diseÃ±ados para reflejar la misma fiabilidad e inmutabilidad que su arquitectura de software, conectando directamente con Supervisores de ProducciÃ³n, Especialistas QA/QC y auditores externos.

- ***Tono:*** Formal, corporativo y analÃ­tico. Proyecta dominio absoluto sobre las normativas de calidad (BPM, Data Integrity), manteniendo el rigor que exige la industria farmacÃ©utica.
- ***Actitud:*** Resolutiva y proactiva. La comunicaciÃ³n se enfoca en la eficiencia operativa (â€œTrazabilidad automatizadaâ€, â€œMonitoreo en tiempo realâ€) y en la alerta temprana de desviaciones.
- ***Lenguaje:*** TÃ©cnico y preciso. Se utiliza terminologÃ­a propia del dominio farmacÃ©utico y tecnolÃ³gico (telemetrÃ­a, IoT, Cuarentena, FÃ³rmulas Maestras, Audit Trail, DIGEMID) asumiendo que el usuario es un profesional capacitado en estas Ã¡reas.
- ***Voz:*** Experta e inquebrantable. Posiciona a DoofPlus como el puente definitivo entre la maquinaria industrial y el cumplimiento normativo, siendo una fuente de verdad Ãºnica y segura para las auditorÃ­as.
erta e inquebrantable. Posiciona a DoofPlus como el puente definitivo entre la maquinaria industrial y el cumplimiento normativo, siendo una fuente de verdad Ãºnica y segura para las auditorÃ­as.

### 4.1.2. Web Style Guidelines

1. Layout
- Sistema de Grid: Utilizamos un diseÃ±o de cuadrÃ­cula fluida de 12 columnas para garantizar que el contenido de DoofPlus se adapte perfectamente a cualquier resoluciÃ³n de pantalla. Este enfoque permite que los dashboards de telemetrÃ­a, las tablas de trazabilidad de lotes y los planes de suscripciÃ³n se ajusten dinÃ¡micamente, manteniendo la jerarquÃ­a visual requerida en un entorno industrial.
- Headers y Footers (encabezados y pies de pÃ¡gina): El encabezado es fijo en la parte superior, proporcionando acceso constante a la navegaciÃ³n principal, alertas de desviaciones crÃ­ticas y a las acciones de sesiÃ³n. El pie de pÃ¡gina centraliza los enlaces normativos, polÃ­ticas de privacidad, tÃ©rminos de servicio, copyright y contacto de soporte.
- Cards y Data Tables: Las tarjetas (Cards) estructuran la informaciÃ³n de los mÃ³dulos del sistema (IoT, Compliance, AuditorÃ­as) en la Landing Page. Para la aplicaciÃ³n web, el componente central son las Tablas de Datos (Data Tables), diseÃ±adas con bordes sutiles y alternancia de color (Zebra striping) para facilitar la lectura de expedientes de lotes y registros inmutables (Audit Trail) sin fatiga visual.

2. Responsive Design
- Desktop: Orientado al Jefe de ProducciÃ³n y al Administrador. La navegaciÃ³n principal es visible en una barra lateral o superior. El contenido aprovecha mÃºltiples columnas para desplegar grÃ¡ficos unificados de rendimiento y tablas complejas de fÃ³rmulas maestras en monitores de estaciones de trabajo.
- Tablet: Orientado al Especialista QA/QC en la lÃ­nea de producciÃ³n. La cuadrÃ­cula se adapta a un diseÃ±o compacto. Los botones, selectores de estado y campos tÃ¡ctiles se ajustan a un Ã¡rea mÃ­nima de 48x48 pÃ­xeles para facilitar la interacciÃ³n de operarios que utilicen guantes de nitrilo o equipos de protecciÃ³n.
- Mobile: Optimizado para la lectura rÃ¡pida y atenciÃ³n de emergencias. El diseÃ±o colapsa a una sola columna y la navegaciÃ³n se agrupa en un menÃº hamburguesa. Los elementos interactivos priorizan la visualizaciÃ³n de notificaciones de urgencia.

3. Interaction Design
- Botones: las llamadas a la acciÃ³n (CTA) usan el color primario (#0F766E) con texto blanco; las acciones secundarias usan botones outlined. Los estados hover, focus (con contorno visible para teclado), active y disabled estÃ¡n definidos para asegurar la accesibilidad. Las acciones destructivas o de rechazo de lotes usan el color de error y piden confirmaciÃ³n.
- Formularios y Validaciones: Los formularios marcan los campos obligatorios con un asterisco y validan los datos antes del envÃ­o. Ante un error, el campo se resalta con el color de error, se muestra un mensaje descriptivo debajo y un aviso general en la parte superior del formulario, conservando los datos ingresados.
- Selector de idioma: componente EN/ES (mat-button-toggle-group) visible en todas las pantallas pÃºblicas y autenticadas; inglÃ©s (en-US) es el idioma por defecto.

4. Images and Icons
- ImÃ¡genes: En la Landing Page se utilizan fotografÃ­as de alta calidad, optimizadas en formato WebP, que evocan el entorno de manufactura: lÃ­neas de producciÃ³n automatizadas, laboratorios esterilizados y operarios utilizando tablets. Refuerzan el mensaje de tecnologÃ­a aplicada al cumplimiento BPM.
- Ãconos: Se emplea la biblioteca Material Symbols (variante Rounded) para un estilo lineal y minimalista. Estos Ã­conos ofrecen una guÃ­a visual rÃ¡pida para representar servicios crÃ­ticos: un microchip o antena para la telemetrÃ­a, un escudo con un sÃ­mbolo de check para el cumplimiento regulatorio y cÃ¡psulas o maquinaria para la gestiÃ³n de producciÃ³n.

5. Repositorio Central
- OrganizaciÃ³n: el proyecto de la Web Application en Vue se organiza por bounded context dentro de `src/app`: `iam`, `organizations`, `subscriptions`, `manufacturing`, `iot-monitoring` y `quality`, cada uno con las capas `domain`, `application`, `infrastructure` y `presentation`. Los elementos comunes (layout, toolbar, footer, selector de idioma y cliente REST base) se ubican en `src/app/shared`; los estilos globales y los design tokens de color, tipografÃ­a y espaciado, en `src/styles.css`; las imÃ¡genes e Ã­conos, en `public/images`, y las traducciones, en `public/i18n` (`en.json`, idioma por defecto, y `es.json`). La Landing Page aplica los mismos tokens en su hoja de estilos.
- Versionado: Se utiliza Git gestionado desde GitHub como sistema de control de versiones central. El equipo aplica GitFlow y Conventional Commits para gestionar los cambios en el cÃ³digo, lo que ayuda a garantizar que el entorno de desarrollo mantenga una integraciÃ³n continua y una versiÃ³n estable del producto en todo momento. AdemÃ¡s, se aplica Semantic Versioning para darle un orden a las versiones.

## 4.2. Information Architecture

La arquitectura de la informaciÃ³n de DoofPlus establece las decisiones que dirigen la organizaciÃ³n del contenido en las experiencias web, lo que estÃ¡ orientado a que tanto los visitantes del sector comercial como los usuarios operativos, que forman parte de los segmentos objetivos, se adapten con facilidad a la funcionalidad del producto y puedan encontrar lo que necesitan sin esfuerzo.

### 4.2.1. Organization Systems

Para estructurar los grupos de informaciÃ³n de la plataforma se aplican los siguientes sistemas de organizaciÃ³n y esquemas de categorizaciÃ³n:

- **OrganizaciÃ³n jerÃ¡rquica (visual hierarchy):** en la Landing Page el contenido va de mayor a menor impacto: propuesta de valor (Home), acceso por segmento (Get Started), servicios, caracterÃ­sticas, video, beneficios, planes, testimonios, preguntas frecuentes, contacto y, al final, la startup y su equipo.
- **OrganizaciÃ³n secuencial (step-by-step):** en el ingreso a la Web Application (elecciÃ³n del entorno â†’ inicio de sesiÃ³n â†’ 2FA) y en los flujos regulados, como la recepciÃ³n de materias primas (recepciÃ³n â†’ muestreo â†’ inspecciÃ³n â†’ aprobado o rechazado) y la liberaciÃ³n de un lote (cuarentena â†’ evaluaciÃ³n de resultados â†’ firma electrÃ³nica).
- **OrganizaciÃ³n matricial:** en los dashboards, que cruzan lotes, variables de equipos e indicadores de cumplimiento.
- **CategorizaciÃ³n cronolÃ³gica:** en el audit trail, la lÃ­nea de tiempo del lote y la telemetrÃ­a IoT, ordenados por fecha y hora.
- **CategorizaciÃ³n por tÃ³picos:** en el repositorio documental (protocolos, SOP, especificaciones) y en la navegaciÃ³n por mÃ³dulos.
- **CategorizaciÃ³n por audiencia:** en la Landing Page (llamadas a la acciÃ³n para QA/QC y para ProducciÃ³n) y en la Web Application (entornos de calidad y de producciÃ³n segÃºn el rol).

### 4.2.2. Labeling Systems

Para asegurar la simplicidad y evitar la confusiÃ³n de los visitantes y usuarios, la representaciÃ³n de los datos se realiza mediante etiquetas que utilizan el mÃ­nimo nÃºmero de palabras posibles, lo que representa la terminologÃ­a tÃ©cnica de la industria farmacÃ©utica:

- Landing Page: las etiquetas de la barra de navegaciÃ³n usan asociaciones estÃ¡ndar de una o dos palabras: "Home", "Features" (mÃ³dulos tÃ©cnicos), "Benefits", "Plans" (planes y precios) y "About Us", ademÃ¡s de "Sign in" (inicio de sesiÃ³n) y "Get Started" (acceso por segmento). En espaÃ±ol latinoamericano se muestran como "Inicio", "CaracterÃ­sticas", "Beneficios", "Planes", "Nosotros", "Iniciar sesiÃ³n" y "Comenzar".
- Web Application: las etiquetas operativas siguen el Ubiquitous Language de la secciÃ³n 2.5 y se definen en inglÃ©s, idioma por defecto, con su traducciÃ³n al espaÃ±ol: "Batches" (Lotes) agrupa el historial de fabricaciÃ³n, "Raw materials" (Materias primas) la recepciÃ³n y cuarentena de insumos, "Deviations" y "CAPA plans" (Desviaciones y planes CAPA) las incidencias y su correcciÃ³n, y "Audit trail" (registro de auditorÃ­a) el registro inmutable de cambios. Los estados que se muestran en pantalla son los definidos en el modelo de dominio (por ejemplo, Planned, In progress, On hold, Release requested, Released y Rejected para los lotes).

### 4.2.3. SEO Tags and Meta Tags

Para el posicionamiento y la indexaciÃ³n correcta de las principales pÃ¡ginas de la experiencia web, se asignan los siguientes valores mÃ­nimos exigidos:

Valores para la Landing Page (sitio estÃ¡tico indexable):

| **PÃ¡gina** | **Title** | **Meta description** | **Meta keywords** | **Author** |
| --- | --- | --- | --- | --- |
| Landing Page (index.html) | DoofPlus \| Pharmaceutical Quality & Batch Traceability Platform | SaaS platform that centralizes quality documentation, batch traceability, deviations and IoT data for pharmaceutical laboratories (GMP/DIGEMID). | pharmaceutical quality management, batch traceability, GMP, DIGEMID, CAPA, audit trail, IoT | IngesCompany |
| Contact us (contact.html) | Contact us \| DoofPlus | Send your questions about DoofPlus and its plans to the IngesCompany team. | DoofPlus contact, pharmaceutical quality software, GMP software Peru | IngesCompany |

Valores para las vistas principales de la Web Application. Al ser una SPA, el tÃ­tulo se actualiza en cada cambio de ruta con la propiedad `title` de las rutas de Vue Router y la descripciÃ³n con el servicio `Meta` de Vue; keywords y author se definen una vez en `index.html` con los mismos valores de la Landing Page:

| **Vista de la Web Application** | **Title** | **Meta description** |
| --- | --- | --- |
| Choose your environment | Sign in \| DoofPlus | Choose the QA/QC, Production or Administration environment of DoofPlus. |
| Sign in (por entorno) | Sign in to {environment} \| DoofPlus | Secure access to DoofPlus with two-factor authentication. |
| Quality dashboard | Quality Dashboard \| DoofPlus | Pending batches, open deviations and quality indicators. |
| Production dashboard | Production Console \| DoofPlus | Active production orders, batch status and alerts. |
| Batch detail | Batch {batchNumber} \| DoofPlus | Complete traceability timeline of a pharmaceutical batch. |
| Deviations & CAPA | Deviations & CAPA \| DoofPlus | Register, investigate and close deviations with CAPA. |

### 4.2.4. Searching Systems

Para que los usuarios no se pierdan en el volumen de informaciÃ³n generado por la producciÃ³n y la telemetrÃ­a, la Web Application ofrece:

- **BÃºsqueda global:** barra en el encabezado para consultar por identificador exacto (nÃºmero de lote, cÃ³digo de documento o de sensor).
- **Filtros combinados:** por estado del lote (Planned, In progress, On hold, Release requested, Released, Rejected), rango de fechas de fabricaciÃ³n, severidad de la desviaciÃ³n (Minor, Major, Critical) y tipo de documento.
- **PresentaciÃ³n de resultados:** tabla de datos de Vue paginada y ordenable que resalta la coincidencia y muestra el estado actual de cada registro; si no hay resultados se muestra un mensaje con sugerencias.

### 4.2.5. Navigation Systems
Las acciones y tÃ©cnicas que guÃ­an a los usuarios son:

1. ***Landing Page:***
- **NavegaciÃ³n por anclas:** barra superior fija con enlaces a cada secciÃ³n y desplazamiento suave; en mobile, menÃº hamburguesa que se abre como overlay.
- **Llamadas a la acciÃ³n por segmento:** la secciÃ³n "Get Started" ofrece una tarjeta por segmento; cada una lleva directamente al inicio de sesiÃ³n de su entorno en la Web Application (QA/QC o ProducciÃ³n). El enlace "Sign in" de la barra lleva a la elecciÃ³n de entorno, y "Register your laboratory" al registro de la organizaciÃ³n.
- **PÃ¡ginas secundarias:** "Contact us" (formulario de consultas), "Terms of Service" y "Privacy Policy", enlazadas desde el footer.

2. ***Web Application:***
- **Ingreso por entorno:** la elecciÃ³n de entorno (QA/QC, Production o Administration) precede al inicio de sesiÃ³n; cada entorno se reconoce por su color, Ã­cono y mÃ³dulos.
- **NavegaciÃ³n global:** barra lateral (sidebar) con los mÃ³dulos del entorno. QA/QC: Quality overview, Quality indicators, Quality documents, Deviations, CAPA plans, Batch release, Analytical results, Audits, Audit trail, Regulatory reports y Tasks & collaboration. Production: Production overview, Production orders, Products & formulas, Batches, Raw materials, Equipment & sensors, IoT overview, Incidents y Tasks & collaboration. Administration: Administration overview, Users & profiles, Organizations, Subscriptions & payments, Audit trail y Tasks & collaboration.
- **Barra superior:** bÃºsqueda global, selector de idioma y avatar del usuario, que abre "Profile & preferences".
- **NavegaciÃ³n contextual:** breadcrumbs para ubicar al usuario dentro de un expediente y regresar a vistas generales.

3. **NavegaciÃ³n por teclado y accesibilidad:** orden de tabulaciÃ³n lÃ³gico, foco visible y atributos ARIA en menÃºs y diÃ¡logos.

## 4.3. Landing Page UI Design

La propuesta de UI de la Landing Page traduce las decisiones de las secciones anteriores: la jerarquÃ­a visual ordena el contenido desde la propuesta de valor hasta la presentaciÃ³n de la startup; las etiquetas (Home, Features, Benefits, Plans, About Us) siguen el Labeling System; la barra fija con anclas, las llamadas a la acciÃ³n por segmento y el enlace "Sign in" implementan el Navigation System; y el Design System de la secciÃ³n 4.1 (Inter, verde azulado #0F766E, azul pizarra #0F172A y Material Symbols Rounded) se aplica de forma consistente con la Web Application. La Landing Page atiende las user stories US01 a US05 y US44 a US49. Los wireframes y mock-ups se elaboraron en Figma y estÃ¡n disponibles en el archivo de diseÃ±o de DoofPlus (https://www.figma.com/design/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?node-id=19-813).

Las secciones se presentan en el siguiente orden, que prioriza la informaciÃ³n que el visitante necesita para decidir (quÃ© es DoofPlus, quÃ© ofrece y cuÃ¡nto cuesta) antes que la presentaciÃ³n del equipo:

| N.Â° | SecciÃ³n | Contenido | User stories |
| --- | --- | --- | --- |
| 1 | Home | Propuesta de valor, botÃ³n "Get Started" y enlace "View plans" | US01 |
| 2 | Get Started | Una tarjeta por segmento con acceso al inicio de sesiÃ³n de su entorno y el enlace "Register your laboratory" | US48, US50 |
| 3 | Services | Cuatro servicios principales con Ã­cono y descripciÃ³n | US02 |
| 4 | Features | AcordeÃ³n con las funcionalidades clave | US02 |
| 5 | About the product (video) | Video promocional embebido | US49 |
| 6 | Benefits | Beneficios medibles para el laboratorio | US02 |
| 7 | Plans | Planes Standard Lab y Enterprise con selector mensual/anual | US03, US51 |
| 8 | Testimonials | Opiniones de clientes | US01 |
| 9 | FAQ | Preguntas frecuentes en acordeÃ³n | US05 |
| 10 | Contact | Banda de llamada a la acciÃ³n "Contact us" | US04 |
| 11 | About Us | MisiÃ³n y visiÃ³n de IngesCompany | US45 |
| 12 | Our Team | Integrantes del equipo y Video About-the-Team embebido | US45 |
| 13 | Footer | Logotipo blanco, enlaces, contacto, tÃ©rminos, privacidad y selector de idioma | US46, US47 |

### 4.3.1. Landing Page Wireframe
Los wireframes son de baja fidelidad: los textos se representan con barras, las imÃ¡genes con un recuadro cruzado y los Ã­conos con cÃ­rculos; solo se conservan los tÃ­tulos y las etiquetas de los botones, que definen la estructura. AsÃ­ se valida la disposiciÃ³n y el flujo de la informaciÃ³n sin decidir aÃºn colores ni contenido final.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** barra superior fija con el logotipo, los enlaces a las secciones, "Sign in" y "Get Started". Debajo, el tÃ­tulo de la propuesta de valor, un pÃ¡rrafo breve, los dos botones y una imagen del producto a la derecha.

![Landing Page Wireframe Â· Home](../assets/img/chapter4/landing-page/wireframes/desktop/01-home.png)

**Get Started:** dos tarjetas, una por segmento (QA/QC y Production), cada una con su descripciÃ³n y su botÃ³n de acceso; debajo, el enlace para registrar un laboratorio nuevo.

![Landing Page Wireframe Â· Get Started](../assets/img/chapter4/landing-page/wireframes/desktop/02-get-started.png)

**Services:** cuatro tarjetas en una fila, cada una con Ã­cono, tÃ­tulo y descripciÃ³n.

![Landing Page Wireframe Â· Services](../assets/img/chapter4/landing-page/wireframes/desktop/03-services.png)

**Features:** imagen a la izquierda y acordeÃ³n a la derecha; solo un elemento permanece abierto a la vez.

![Landing Page Wireframe Â· Features](../assets/img/chapter4/landing-page/wireframes/desktop/04-features.png)

**About the product (video):** tÃ­tulo, descripciÃ³n y un reproductor de video centrado.

![Landing Page Wireframe Â· Video](../assets/img/chapter4/landing-page/wireframes/desktop/05-about-the-product-video.png)

**Benefits:** cuatro tarjetas con una cifra destacada y su explicaciÃ³n.

![Landing Page Wireframe Â· Benefits](../assets/img/chapter4/landing-page/wireframes/desktop/06-benefits.png)

**Plans:** selector mensual/anual y dos tarjetas de plan con precio, lista de caracterÃ­sticas y botÃ³n de suscripciÃ³n.

![Landing Page Wireframe Â· Plans](../assets/img/chapter4/landing-page/wireframes/desktop/07-plans.png)

**Testimonials:** tres tarjetas con cita, nombre y cargo.

![Landing Page Wireframe Â· Testimonials](../assets/img/chapter4/landing-page/wireframes/desktop/08-testimonials.png)

**FAQ:** lista de preguntas en acordeÃ³n.

![Landing Page Wireframe Â· FAQ](../assets/img/chapter4/landing-page/wireframes/desktop/09-faq.png)

**Contact:** banda horizontal con un mensaje y el botÃ³n "Contact us", que abre la pÃ¡gina de contacto.

![Landing Page Wireframe Â· Contact](../assets/img/chapter4/landing-page/wireframes/desktop/10-contact.png)

**About Us:** texto de misiÃ³n y visiÃ³n junto a una imagen.

![Landing Page Wireframe Â· About Us](../assets/img/chapter4/landing-page/wireframes/desktop/11-about-us.png)

**Our Team:** cuadrÃ­cula de tarjetas con foto, nombre y rol, y debajo el reproductor del Video About-the-Team con su descripciÃ³n y capÃ­tulos.

![Landing Page Wireframe Â· Our Team](../assets/img/chapter4/landing-page/wireframes/desktop/12-our-team.png)

**Footer:** logotipo, columnas de enlaces (producto, empresa y legal), datos de contacto, derechos de autor y selector de idioma.

![Landing Page Wireframe Â· Footer](../assets/img/chapter4/landing-page/wireframes/desktop/13-footer.png)

**PÃ¡ginas secundarias (Desktop):** la pÃ¡gina "Contact us" contiene el formulario de consultas (nombre, correo y consulta); si el correo es invÃ¡lido o la consulta estÃ¡ vacÃ­a, se muestra el estado "Invalid data" con los campos resaltados; si el envÃ­o es correcto, se muestra "Message sent". El footer enlaza ademÃ¡s "Terms of Service" y "Privacy Policy".

| Contact us | Contact us Â· Invalid data | Message sent |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us.png) | ![Contact us Â· Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-message-sent.png) |

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/wireframes/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

En mobile las mismas secciones se apilan en una sola columna, en el mismo orden; las tarjetas ocupan todo el ancho y la navegaciÃ³n se agrupa en un menÃº hamburguesa que se abre como overlay.

![Landing Page Wireframe Â· Mobile (1)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-1.png)

![Landing Page Wireframe Â· Mobile (2)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-2.png)

![Landing Page Wireframe Â· Mobile (3)](../assets/img/chapter4/landing-page/wireframes/mobile/mobile-montage-3.png)

| Menu open | Contact us | Contact us Â· Invalid data | Message sent |
| :---: | :---: | :---: | :---: |
| ![Menu open](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-menu-open.png) | ![Contact us](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us.png) | ![Invalid data](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/wireframes/pages/landing-mobile-message-sent.png) |

### 4.3.2. Landing Page Mock-up

Los mock-ups aplican sobre los wireframes el Design System de la secciÃ³n 4.1 y se presentan en inglÃ©s (en-US), idioma por defecto; el selector "EN / ES" de la barra de navegaciÃ³n cambia todos los textos al espaÃ±ol latinoamericano (es-419). Se aplican ademÃ¡s criterios de diseÃ±o inclusivo: contraste alto entre texto y fondo, botones con texto explÃ­cito, estados que no dependen solo del color y Ã¡reas tÃ¡ctiles de 48 px.

**Desktop Web Browser (1440 px)**

**Navigation y Home:** la barra blanca muestra el logotipo a color, los enlaces Home, Features, Benefits, Plans y About Us, el selector de idioma, "Sign in" y el botÃ³n "Get Started". El hero presenta el tÃ­tulo "The future of pharmaceutical quality management", una descripciÃ³n breve, el botÃ³n "Get Started" (desplaza a la secciÃ³n del mismo nombre) y "View plans" (desplaza a Plans).

![Landing Page Mock-up Â· Home](../assets/img/chapter4/landing-page/mockups/desktop/01-home.png)

**Get Started:** cada segmento tiene su tarjeta: "QA/QC Specialist" lleva al inicio de sesiÃ³n del entorno QA/QC y "Production Supervisor" al del entorno de ProducciÃ³n. Los laboratorios que aÃºn no usan DoofPlus encuentran el enlace "Register your laboratory", que abre el registro de la organizaciÃ³n.

![Landing Page Mock-up Â· Get Started](../assets/img/chapter4/landing-page/mockups/desktop/02-get-started.png)

**Services:** "Real-time IoT monitoring", "Automated GMP compliance", "Immutable traceability" y "Digital batch management", cada uno con su Ã­cono Material Symbols y una descripciÃ³n breve.

![Landing Page Mock-up Â· Services](../assets/img/chapter4/landing-page/mockups/desktop/03-services.png)

**Features:** el acordeÃ³n presenta la integraciÃ³n de telemetrÃ­a IoT, el motor de cumplimiento GMP, las alertas de desviaciÃ³n y el panel de indicadores; cada elemento se expande para mostrar su descripciÃ³n.

![Landing Page Mock-up Â· Features](../assets/img/chapter4/landing-page/mockups/desktop/04-features.png)

**About the product (video):** el video promocional explica en pocos minutos cÃ³mo DoofPlus acompaÃ±a un lote desde la orden de producciÃ³n hasta su liberaciÃ³n.

![Landing Page Mock-up Â· Video](../assets/img/chapter4/landing-page/mockups/desktop/05-about-the-product-video.png)

**Benefits:** cuatro tarjetas comunican los beneficios: menos tiempo de preparaciÃ³n de auditorÃ­as, registros sin transcripciÃ³n manual, detecciÃ³n inmediata de desviaciones e infraestructura SaaS sin servidores propios.

![Landing Page Mock-up Â· Benefits](../assets/img/chapter4/landing-page/mockups/desktop/06-benefits.png)

**Plans:** se comparan Standard Lab (US$199 al mes; hasta 5 dispositivos IoT y 10 usuarios) y Enterprise (US$599 al mes; dispositivos y usuarios ilimitados, multi-sede). El selector "Monthly / Annual" muestra la modalidad anual (US$1,990 y US$5,990), equivalente a dos meses gratis. El botÃ³n de cada plan lleva al registro de la organizaciÃ³n con el plan preseleccionado.

![Landing Page Mock-up Â· Plans](../assets/img/chapter4/landing-page/mockups/desktop/07-plans.png)

**Testimonials:** tres opiniones de profesionales de laboratorios farmacÃ©uticos con su nombre y cargo.

![Landing Page Mock-up Â· Testimonials](../assets/img/chapter4/landing-page/mockups/desktop/08-testimonials.png)

**FAQ:** preguntas sobre cumplimiento normativo, integraciÃ³n IoT, planes y seguridad de los datos, en un acordeÃ³n.

![Landing Page Mock-up Â· FAQ](../assets/img/chapter4/landing-page/mockups/desktop/09-faq.png)

**Contact:** la banda invita a resolver dudas con el botÃ³n "Contact us", que abre la pÃ¡gina del formulario de contacto.

![Landing Page Mock-up Â· Contact](../assets/img/chapter4/landing-page/mockups/desktop/10-contact.png)

**About Us:** presenta a IngesCompany, la startup detrÃ¡s de DoofPlus, con su misiÃ³n y su visiÃ³n.

![Landing Page Mock-up Â· About Us](../assets/img/chapter4/landing-page/mockups/desktop/11-about-us.png)

**Our Team:** presenta a los integrantes de IngesCompany: Marcelo Angulo, Yhoshua Cobades, Ricardo Flores, Nestor Rojas y Rodolfo Zavaleta, con su foto, nombre y rol. Debajo se incrusta el Video About-the-Team, que resume el proceso de trabajo del equipo, la retrospectiva y el testimonio de cada integrante, con un enlace alternativo a YouTube.

![Landing Page Mock-up Â· Our Team](../assets/img/chapter4/landing-page/mockups/desktop/12-our-team.png)

**Footer:** fondo azul pizarra con el logotipo blanco, los enlaces de producto y de empresa, los datos de contacto (doofplus.inges@gmail.com, +51 (1) 234-5678, Lima, PerÃº), los enlaces "Terms of Service" y "Privacy Policy", el copyright de IngesCompany y el selector de idioma.

![Landing Page Mock-up Â· Footer](../assets/img/chapter4/landing-page/mockups/desktop/13-footer.png)

**PÃ¡ginas secundarias (Desktop):** "Contact us" registra la consulta del visitante (US04); ante datos invÃ¡lidos muestra el aviso general y el error bajo cada campo, conservando lo ingresado; tras un envÃ­o correcto confirma la recepciÃ³n en "Message sent". "Terms of Service" y "Privacy Policy" presentan las condiciones de uso y el tratamiento de datos personales (US47).

| Contact us | Contact us Â· Invalid data | Message sent |
| :---: | :---: | :---: |
| ![Contact us](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-contact-us.png) | ![Contact us Â· Invalid data](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-message-sent.png) |

| Terms of Service | Privacy Policy |
| :---: | :---: |
| ![Terms of Service](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-terms-of-service.png) | ![Privacy Policy](../assets/img/chapter4/landing-page/mockups/pages/landing-desktop-privacy-policy.png) |

**Mobile Web Browser (390 px)**

La versiÃ³n mobile mantiene el orden y el contenido de desktop en una sola columna. El menÃº hamburguesa abre un overlay con los enlaces de navegaciÃ³n, "Sign in", "Get Started" y el selector de idioma.

![Landing Page Mock-up Â· Mobile (1)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-1.png)

![Landing Page Mock-up Â· Mobile (2)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-2.png)

![Landing Page Mock-up Â· Mobile (3)](../assets/img/chapter4/landing-page/mockups/mobile/mobile-montage-3.png)

| Menu open | Contact us | Contact us Â· Invalid data | Message sent |
| :---: | :---: | :---: | :---: |
| ![Menu open](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-menu-open.png) | ![Contact us](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-contact-us.png) | ![Invalid data](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-contact-us-invalid-data.png) | ![Message sent](../assets/img/chapter4/landing-page/mockups/pages/landing-mobile-message-sent.png) |

## 4.4. Web Applications UX/UI Design

Esta secciÃ³n describe el diseÃ±o de experiencia (UX) e interfaz (UI) de la Web Application de DoofPlus. La aplicaciÃ³n se organiza en tres entornos, cada uno con su propio inicio de sesiÃ³n, color y mÃ³dulos: **QA/QC** (segmento 1, especialista de aseguramiento y control de calidad, persona MarÃ­a MÃ©xico), **Production** (segmento 2, jefe o supervisor de producciÃ³n, persona Alberto Valle) y **Administration** (administrador del laboratorio, que registra la organizaciÃ³n, invita a los usuarios y gestiona la suscripciÃ³n). Los datos de ejemplo corresponden a un mismo caso: Laboratorios Andinos S.A.C., el lote B-26041 de Paracetamol 500 mg y la excursiÃ³n de temperatura del sensor T-204 que origina la desviaciÃ³n DEV-26017, de modo que las pantallas de ambos segmentos cuentan una historia coherente. Los wireframes y mock-ups de escritorio y mobile se elaboraron en Figma y estÃ¡n disponibles en el archivo de diseÃ±o de DoofPlus (https://www.figma.com/design/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?node-id=19-814).

Todas las pantallas comparten la misma estructura, derivada de la arquitectura de informaciÃ³n de la secciÃ³n 4.2: un sidebar con el logotipo, el entorno activo y sus mÃ³dulos (navegaciÃ³n global); una barra superior con la bÃºsqueda global, el selector de idioma y el avatar del usuario; y un Ã¡rea de contenido que ubica arriba los indicadores y abajo las tablas de detalle. Las acciones crÃ­ticas, como aprobar, liberar o rechazar, se confirman con firma electrÃ³nica (US08), y los estados se muestran con los valores del modelo de dominio.

### 4.4.1. Web Applications Wireframes

Los wireframes de baja fidelidad definen la distribuciÃ³n de cada pantalla antes del diseÃ±o visual. Se agrupan por segmento y se presentan en montajes, en el mismo orden que los mock-ups de la secciÃ³n 4.4.3, donde se explica cada pantalla.

**Desktop Web Browser Â· Compartido: elecciÃ³n de entorno, registro de la organizaciÃ³n y perfil**

Incluye "Sign in Â· Choose your environment", "Organization registration" con su estado "RUC already registered" y "Account Â· Profile & preferences".

![Web App Wireframes Â· Desktop Â· Shared](../assets/img/chapter4/web-application/wireframes/desktop-shared-environment-selection-onboarding-profile-montage-1.png)

**Desktop Web Browser Â· Segmento 1: Especialista QA/QC**

Incluye el inicio de sesiÃ³n del entorno QA/QC con sus estados (credenciales invÃ¡lidas, 2FA y acceso no autorizado) y los mÃ³dulos Quality overview, Quality indicators, Quality documents, Analytical results, Deviation report & detail, CAPA plan, Batch release, Audits & findings, Audit trail, Regulatory reports y Tasks & collaboration.

![Web App Wireframes Â· Desktop Â· QA/QC (1)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-1.png)

![Web App Wireframes Â· Desktop Â· QA/QC (2)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-2.png)

![Web App Wireframes Â· Desktop Â· QA/QC (3)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-3.png)

![Web App Wireframes Â· Desktop Â· QA/QC (4)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-4.png)

![Web App Wireframes Â· Desktop Â· QA/QC (5)](../assets/img/chapter4/web-application/wireframes/desktop-segment-1-qa-qc-specialist-montage-5.png)

**Desktop Web Browser Â· Segmento 2: Jefe o Supervisor de ProducciÃ³n**

Incluye el inicio de sesiÃ³n del entorno de ProducciÃ³n con sus estados y los mÃ³dulos Production overview, Products & master formulas, Production order & master formula, Batches (y su estado "Batch not created"), Batch detail & traceability, Batch IoT evidence, Raw-material receipt, Equipment & IoT devices, IoT overview y Equipment & sensor detail.

![Web App Wireframes Â· Desktop Â· Production (1)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-1.png)

![Web App Wireframes Â· Desktop Â· Production (2)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-2.png)

![Web App Wireframes Â· Desktop Â· Production (3)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-3.png)

![Web App Wireframes Â· Desktop Â· Production (4)](../assets/img/chapter4/web-application/wireframes/desktop-segment-2-production-supervisor-montage-4.png)

**Desktop Web Browser Â· Administrador del laboratorio**

Incluye el inicio de sesiÃ³n del entorno de AdministraciÃ³n y los mÃ³dulos Administration overview, Users & profiles, Invite user y Subscriptions & payments.

![Web App Wireframes Â· Desktop Â· Administration (1)](../assets/img/chapter4/web-application/wireframes/desktop-laboratory-administrator-montage-1.png)

![Web App Wireframes Â· Desktop Â· Administration (2)](../assets/img/chapter4/web-application/wireframes/desktop-laboratory-administrator-montage-2.png)

**Mobile Web Browser**

En mobile se priorizan las tareas que se realizan fuera del escritorio: la elecciÃ³n de entorno y el inicio de sesiÃ³n, la bandeja de tareas, la revisiÃ³n y firma de aprobaciones y la consulta de lotes para QA/QC, y el monitoreo IoT, la consulta de lotes y el reporte de incidencias desde planta para ProducciÃ³n.

![Web App Wireframes Â· Mobile Â· Shared](../assets/img/chapter4/web-application/wireframes/mobile-shared-environment-selection-montage-1.png)

![Web App Wireframes Â· Mobile Â· QA/QC (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Web App Wireframes Â· Mobile Â· QA/QC (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-1-qa-qc-specialist-montage-2.png)

![Web App Wireframes Â· Mobile Â· Production (1)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-1.png)

![Web App Wireframes Â· Mobile Â· Production (2)](../assets/img/chapter4/web-application/wireframes/mobile-segment-2-production-supervisor-montage-2.png)

![Web App Wireframes Â· Mobile Â· Administration](../assets/img/chapter4/web-application/wireframes/mobile-laboratory-administrator-montage-1.png)

### 4.4.2. Web Applications Wireflow Diagrams

Los Wireflow Diagrams combinan los wireframes con las acciones del usuario para representar la secuencia de pantallas que lo llevan a cumplir un objetivo. Para cada segmento se definieron seis user goals, basados en sus user stories. Cada diagrama muestra el user goal, la persona, el camino principal y los puntos de decisiÃ³n que desvÃ­an el flujo hacia una pantalla de error o de bloqueo. Los diagramas se elaboraron en FigJam y estÃ¡n disponibles en el tablero de Wireflows y User Flows (https://www.figma.com/board/6SfHJP9IQFJtTxZKgOYyWp).

#### Segmento 1 â€“ Especialista de Aseguramiento y Control de Calidad (QA/QC)

**User Goal QA-1:** Ingresar a DoofPlus y acceder al entorno QA/QC (US06, US07).

Como especialista QA/QC, quiero ingresar con mis credenciales y confirmar mi identidad para revisar mis pendientes de calidad. MarÃ­a MÃ©xico elige "Sign in" en la Landing Page, selecciona el entorno QA/QC, ingresa su correo y contraseÃ±a y confirma el cÃ³digo 2FA.

Flujo: Home â†’ Choose your environment â†’ Sign in Â· QA/QC â†’ Two-factor authentication â†’ Quality overview.

![Wireflow QA-1](../assets/img/chapter4/web-application/wireflows/wireflow-qa-1.png)

**User Goal QA-2:** Gestionar la documentaciÃ³n de calidad y sus protocolos (US09, US10, US12, US13, US42).

Como especialista QA/QC, quiero enviar a aprobaciÃ³n la nueva revisiÃ³n de un documento controlado para mantenerlo vigente. MarÃ­a redacta la revisiÃ³n 2.4 del SOP-QA-014, la envÃ­a a aprobaciÃ³n y sigue la tarea, que resuelve la Quality Manager (LucÃ­a Paredes).

Flujo: Quality overview â†’ Quality documents â†’ Tasks & collaboration.

![Wireflow QA-2](../assets/img/chapter4/web-application/wireflows/wireflow-qa-2.png)

**User Goal QA-3:** Registrar una desviaciÃ³n y gestionar su CAPA (US18, US19, US20, US21).

Como especialista QA/QC, quiero documentar la causa raÃ­z de una desviaciÃ³n y crear su plan CAPA para controlar el riesgo de calidad. MarÃ­a abre DEV-26017, registra la causa raÃ­z y crea el plan CAPA con responsables y fechas.

Flujo: Quality overview â†’ Deviation report & detail â†’ CAPA plan.

![Wireflow QA-3](../assets/img/chapter4/web-application/wireflows/wireflow-qa-3.png)

**User Goal QA-4:** Planificar una auditorÃ­a y reunir sus evidencias (US27, US28, US29, US59).

Como especialista QA/QC, quiero planificar una auditorÃ­a y generar su paquete de evidencias para responder a los inspectores. MarÃ­a planifica la auditorÃ­a, revisa el audit trail del alcance y genera el paquete de evidencias.

Flujo: Audits & findings â†’ Audit trail â†’ Regulatory reports.

![Wireflow QA-4](../assets/img/chapter4/web-application/wireflows/wireflow-qa-4.png)

**User Goal QA-5:** Registrar y validar resultados analÃ­ticos (US11).

Como especialista QA/QC, quiero registrar las variables de un ensayo y que el sistema calcule el resultado para respaldar la liberaciÃ³n del lote. El sistema aplica la fÃ³rmula del protocolo y compara el resultado con la especificaciÃ³n.

Flujo: Quality overview â†’ Analytical results â†’ Batch release.

![Wireflow QA-5](../assets/img/chapter4/web-application/wireflows/wireflow-qa-5.png)

**User Goal QA-6:** Revisar la trazabilidad completa de un lote y liberarlo (US27, US54).

Como especialista QA/QC, quiero revisar todos los eventos atribuidos de un lote antes de firmar su liberaciÃ³n. MarÃ­a revisa el audit trail del lote B-26041 y firma la liberaciÃ³n.

Flujo: Quality overview â†’ Audit trail â†’ Batch release.

![Wireflow QA-6](../assets/img/chapter4/web-application/wireflows/wireflow-qa-6.png)

#### Segmento 2 â€“ Jefe o Supervisor de ProducciÃ³n FarmacÃ©utica

**User Goal PR-1:** Ingresar a DoofPlus y acceder al entorno de ProducciÃ³n (US06, US07).

Como jefe de producciÃ³n, quiero ingresar con mis credenciales y confirmar mi identidad para supervisar las Ã³rdenes activas. Alberto Valle elige "Sign in", selecciona el entorno de ProducciÃ³n, ingresa sus credenciales y confirma el cÃ³digo 2FA.

Flujo: Home â†’ Choose your environment â†’ Sign in Â· Production â†’ Two-factor authentication â†’ Production overview.

![Wireflow PR-1](../assets/img/chapter4/web-application/wireflows/wireflow-pr-1.png)

**User Goal PR-2:** Gestionar la ejecuciÃ³n de un lote y consultar su historial (US35, US36, US57, US14, US15, US16).

Como jefe de producciÃ³n, quiero emitir la orden de producciÃ³n de un producto con fÃ³rmula maestra aprobada y registrar su lote para seguir su ejecuciÃ³n.

Flujo: Products & master formulas â†’ Production order & master formula â†’ Batches â†’ Batch detail & traceability.

![Wireflow PR-2](../assets/img/chapter4/web-application/wireflows/wireflow-pr-2.png)

**User Goal PR-3:** Monitorear equipos y condiciones ambientales (US23, US24, US25, US26, US37).

Como jefe de producciÃ³n, quiero seguir una alerta IoT hasta el equipo y la evidencia del lote en proceso para actuar a tiempo. Alberto abre la alerta del equipo EQ-COAT-02 y luego la evidencia IoT del lote.

Flujo: IoT overview â†’ Equipment & sensor detail â†’ Batch IoT evidence.

![Wireflow PR-3](../assets/img/chapter4/web-application/wireflows/wireflow-pr-3.png)

**User Goal PR-4:** Reportar una incidencia de producciÃ³n desde planta (US56, US22).

Como jefe de producciÃ³n, quiero reportar una incidencia desde mi celular cuando recibo una alerta de equipo para que Calidad la evalÃºe.

Flujo (Mobile): Alert details â†’ Incident reporting â†’ Incident submitted.

![Wireflow PR-4](../assets/img/chapter4/web-application/wireflows/wireflow-pr-4.png)

**User Goal PR-5:** Trazar un lote para investigar un evento (US15, US17, US58).

Como jefe de producciÃ³n, quiero revisar la genealogÃ­a de un lote y la recepciÃ³n de sus insumos para verificar su disposiciÃ³n de calidad. Si el lote del insumo sigue en cuarentena, Alberto hace seguimiento a la solicitud de aprobaciÃ³n en Tasks & collaboration.

Flujo: Batches â†’ Batch detail & traceability â†’ Raw-material receipt.

![Wireflow PR-5](../assets/img/chapter4/web-application/wireflows/wireflow-pr-5.png)

**User Goal PR-6:** Revisar reportes e indicadores de producciÃ³n (US32, US33).

Como jefe de producciÃ³n, quiero revisar los indicadores de producciÃ³n y el historial de un lote para tomar decisiones sobre la planta.

Flujo: Production overview â†’ Batches â†’ Batch detail & traceability.

![Wireflow PR-6](../assets/img/chapter4/web-application/wireflows/wireflow-pr-6.png)

### 4.4.3. Web Applications Mock-ups

Los mock-ups aplican el Design System de la secciÃ³n 4.1 sobre los wireframes y se presentan en inglÃ©s (en-US), idioma por defecto. Cada entorno se reconoce por su color: QA/QC en verde azulado (#0F766E), Production en azul (#1E40AF) y Administration en azul pizarra (#334155). A continuaciÃ³n se presentan las pantallas Desktop por grupo, con su propÃ³sito y las user stories que atienden.

#### Compartido: elecciÃ³n de entorno, registro de la organizaciÃ³n y perfil

**Sign in Â· Choose your environment:** se abre desde "Sign in" en la Landing Page. Presenta tres tarjetas, QA/QC, Production y Administration, cada una con su color, Ã­cono y descripciÃ³n; al elegir una se abre el inicio de sesiÃ³n de ese entorno. Incluye el enlace "Register your laboratory" y "See plans" para quienes aÃºn no tienen cuenta.

![Mock-up Â· Choose your environment](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/sign-in-choose-your-environment.png)

**Organization registration:** el administrador registra el laboratorio con su razÃ³n social, RUC, planta y datos de contacto, y elige su plan, que aparece preseleccionado cuando llega desde la secciÃ³n Plans de la Landing Page (US50, US51). Si el RUC ya pertenece a otra organizaciÃ³n, el formulario muestra el estado "RUC already registered" y no crea un duplicado.

| Organization registration | RUC already registered |
| :---: | :---: |
| ![Organization registration](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/organization-registration.png) | ![RUC already registered](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/organization-registration-ruc-already-registered.png) |

**Account Â· Profile & preferences:** se abre desde el avatar en cualquier entorno. Muestra los datos personales y el Ã¡rea del usuario, sus preferencias de notificaciÃ³n (correo y en la aplicaciÃ³n) y de idioma, y el estado del segundo factor; el rol y el acceso a la planta los asigna el administrador del laboratorio.

![Mock-up Â· Profile & preferences](../assets/img/chapter4/web-application/mockups/desktop-shared-environment-selection-onboarding-profile/account-profile-preferences.png)

#### Segmento 1 â€“ Especialista QA/QC

**Sign in Â· QA/QC:** inicio de sesiÃ³n del entorno QA/QC con correo corporativo y contraseÃ±a (US06). Si las credenciales no son vÃ¡lidas se muestra "Invalid credentials" (tras cinco intentos la cuenta se bloquea quince minutos); luego se solicita el cÃ³digo 2FA; si el rol del usuario no autoriza el entorno se muestra "Access not authorized" (US07).

| Sign in Â· QA/QC | Invalid credentials |
| :---: | :---: |
| ![Sign in QA/QC](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-invalid-credentials.png) |

| Two-factor authentication | Access not authorized |
| :---: | :---: |
| ![2FA](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-two-factor-authentication.png) | ![Access not authorized](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/sign-in-qa-qc-access-not-authorized.png) |

**Quality overview:** dashboard de calidad (US31) con los lotes pendientes de liberaciÃ³n, las desviaciones abiertas, los planes CAPA vencidos y las alertas recientes, como la excursiÃ³n de temperatura del sensor T-204.

![Mock-up Â· Quality overview](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-overview.png)

**Quality indicators:** indicadores de trazabilidad y de desviaciones (US33, US34), con los registros obligatorios faltantes por lote.

![Mock-up Â· Quality indicators](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-indicators.png)

**Quality documents:** repositorio de SOP y protocolos con su versiÃ³n y estado (Draft, In review, Approved, Obsolete), y el flujo de aprobaciÃ³n (US09, US10, US12, US13). La aprobaciÃ³n corresponde a la Quality Manager (LucÃ­a Paredes); si la autora de la revisiÃ³n, MarÃ­a MÃ©xico, intenta aprobarla, la aprobaciÃ³n se bloquea, porque las BPM exigen un revisor independiente.

| Quality documents | Self-approval blocked |
| :---: | :---: |
| ![Quality documents](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-documents.png) | ![Self-approval blocked](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-quality-documents-self-approval-blocked.png) |

**Analytical results:** registro de las variables del ensayo; el sistema calcula el resultado con la fÃ³rmula del protocolo y lo compara con la especificaciÃ³n (US11). Un resultado fuera de especificaciÃ³n (OOS) exige registrar una desviaciÃ³n.

![Mock-up Â· Analytical results](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-analytical-results.png)

**Deviation report & detail:** detalle de DEV-26017 con su severidad, el lote afectado, la evidencia IoT asociada y el anÃ¡lisis de causa raÃ­z (US18, US19, US22). Estados: Open, Under investigation y Closed.

![Mock-up Â· Deviation report & detail](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-deviation-report-detail.png)

**CAPA plan:** acciones correctivas y preventivas con responsable, fecha lÃ­mite y estado (Open, Implemented, Overdue, Verified) (US20, US21). Mientras la causa raÃ­z estÃ© incompleta, el plan no puede avanzar.

| CAPA plan | Root cause required |
| :---: | :---: |
| ![CAPA plan](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-capa-plan.png) | ![Root cause required](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-capa-plan-root-cause-required.png) |

**Batch release:** lista de verificaciÃ³n de la liberaciÃ³n del lote B-26041 (resultados analÃ­ticos, desviaciones cerradas, evidencia IoT y registros completos) y firma electrÃ³nica (US54, US08). Si algÃºn control no se cumple, la liberaciÃ³n se bloquea y se listan los registros pendientes.

| Batch release | Release blocked |
| :---: | :---: |
| ![Batch release](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-batch-release.png) | ![Release blocked](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-batch-release-blocked.png) |

**Audits & findings:** planificaciÃ³n de auditorÃ­as internas y registro de sus hallazgos (US29, US59).

![Mock-up Â· Audits & findings](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-audits-findings.png)

**Audit trail:** registro inmutable de cada cambio con usuario, fecha, valor anterior, valor nuevo y motivo, filtrable por lote, usuario o fecha (US27, US30).

![Mock-up Â· Audit trail](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-audit-trail.png)

**Regulatory reports:** generaciÃ³n de reportes y del paquete de evidencias de una auditorÃ­a o inspecciÃ³n (US28).

![Mock-up Â· Regulatory reports](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-regulatory-reports.png)

**Tasks & collaboration:** bandeja de tareas y solicitudes de aprobaciÃ³n entre Calidad y ProducciÃ³n, con su estado y responsable (US40, US41, US42, US43).

![Mock-up Â· Tasks & collaboration](../assets/img/chapter4/web-application/mockups/desktop-segment-1-qa-qc-specialist/qa-qc-tasks-collaboration.png)

#### Segmento 2 â€“ Jefe o Supervisor de ProducciÃ³n

**Sign in Â· Production:** mismo flujo de ingreso que QA/QC, con el color del entorno de ProducciÃ³n: credenciales, "Invalid credentials", cÃ³digo 2FA y "Access not authorized" (US06, US07).

| Sign in Â· Production | Invalid credentials |
| :---: | :---: |
| ![Sign in Production](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-invalid-credentials.png) |

| Two-factor authentication | Access not authorized |
| :---: | :---: |
| ![2FA](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-two-factor-authentication.png) | ![Access not authorized](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/sign-in-production-access-not-authorized.png) |

**Production overview:** dashboard de producciÃ³n (US32) con las Ã³rdenes activas, los lotes por estado, el rendimiento y las alertas de las lÃ­neas.

![Mock-up Â· Production overview](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-production-overview.png)

**Products & master formulas:** catÃ¡logo de productos y sus fÃ³rmulas maestras con versiÃ³n y estado; solo una fÃ³rmula aprobada, como MFR-AC500 v3.2, puede usarse en una orden (US35, US36).

![Mock-up Â· Products & master formulas](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-products-master-formulas.png)

**Production order & master formula:** emisiÃ³n de la orden de producciÃ³n a partir de la fÃ³rmula maestra aprobada, con cantidades, equipos y fechas (US57).

![Mock-up Â· Production order](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-production-order-master-formula.png)

**Batches:** registro y lista de lotes con su estado (Planned, In progress, On hold, Finished, Release requested, Released, Rejected) (US14, US16). Si el nÃºmero de lote ya existe o la fÃ³rmula no estÃ¡ aprobada, el lote no se crea y se explica el motivo.

| Batches | Batch not created |
| :---: | :---: |
| ![Batches](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batches.png) | ![Batch not created](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batches-batch-not-created.png) |

**Batch detail & traceability:** historial del lote B-26041 (120,000 tabletas) con su genealogÃ­a: materias primas, equipos, etapas y eventos (US15, US17).

![Mock-up Â· Batch detail & traceability](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batch-detail-traceability.png)

**Batch IoT evidence:** lecturas de los sensores asociados al lote, capturadas automÃ¡ticamente, con la excursiÃ³n de 27.8 Â°C del sensor T-204 frente al lÃ­mite de 18â€“25 Â°C (US25, US26).

![Mock-up Â· Batch IoT evidence](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-batch-iot-evidence.png)

**Raw-material receipt:** recepciÃ³n de materias primas con su lote de proveedor y su estado de calidad (Quarantine, Approval requested, Approved, Rejected) (US58). Un insumo solo puede usarse en un lote cuando Calidad lo aprueba.

![Mock-up Â· Raw-material receipt](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-raw-material-receipt.png)

**Equipment & IoT devices:** registro de equipos y sensores con su estado (Fit for use, Not fit for use, In maintenance), calibraciones y mantenimientos (US23, US37, US38, US39). Un equipo no apto o un sensor ya asociado a otro lote no puede vincularse (US24).

![Mock-up Â· Equipment & IoT devices](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/production-equipment-iot-devices.png)

**IoT overview y Equipment & sensor detail:** monitoreo en tiempo real de los sensores de planta y detalle de un equipo con sus lecturas, lÃ­mites y alertas (US26).

| IoT overview | Equipment & sensor detail |
| :---: | :---: |
| ![IoT overview](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/iot-iot-overview.png) | ![Equipment & sensor detail](../assets/img/chapter4/web-application/mockups/desktop-segment-2-production-supervisor/iot-equipment-sensor-detail.png) |

#### Administrador del laboratorio

**Sign in Â· Administration:** ingreso al entorno de AdministraciÃ³n con credenciales y cÃ³digo 2FA.

| Sign in Â· Administration | Invalid credentials | Two-factor authentication |
| :---: | :---: | :---: |
| ![Sign in Administration](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration.png) | ![Invalid credentials](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration-invalid-credentials.png) | ![2FA](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/sign-in-administration-two-factor-authentication.png) |

**Administration overview:** resumen de los usuarios activos e invitaciones pendientes, la organizaciÃ³n y sus sedes (planta de Ate y laboratorio de Lima), el estado de la suscripciÃ³n, los usuarios que requieren atenciÃ³n y la actividad administrativa reciente.

![Mock-up Â· Administration overview](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-administration-overview.png)

**Users & profiles e Invite user:** lista de usuarios con su rol y estado (Invited, Active, Locked, Disabled) y el diÃ¡logo para invitar a un nuevo integrante con su rol (US07, US55).

| Users & profiles | Invite user |
| :---: | :---: |
| ![Users & profiles](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-users-profiles.png) | ![Invite user](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-invite-user.png) |

**Subscriptions & payments:** plan vigente, modalidad mensual o anual, historial de pagos con Niubiz y su estado (Pending, Approved, Rejected), y las opciones de renovaciÃ³n y cancelaciÃ³n (US51, US52, US53).

![Mock-up Â· Subscriptions & payments](../assets/img/chapter4/web-application/mockups/desktop-laboratory-administrator/administration-subscriptions-payments.png)

#### Mobile Web Browser

En mobile, la navegaciÃ³n del entorno se agrupa en una barra inferior y las pantallas se reducen a las tareas de campo de cada segmento.

**Compartido:** elecciÃ³n del entorno.

![Mock-up Â· Mobile Â· Shared](../assets/img/chapter4/web-application/mockups/mobile-shared-environment-selection-montage-1.png)

**Segmento 1 â€“ QA/QC:** inicio de sesiÃ³n con sus estados, Task inbox, Approval review y Approval completed, donde la Quality Manager aprueba el documento (con el estado "Record changed", que impide firmar si el registro cambiÃ³ durante la revisiÃ³n), Electronic signature (con el estado "Invalid password") y Signature confirmed, donde MarÃ­a firma la liberaciÃ³n del lote B-26038, y Batch detail.

![Mock-up Â· Mobile Â· QA/QC (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-1.png)

![Mock-up Â· Mobile Â· QA/QC (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-1-qa-qc-specialist-montage-2.png)

**Segmento 2 â€“ Production:** inicio de sesiÃ³n con sus estados, IoT monitoring, Batch lookup, Alert details, Incident reporting (con el estado "Validation error") e Incident submitted.

![Mock-up Â· Mobile Â· Production (1)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-1.png)

![Mock-up Â· Mobile Â· Production (2)](../assets/img/chapter4/web-application/mockups/mobile-segment-2-production-supervisor-montage-2.png)

**Administrador del laboratorio:** inicio de sesiÃ³n del entorno de AdministraciÃ³n con sus estados.

![Mock-up Â· Mobile Â· Administration](../assets/img/chapter4/web-application/mockups/mobile-laboratory-administrator-montage-1.png)

### 4.4.4. Web Applications User Flow Diagrams

Los User Flow Diagrams representan, para los mismos user goals de la secciÃ³n 4.4.2, la secuencia de pantallas y acciones del camino principal (happy path) y las decisiones que llevan a caminos alternativos (unhappy paths). Se elaboraron en FigJam, en el mismo tablero (https://www.figma.com/board/6SfHJP9IQFJtTxZKgOYyWp) que los Wireflow Diagrams.

#### Segmento 1 â€“ Especialista QA/QC

**User Goal QA-1:** Ingresar a DoofPlus y acceder al entorno QA/QC.

Happy path: Home â†’ "Sign in" â†’ Choose your environment â†’ QA/QC â†’ correo y contraseÃ±a â†’ Two-factor authentication â†’ Quality overview.

Unhappy paths: Â¿Credenciales vÃ¡lidas? No â†’ "Invalid credentials"; permanece en el formulario y, tras cinco intentos, la cuenta se bloquea quince minutos | Â¿El rol autoriza el entorno QA/QC? No â†’ "Access not authorized".

![User Flow QA-1](../assets/img/chapter4/web-application/user-flows/user-flow-qa-1.png)

**User Goal QA-2:** Gestionar la documentaciÃ³n de calidad y sus protocolos.

Happy path: Quality overview â†’ Quality documents â†’ envÃ­a la revisiÃ³n â†’ Tasks & collaboration (tarea de aprobaciÃ³n).

Unhappy path: Â¿El revisor es distinto del autor? No â†’ "Self-approval blocked"; la aprobaciÃ³n debe asignarse a otro revisor.

![User Flow QA-2](../assets/img/chapter4/web-application/user-flows/user-flow-qa-2.png)

**User Goal QA-3:** Registrar una desviaciÃ³n y gestionar su CAPA.

Happy path: Quality overview â†’ Deviation report & detail (DEV-26017) â†’ registra la causa raÃ­z â†’ CAPA plan.

Unhappy path: Â¿La causa raÃ­z estÃ¡ documentada? No â†’ "Root cause required"; el plan CAPA no avanza.

![User Flow QA-3](../assets/img/chapter4/web-application/user-flows/user-flow-qa-3.png)

**User Goal QA-4:** Planificar una auditorÃ­a y reunir sus evidencias.

Happy path: Audits & findings â†’ Audit trail del alcance â†’ Regulatory reports (paquete de evidencias).

Unhappy path: Â¿EstÃ¡n todos los registros obligatorios? No â†’ Quality indicators muestra los registros faltantes antes de la auditorÃ­a.

![User Flow QA-4](../assets/img/chapter4/web-application/user-flows/user-flow-qa-4.png)

**User Goal QA-5:** Registrar y validar resultados analÃ­ticos.

Happy path: Quality overview â†’ Analytical results â†’ resultado dentro de especificaciÃ³n â†’ Batch release.

Unhappy path: Â¿El resultado estÃ¡ dentro de la especificaciÃ³n? No â†’ resultado OOS; se registra una desviaciÃ³n en Deviation report & detail.

![User Flow QA-5](../assets/img/chapter4/web-application/user-flows/user-flow-qa-5.png)

**User Goal QA-6:** Revisar la trazabilidad completa de un lote y liberarlo.

Happy path: Quality overview â†’ Audit trail del lote â†’ Batch release â†’ firma electrÃ³nica.

Unhappy path: Â¿Se cumplen todos los controles de liberaciÃ³n? No â†’ "Release blocked"; se listan los registros pendientes.

![User Flow QA-6](../assets/img/chapter4/web-application/user-flows/user-flow-qa-6.png)

#### Segmento 2 â€“ Jefe o Supervisor de ProducciÃ³n

**User Goal PR-1:** Ingresar a DoofPlus y acceder al entorno de ProducciÃ³n.

Happy path: Home â†’ "Sign in" â†’ Choose your environment â†’ Production â†’ correo y contraseÃ±a â†’ Two-factor authentication â†’ Production overview.

Unhappy paths: Â¿Credenciales vÃ¡lidas? No â†’ "Invalid credentials" | Â¿El rol autoriza el entorno de ProducciÃ³n? No â†’ "Access not authorized".

![User Flow PR-1](../assets/img/chapter4/web-application/user-flows/user-flow-pr-1.png)

**User Goal PR-2:** Gestionar la ejecuciÃ³n de un lote y consultar su historial.

Happy path: Products & master formulas â†’ selecciona la fÃ³rmula aprobada â†’ Production order & master formula â†’ Batches â†’ Batch detail & traceability (B-26041).

Unhappy path: Â¿El nÃºmero de lote es Ãºnico y la fÃ³rmula estÃ¡ aprobada? No â†’ "Batch not created", con el motivo.

![User Flow PR-2](../assets/img/chapter4/web-application/user-flows/user-flow-pr-2.png)

**User Goal PR-3:** Monitorear equipos y condiciones ambientales.

Happy path: IoT overview â†’ alerta de EQ-COAT-02 â†’ Equipment & sensor detail â†’ Batch IoT evidence.

Unhappy path: Â¿El equipo estÃ¡ apto y el sensor libre? No â†’ Equipment & IoT devices; la asociaciÃ³n no se realiza.

![User Flow PR-3](../assets/img/chapter4/web-application/user-flows/user-flow-pr-3.png)

**User Goal PR-4:** Reportar una incidencia de producciÃ³n desde planta.

Happy path (Mobile): Alert details â†’ "Report incident" â†’ Incident reporting â†’ Incident submitted.

Unhappy path: Â¿Los campos obligatorios estÃ¡n completos? No â†’ "Validation error"; el formulario permanece abierto con los errores resaltados.

![User Flow PR-4](../assets/img/chapter4/web-application/user-flows/user-flow-pr-4.png)

**User Goal PR-5:** Trazar un lote para investigar un evento.

Happy path: Batches â†’ Batch detail & traceability â†’ Raw-material receipt del insumo.

Unhappy path: Â¿Calidad aprobÃ³ el lote del insumo? No â†’ el insumo permanece en Quarantine y no puede usarse; la solicitud de aprobaciÃ³n se sigue en Tasks & collaboration.

![User Flow PR-5](../assets/img/chapter4/web-application/user-flows/user-flow-pr-5.png)

**User Goal PR-6:** Revisar reportes e indicadores de producciÃ³n.

Happy path: Production overview â†’ Batches â†’ Batch detail & traceability.

Unhappy path: Â¿Hay una incidencia abierta en una lÃ­nea? SÃ­ â†’ se sigue en IoT overview.

![User Flow PR-6](../assets/img/chapter4/web-application/user-flows/user-flow-pr-6.png)

## 4.5. Web Applications Prototyping

El prototipo interactivo de DoofPlus se construyÃ³ en Figma sobre los mock-ups de las secciones 4.3.2 y 4.4.3, con el fin de validar la navegaciÃ³n y los flujos antes de la implementaciÃ³n. Sus interacciones siguen los paths de los User Flow Diagrams de la secciÃ³n 4.4.4:

- **Landing Page:** los enlaces de la barra desplazan a cada secciÃ³n; "Sign in" abre la elecciÃ³n de entorno; las tarjetas de "Get Started" abren el inicio de sesiÃ³n de su entorno; los botones de los planes y "Register your laboratory" abren el registro de la organizaciÃ³n; "Contact us" abre el formulario de contacto, y los enlaces del footer, los tÃ©rminos y la polÃ­tica de privacidad. En mobile, el Ã­cono de menÃº abre el overlay de navegaciÃ³n.
- **Ingreso:** la elecciÃ³n de entorno abre el inicio de sesiÃ³n de QA/QC, Production o Administration; "Continue" lleva al cÃ³digo 2FA y "Verify" a la pantalla inicial del entorno. Los estados de error se muestran como pantallas alternativas.
- **Web Application:** el sidebar lleva a cada mÃ³dulo del entorno, el avatar abre "Profile & preferences" y los botones de cada pantalla siguen los user goals QA-1 a QA-6 y PR-1 a PR-6, que se definieron como puntos de inicio del prototipo.

Las interacciones aplican el Navigation System de la secciÃ³n 4.2.5. En la Landing Page, la navegaciÃ³n global de la barra fija y los enlaces del footer usan interacciones "Scroll to" hacia cada secciÃ³n; las llamadas a la acciÃ³n y "Sign in" usan "Navigate to" hacia la Web Application, y en mobile el menÃº se abre y se cierra como overlay ("Open overlay" y "Close"). En la Web Application, el sidebar es la navegaciÃ³n global entre los mÃ³dulos del entorno, las pestaÃ±as y los botones de cada pantalla son la navegaciÃ³n local, y el logotipo y "Back to DoofPlus" regresan a la Landing Page; todas estas acciones usan "Navigate to". Las etiquetas de los enlaces son las del Labeling System de la secciÃ³n 4.2.2. Para navegar entre la Landing Page y la Web Application, el prototipo se armÃ³ en una pÃ¡gina propia de Figma ("Prototype") que reÃºne los mock-ups de ambas.

El diseÃ±o del prototipo se guiÃ³ por cuatro criterios:

- **Cumplimiento regulatorio por diseÃ±o:** las acciones crÃ­ticas exigen firma electrÃ³nica, quedan en el audit trail y respetan la segregaciÃ³n de funciones (por ejemplo, el autor de un documento no puede aprobarlo).
- **NavegaciÃ³n basada en los procesos del laboratorio:** los mÃ³dulos siguen el recorrido del lote, desde la fÃ³rmula maestra y la orden de producciÃ³n hasta su liberaciÃ³n.
- **Consistencia visual:** todos los entornos comparten componentes, tipografÃ­a y estructura, y solo cambia el color que identifica al entorno.
- **PrevenciÃ³n de errores:** los estados de bloqueo explican el motivo y la acciÃ³n necesaria, en lugar de permitir una operaciÃ³n que luego deba corregirse.

Prototipo navegable en Figma (pÃ¡gina "Prototype", que une los mock-ups de la Landing Page y de la Web Application para navegar entre ambas): abrir el prototipo (https://www.figma.com/proto/E9MAGI3LDC0m8o6lWTGyfK/DoofPlus?page-id=353%3A237&node-id=353-240&starting-point-node-id=353%3A240). Desde el selector de flujos del visor se accede a los puntos de inicio de cada user goal.

Video de navegaciÃ³n del prototipo: upc-pre-202620-1asi0729-7742-IngesCompany-prototypenavigation-sprint-1, ver en Microsoft Stream (https://upcedupe-my.sharepoint.com/:v:/g/personal/u202423162_upc_edu_pe/IQC9TP0VdDx0SbIEr4nWmikhAceGoBqdZ78DiR68qJ8FV-A?e=1BIqfW) (copia en YouTube (https://youtu.be/6PLCLqaF8Tg)). Inicio: 00:00. DuraciÃ³n: 06:10.

**Landing Page** (desde 00:00 hasta 00:24)

![Video de navegaciÃ³n del prototipo Â· Landing Page](../assets/img/chapter4/prototype/video-landing-page.png)

**Web Application** (desde 00:24 hasta 06:10)

![Video de navegaciÃ³n del prototipo Â· Web Application](../assets/img/chapter4/prototype/video-web-application.png)

## 4.6. Domain-Driven Software Architecture
La arquitectura de DoofPlus se fundamenta en Domain-Driven Design (DDD). El punto de partida es el Big Picture EventStorming (secciÃ³n 2.4), que dejÃ³ una lÃ­nea de tiempo de eventos organizada en siete swimlanes, con sus actores, sistemas externos y problemas. En esta secciÃ³n ese conocimiento se profundiza con un Design-Level EventStorming hasta identificar los bounded contexts y obtener aggregates, commands, policies, read models y sistemas externos por contexto; luego la soluciÃ³n se representa con el modelo C4 (contexto, contenedores y componentes). Cada bounded context se corresponde con un mÃ³dulo de la Web Application en Vue y con un paquete del RESTful API en Spring Boot.

La siguiente tabla resume la trazabilidad entre artefactos:

| Bounded context | Tipo | Swimlanes del Big Picture | Ã‰picas | Aggregates (DLES) | MÃ³dulo Vue / paquete Spring |
| --- | --- | --- | --- | --- | --- |
| Manufacturing & Batch Management | Core | ProducciÃ³n y almacÃ©n | EP04, EP09 (productos y fÃ³rmulas) | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch | `manufacturing` |
| Quality & Compliance | Core | GestiÃ³n documental, Control de calidad y liberaciÃ³n, Desviaciones y CAPA, AuditorÃ­a y cumplimiento | EP03, EP05, EP07, EP08, EP10 | QualityDocument, MaterialApproval, BatchReview, AnalyticalResult, Deviation, Audit, RegulatoryReport | `quality` |
| IoT Monitoring | Supporting | Monitoreo de equipos (IoT) | EP06, EP09 (equipos, calibraciones y mantenimiento) | Equipment, IoTDevice, TelemetryReading, Alert | `iot-monitoring` / `iotmonitoring` |
| Identity & Access Management | Generic | Plataforma y administraciÃ³n, GestiÃ³n documental | EP02 | User, ElectronicSignature | `iam` |
| Organizations & Profiles | Supporting | Plataforma y administraciÃ³n | EP01 (consultas del formulario de contacto), EP02 (registro de la organizaciÃ³n) | Organization, Profile, ContactInquiry | `organizations` |
| Subscriptions & Payments | Generic | Plataforma y administraciÃ³n | EP11 | Plan, Subscription | `subscriptions` |

Los dashboards (EP08) y las notificaciones entre Ã¡reas (EP10) no forman un contexto propio: los dashboards son read models que cada contexto expone y las notificaciones son policies que reaccionan a domain events.

### 4.6.1. Design-Level Event Storming
La arquitectura de DoofPlus se fundamenta en Domain-Driven Design (DDD). El punto de partida es el Big Picture EventStorming (secciÃ³n 2.4), que dejÃ³ una lÃ­nea de tiempo de eventos organizada en siete swimlanes, con sus actores, sistemas externos y problemas. En esta secciÃ³n ese conocimiento se profundiza con un Design-Level EventStorming hasta identificar los bounded contexts y obtener aggregates, commands, policies, read models y sistemas externos por contexto; luego la soluciÃ³n se representa con el modelo C4 (contexto, contenedores y componentes). Cada bounded context se corresponde con un mÃ³dulo de la Web Application en Vue y con un paquete del RESTful API en Spring Boot.

La siguiente tabla resume la trazabilidad entre artefactos:

| Bounded context | Tipo | Swimlanes del Big Picture | Ã‰picas | Aggregates (DLES) | MÃ³dulo Vue / paquete Spring |
| --- | --- | --- | --- | --- | --- |
| Manufacturing & Batch Management | Core | ProducciÃ³n y almacÃ©n | EP04, EP09 (productos y fÃ³rmulas) | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch | `manufacturing` |
| Quality & Compliance | Core | GestiÃ³n documental, Control de calidad y liberaciÃ³n, Desviaciones y CAPA, AuditorÃ­a y cumplimiento | EP03, EP05, EP07, EP08, EP10 | QualityDocument, MaterialApproval, BatchReview, AnalyticalResult, Deviation, Audit, RegulatoryReport | `quality` |
| IoT Monitoring | Supporting | Monitoreo de equipos (IoT) | EP06, EP09 (equipos, calibraciones y mantenimiento) | Equipment, IoTDevice, TelemetryReading, Alert | `iot-monitoring` / `iotmonitoring` |
| Identity & Access Management | Generic | Plataforma y administraciÃ³n, GestiÃ³n documental | EP02 | User, ElectronicSignature | `iam` |
| Organizations & Profiles | Supporting | Plataforma y administraciÃ³n | EP01 (consultas del formulario de contacto), EP02 (registro de la organizaciÃ³n) | Organization, Profile, ContactInquiry | `organizations` |
| Subscriptions & Payments | Generic | Plataforma y administraciÃ³n | EP11 | Plan, Subscription | `subscriptions` |

Los dashboards (EP08) y las notificaciones entre Ã¡reas (EP10) no forman un contexto propio: los dashboards son read models que cada contexto expone y las notificaciones son policies que reaccionan a domain events.

### 4.6.1. Design-Level Event Storming

El equipo realizÃ³ el Design-Level EventStorming en Miro siguiendo la agenda propuesta en "The best agenda for Design-Level Event Storming" (EventStorming Journal) y la guÃ­a del statement (https://bit.ly/dles-guide). Se trabajÃ³ un bounded context a la vez, tomando como punto de partida los eventos del Big Picture que pertenecen a ese contexto. Quality & Compliance, el contexto mÃ¡s grande, se modelÃ³ en un solo frame con dos swimlanes: liberaciÃ³n de lotes (documentos, insumos, resultados analÃ­ticos y liberaciÃ³n) y desviaciones y auditorÃ­a (desviaciones, CAPA, auditorÃ­as y reportes regulatorios).

Tablero de Miro: https://miro.com/app/board/uXjVHkhKOXE=/

La agenda de la guÃ­a tiene 11 fases. El equipo las aplicÃ³ agrupadas en los pasos que ya usaba, y decidiÃ³ quÃ© fases son opcionales para el proyecto:

| Fase de la guÃ­a | Paso en DoofPlus | CÃ³mo se aplicÃ³ |
| --- | --- | --- |
| 1. The target design | Paso 0: Target design | Se presentÃ³ la gramÃ¡tica del Design-Level (actor, read model, command, business rule o external system, domain event y policy). |
| 2. Domain Events | Paso 1: Timelines | Se copiaron los eventos del Big Picture que pertenecen a cada contexto y se ordenaron en el tiempo. |
| 3. Commands | Paso 2: Commands | Se escribiÃ³, antes de cada evento, la intenciÃ³n que lo provoca. |
| 4. Actors or policies | Paso 3: Actors and policies | Cada command se antecediÃ³ por el actor que lo ejecuta o por la policy que lo dispara automÃ¡ticamente. |
| 5 y 6. Blank stickies / Read models and UX mock-ups | Paso 4: Read models | Se registrÃ³ la informaciÃ³n que el actor necesita ver para decidir. Los mock-ups en post-its blancos se omitieron porque las pantallas ya se diseÃ±aron en Figma (secciÃ³n 4.4); cada read model corresponde a una vista de la Web Application. |
| 7. External systems | Paso 5: External systems | Se ubicaron los sistemas externos entre el command y el evento. |
| 8 a 11. Business rules, aggregates of business rules y aggregate names | Paso 6: Business rules y aggregates | Donde no interviene un sistema externo se escribiÃ³ la regla de negocio que protege el command (tomada de los criterios de aceptaciÃ³n de la User Story correspondiente); las reglas relacionadas se apilaron y el grupo recibiÃ³ el nombre del aggregate. |
| Opcional despuÃ©s del taller: Bounded Context Canvas y Example Mapping | Paso 7: Bounded contexts | Se agruparon los aggregates en bounded contexts y se trazÃ³ el context map. El Bounded Context Canvas no se elaborÃ³ (es opcional) y el Example Mapping se reemplazÃ³ por los escenarios Gherkin de la secciÃ³n 3.1. |

NotaciÃ³n usada en el tablero: domain events en naranja, commands en azul, actores en amarillo pequeÃ±o, policies en lila, read models en verde, sistemas externos en rosado, business rules en amarillo y aggregates como bloques amarillos que agrupan sus reglas.

#### Paso 0: Target design

Antes de modelar, se acordÃ³ la "imagen que lo explica todo": un actor consulta un read model, decide y ejecuta un command; el command se valida con las business rules del aggregate o invoca a un sistema externo; el resultado es un domain event, que puede disparar una policy y con ella un nuevo command.

Frame en Miro: https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685756367551

![Target design](../assets/img/chapter4/design-level-event-storming/target-design.jpg)

#### Paso 1: Timelines

Se organizaron en una lÃ­nea de tiempo vertical los eventos de cada contexto, con los resultados alternativos en la columna "Alternativa" (por ejemplo, "Documento aprobado" o "Documento rechazado"). Al revisar quÃ© dispara cada evento, en este nivel se agregaron eventos que faltaban en el Big Picture: "Consulta recibida", "Plan de suscripciÃ³n seleccionado", "Firma electrÃ³nica registrada", "Equipo registrado", "Sensor IoT registrado", "AprobaciÃ³n de insumos solicitada a Calidad", "Mantenimiento preventivo realizado", "Lote puesto en espera" y "AcciÃ³n CAPA vencida"; ademÃ¡s, "Usuario registrado" se renombrÃ³ como "Usuario dado de alta en la organizaciÃ³n". TambiÃ©n aparecen eventos de detalle que no eran relevantes en la vista general, como "Usuario autenticado", "Inicio de sesiÃ³n fallido", "Cuenta bloqueada", "Planta agregada", "Perfil actualizado" y "Alerta reconocida".

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 1](../assets/img/chapter4/design-level-event-storming/timelines/qa-1-timelines.jpg)

#### Paso 2: Commands

Cada evento se antecediÃ³ por el command que lo provoca, redactado en imperativo (por ejemplo, "Crear lote" produce "Lote creado"). Un mismo command puede terminar en dos eventos alternativos, como "Aprobar orden de producciÃ³n", que produce "Orden de producciÃ³n aprobada" u "Orden de producciÃ³n rechazada".

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 2](../assets/img/chapter4/design-level-event-storming/commands/qa-2-commands.jpg)

#### Paso 3: Actors and policies

Se identificÃ³ quiÃ©n ejecuta cada command: Administrador del laboratorio, Especialista QA/QC, Jefe de Calidad, Jefe de ProducciÃ³n, Auditor interno, Responsable de la acciÃ³n CAPA y, para las tareas programadas, el sistema. Cuando un command se ejecuta automÃ¡ticamente, el actor se reemplazÃ³ por una policy. Las principales policies son:

| Bounded context | Policy (cuando ocurreâ€¦, entoncesâ€¦) |
| --- | --- |
| IAM | Cuando ocurren 5 intentos fallidos de inicio de sesiÃ³n, bloquear la cuenta 15 minutos. |
| Organizations | Cuando se registra la organizaciÃ³n, crear la cuenta del administrador en IAM. |
| Subscriptions | Cuando se activa la suscripciÃ³n, habilitar los lÃ­mites del plan (usuarios y sensores). |
| Manufacturing | Cuando se recibe materia prima, solicitar su aprobaciÃ³n a Calidad. |
| Manufacturing | Cuando se aprueba la orden, planificar la producciÃ³n. |
| Manufacturing | Cuando la incidencia es crÃ­tica, poner el lote en espera; cuando se escala, registrar una desviaciÃ³n en Quality. |
| Manufacturing | Cuando se solicita la liberaciÃ³n, poner el lote en cuarentena en Quality. |
| IoT Monitoring | Cuando llega una lectura, evaluar las reglas de alerta; cuando un parÃ¡metro sale de rango, generar una alerta. |
| IoT Monitoring | Cuando vence la calibraciÃ³n, marcar el equipo como no apto y notificar. |
| Quality | Cuando un resultado sale de especificaciÃ³n, marcarlo OOS y registrar una desviaciÃ³n. |
| Quality | Cuando se libera el lote, emitir el certificado y actualizar el lote en Manufacturing. |
| Quality | Cuando se cierra una desviaciÃ³n, reevaluar el lote afectado. |

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 3](../assets/img/chapter4/design-level-event-storming/actors-policies/qa-3-actors-policies.jpg)

#### Paso 4: Read models

Se registrÃ³ la informaciÃ³n que cada actor consulta antes de decidir. Estos read models son la base de las vistas de la Web Application y de los dashboards: por ejemplo, "Panel de control del lote" (GxP Batch Execution & Management Console), "Tablero de desviaciones y CAPA" (Critical Deviations & CAPA Actions Control), "Panel de resultados de laboratorio" (Analytical Results Entry & Validation), "Panel de alertas" (Environmental & Equipment Monitoring) y "Audit trail" (Cross-Traceability & Audit Center). Cada read model se obtiene con una query del contexto, atendida por su query service: por ejemplo, el panel de control del lote se arma con la consulta del lote y su lÃ­nea de tiempo, y el tablero de desviaciones, con la consulta de las desviaciones abiertas por severidad.

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 4](../assets/img/chapter4/design-level-event-storming/read-models/qa-4-read-models.jpg)

#### Paso 5: External systems

Se ubicaron los sistemas externos en el punto donde intervienen: Niubiz (pago y renovaciÃ³n de suscripciones), ThingsBoard (registro de sensores e ingesta de lecturas), SendGrid (invitaciones, alertas y notificaciones por correo), el Lector RFID (recepciÃ³n de materias primas), la app autenticadora del usuario (cÃ³digos TOTP) y DIGEMID (inspecciÃ³n). Respecto del tablero original se corrigieron tres elementos: "Registro en la base de datos" no es un sistema externo (la base de datos es parte de la soluciÃ³n), el "Motor de alertas" es lÃ³gica propia del contexto IoT Monitoring y Google Authenticator no expone un API: solo genera el cÃ³digo que el usuario ingresa.

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 5](../assets/img/chapter4/design-level-event-storming/external-systems/qa-5-external-systems.jpg)

#### Paso 6: Business rules y aggregates

Donde no interviene un sistema externo se escribiÃ³ la business rule que el command debe cumplir. Las reglas se tomaron de los criterios de aceptaciÃ³n de las User Stories (el identificador aparece en el post-it), por ejemplo "NÃºmero de lote Ãºnico (US14)", "Solo materia prima aprobada (US17)" o "Requiere causa raÃ­z y CAPA verificadas (US19)". Las reglas que protegen los mismos datos se apilaron y cada grupo recibiÃ³ el nombre de su aggregate:

| Bounded context | Aggregates | Ejemplo de invariante |
| --- | --- | --- |
| IAM | User, ElectronicSignature | Una cuenta se bloquea tras 5 intentos fallidos; firmar exige reingresar la contraseÃ±a. |
| Organizations & Profiles | ContactInquiry, Organization, Profile | El RUC de la organizaciÃ³n es vÃ¡lido y Ãºnico. |
| Subscriptions & Payments | Plan, Subscription | La suscripciÃ³n se activa solo si Niubiz autoriza el cobro. |
| Manufacturing & Batch Management | Product, MasterFormula, RawMaterialLot, ProductionOrder, ProductionBatch | Un lote solo consume materia prima aprobada y solo Calidad puede liberarlo. |
| IoT Monitoring | Equipment, IoTDevice, TelemetryReading, Alert | Un equipo con calibraciÃ³n vencida no puede asignarse a un lote. |
| Quality & Compliance | QualityDocument, MaterialApproval, BatchReview, AnalyticalResult, Deviation, Audit, RegulatoryReport | Un lote con un resultado OOS sin desviaciÃ³n cerrada no puede liberarse. |

Frames en Miro por bounded context. Debajo de los frames finales, el tablero tiene la secciÃ³n "DLES paso a paso por bounded context", con una fila por contexto y un frame por paso (Pasos 1 a 6); el enlace lleva al Paso 1 de cada fila:

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

**Quality & Compliance** (swimlane 1: liberaciÃ³n de lotes; swimlane 2: desviaciones y auditorÃ­a)

![Quality & Compliance - paso 6](../assets/img/chapter4/design-level-event-storming/aggregates/qa-6-aggregates.jpg)

#### Paso 7: Bounded contexts

Los aggregates se agruparon en seis bounded contexts, siguiendo los swimlanes del Big Picture y el lenguaje que comparten sus eventos, con nombres en inglÃ©s alineados al Ubiquitous Language y al cÃ³digo. Respecto del Design-Level original del equipo se mantuvieron los seis contextos y se refinaron sus aggregates: "MÃ³dulo de Credenciales y SesiÃ³n" pasÃ³ a User (la sesiÃ³n se maneja con JWT y no se persiste), la matriz de roles pasÃ³ de Organizations a IAM, "Perfil Corporativo y Tenant" se dividiÃ³ en Organization y Profile, "Inventario y Materia Prima" se separÃ³ en Product, MasterFormula y RawMaterialLot, "Lote de ProducciÃ³n" en ProductionOrder y ProductionBatch, "Registro de Maquinaria y TelemetrÃ­a" en Equipment, IoTDevice, TelemetryReading y Alert, y "Expediente de Trazabilidad y AuditorÃ­a" en MaterialApproval, BatchReview, AnalyticalResult y Audit. AsÃ­ cada aggregate protege un conjunto pequeÃ±o de reglas y se corresponde con una clase raÃ­z y sus tablas.

El context map muestra cÃ³mo se integran los contextos. Las consultas entre contextos pasan por un Anti-Corruption Layer (fachada `ContextFacade` del contexto proveedor y servicio `Externalâ€¦Service` del consumidor); las decisiones de Quality hacia Manufacturing se comunican con domain events.

Frame en Miro: https://miro.com/app/board/uXjVHkhKOXE=/?moveToWidget=3458764685756367552

![Context map](../assets/img/chapter4/design-level-event-storming/context-map.jpg)

| Contexto consumidor | Contexto proveedor | IntegraciÃ³n | Motivo |
| --- | --- | --- | --- |
| Organizations & Profiles | IAM | ACL (`IamContextFacade`) | Crear la cuenta del administrador al registrar la organizaciÃ³n. |
| Quality & Compliance | IAM | ACL (`IamContextFacade`) | Registrar firmas electrÃ³nicas en aprobaciones y liberaciones. |
| Subscriptions & Payments | Organizations & Profiles | ACL (`OrganizationsContextFacade`) | Validar la organizaciÃ³n suscriptora. |
| IoT Monitoring | Subscriptions & Payments | ACL (`SubscriptionsContextFacade`) | Respetar el lÃ­mite de sensores del plan. |
| Manufacturing | Quality & Compliance | ACL (`QualityContextFacade`) | Solicitar la aprobaciÃ³n de insumos y la cuarentena del lote. |
| Manufacturing | Quality & Compliance | Domain events (`MaterialApprovalDecided`, `BatchReleaseDecided`) | Actualizar el estado del insumo y del lote con el dictamen de Calidad. |
| Manufacturing e IoT Monitoring | Entre sÃ­ | ACL (`IotMonitoringContextFacade`, `ManufacturingContextFacade`) | Asignar sensores al lote y verificar que el lote estÃ© en curso. |

### 4.6.2. Software Architecture Context Diagram

El diagrama de contexto (nivel 1 del modelo C4) muestra a DoofPlus como un Ãºnico sistema rodeado por sus usuarios y los sistemas externos identificados en el EventStorming. Los usuarios son el visitante de un laboratorio (Landing Page), el Especialista QA/QC y el Jefe de ProducciÃ³n (segmentos objetivo) y el Administrador del laboratorio. Los sistemas externos son ThingsBoard, que envÃ­a la telemetrÃ­a de los sensores; Niubiz, que autoriza los cobros de las suscripciones; SendGrid, que entrega correos; y el Lector RFID del almacÃ©n, con el que el Jefe de ProducciÃ³n lee la etiqueta del insumo recibido y que envÃ­a ese cÃ³digo a DoofPlus. La app autenticadora del usuario genera los cÃ³digos TOTP del segundo factor sin integraciÃ³n por API, por eso se muestra con lÃ­nea punteada. DIGEMID, identificada como sistema externo en el EventStorming, no forma parte del diagrama porque inspecciona al laboratorio sin intercambiar datos con DoofPlus: el modelo C4 solo incluye las personas y los sistemas conectados directamente con el sistema. Los diagramas C4 se elaboraron con Structurizr DSL (Diagram-as-Code) y se renderizaron con Structurizr, la herramienta de referencia del modelo C4; todas las vistas salen de un Ãºnico modelo (`assets/diagrams/structurizr/workspace.dsl`), y la disposiciÃ³n de los elementos de cada vista se guarda en `workspace.json`, ordenada en capas de arriba hacia abajo para que las relaciones no se crucen ni atraviesen otros elementos.

![Context Level Diagram](../assets/img/chapter4/software-architecture/c4/c4-01-context.png)

### 4.6.3. Software Architecture Container Diagrams

El diagrama de contenedores (nivel 2) muestra las unidades de despliegue de la soluciÃ³n y cÃ³mo se comunican:

| Container | TecnologÃ­a | Despliegue | Responsabilidad |
| --- | --- | --- | --- |
| Landing Page | HTML5, CSS3, JavaScript | GitHub Pages | Presentar la propuesta de valor, los planes y el equipo; enviar las consultas del formulario de contacto y llevar a cada usuario al inicio de sesiÃ³n de su entorno o al registro de la organizaciÃ³n. |
| Web Application | Vue, Vite , TypeScript, ngx-translate | Firebase Hosting | SPA responsive con un mÃ³dulo por bounded context; consume el RESTful API con un token JWT. |
| RESTful API | ASP.NET Core, C# 12, Entity Framework Core, ASP.NET Core Identity, Swashbuckle (Swagger) | Render | Monolito modular con los seis bounded contexts; expone endpoints REST documentados con OpenAPI (Swagger), recibe la telemetrÃ­a de ThingsBoard y publica notificaciones por WebSocket (STOMP). |
| Database | MySQL 8 | Railway | Persistencia relacional; las tablas se agrupan por bounded context. |

El Lector RFID se conecta al equipo del almacÃ©n y envÃ­a a la Web Application el cÃ³digo de la etiqueta como entrada de teclado (USB HID), por lo que no requiere integraciÃ³n con el RESTful API.

Se eligiÃ³ un monolito modular en lugar de microservicios porque el statement define un Ãºnico RESTful API y porque el equipo y el volumen de datos de laboratorios pequeÃ±os y medianos no justifican la complejidad operativa de varios servicios. La separaciÃ³n por bounded context dentro del cÃ³digo (paquetes independientes que solo se comunican mediante fachadas y eventos) permite extraer un contexto a un servicio propio en el futuro.

![Container Level Diagram](../assets/img/chapter4/software-architecture/c4/c4-02-container.png)

### 4.6.4. Software Architecture Components Diagrams

Los diagramas de componentes (nivel 3) descomponen la Web Application y el RESTful API. La Web Application sigue la estructura del proyecto en Vite: un mÃ³dulo por bounded context con las capas `domain`, `application`, `infrastructure` y `presentation`, mÃ¡s los elementos compartidos de `shared`. El mÃ³dulo `manufacturing` recibe el cÃ³digo leÃ­do por el Lector RFID en el registro de la recepciÃ³n de insumos.

![Component Diagram - Web Application](../assets/img/chapter4/software-architecture/c4/c4-03-webapp-components.png)

En el RESTful API cada bounded context es un paquete de Spring Boot con cuatro capas: `interfaces` (controladores REST y fachadas ACL), `application` (command services, query services, event handlers y servicios ACL de salida), `domain` (aggregates, entities, value objects, commands, queries y domain services) e `infrastructure` (repositorios Spring Data JPA e integraciones externas).

**Identity & Access Management.** `AuthenticationController` atiende sign-up, sign-in y la verificaciÃ³n 2FA; `BearerAuthorizationRequestFilter` valida el JWT en cada request; `UserCommandServiceImpl` da de alta usuarios, asigna roles y bloquea cuentas; `SignatureCommandServiceImpl` registra firmas electrÃ³nicas. `IamContextFacade` expone estas capacidades a los demÃ¡s contextos.

![Component Diagram - IAM](../assets/img/chapter4/software-architecture/c4/c4-04-api-iam-components.png)

**Organizations & Profiles.** Registra organizaciones, plantas, perfiles y las consultas del formulario de contacto de la Landing Page; al registrar una organizaciÃ³n pide a IAM crear su administrador mediante `ExternalIamService`.

![Component Diagram - Organizations](../assets/img/chapter4/software-architecture/c4/c4-05-api-organizations-components.png)

**Subscriptions & Payments.** Gestiona planes y suscripciones; `NiubizPaymentGateway` autoriza los cobros y `SubscriptionRenewalScheduler` renueva las suscripciones vencidas.

![Component Diagram - Subscriptions](../assets/img/chapter4/software-architecture/c4/c4-06-api-subscriptions-components.png)

**Manufacturing & Batch Management.** Gestiona productos, fÃ³rmulas, insumos, Ã³rdenes y lotes; solicita a Quality la aprobaciÃ³n de insumos y la cuarentena del lote, y actualiza sus aggregates cuando recibe los eventos `MaterialApprovalDecided` y `BatchReleaseDecided`.

![Component Diagram - Manufacturing](../assets/img/chapter4/software-architecture/c4/c4-07-api-manufacturing-components.png)

**IoT Monitoring.** `TelemetryWebhookController` recibe las lecturas de ThingsBoard, `AlertRuleEvaluator` compara cada lectura con los rangos permitidos y `NotificationService` publica las alertas por WebSocket y por correo.

![Component Diagram - IoT Monitoring](../assets/img/chapter4/software-architecture/c4/c4-08-api-iot-components.png)

**Quality & Compliance.** Gestiona documentos, dictamen de insumos, revisiÃ³n y liberaciÃ³n de lotes, resultados analÃ­ticos, desviaciones, CAPA y auditorÃ­as. `AuditTrailEntityListener` registra cada cambio de las entidades de todos los contextos y `ReportGenerationServiceImpl` genera expedientes y reportes en PDF con OpenPDF.

![Component Diagram - Quality & Compliance](../assets/img/chapter4/software-architecture/c4/c4-09-api-quality-components.png)

## 4.7. Software Object-Oriented Design

El diseÃ±o orientado a objetos traduce los aggregates del Design-Level EventStorming a clases C# de la RESTful API. Se aplicaron estas convenciones:

- Cada aggregate root extiende `AuditableAbstractAggregateRoot`, que aporta el identificador `Long id` y las fechas `createdAt` y `updatedAt` (en los diagramas, `id` se muestra en cada aggregate y la clase base solo en IAM).
- Las entities internas de un aggregate se acceden solo a travÃ©s de su raÃ­z; los value objects (por ejemplo, `BatchNumber`, `Quantity`, `Money`, `Ruc`) se implementan como records inmutables de C#.
- Los nombres siguen la convenciones de C#: clases en PascalCase, atributos y mÃ©todos en camelCase y constantes de enumeraciones en UPPER_SNAKE_CASE. Las propiedades se definen con getters automáticos de C# y no se muestran.
- Los cambios de estado se solicitan con commands (`CreateBatchCommand`, `CloseDeviationCommand`, etc.) atendidos por command services; las consultas usan query services. Los repositorios son interfaces de Spring Data JPA.
- Las relaciones entre contextos se modelan por identificador (`batchId`, `userId`) y no por referencia directa, respetando los lÃ­mites de cada bounded context.

### 4.7.1. Class Diagrams

**Identity & Access Management.** `User` es el aggregate root de la identidad: controla su estado (`INVITED`, `ACTIVE`, `LOCKED`, `DISABLED`), sus roles y los intentos fallidos de inicio de sesiÃ³n. `ElectronicSignature` registra quiÃ©n firmÃ³ quÃ© registro y con quÃ© significado. Los servicios de tokens (JWT), hashing (BCrypt) y TOTP se definen como interfaces implementadas en la capa de infraestructura.

![Class Diagram - IAM](../assets/img/chapter4/diagram-class/class-01-iam.png)

**Organizations & Profiles.** `Organization` agrupa sus plantas y se identifica por el value object `Ruc`; `Profile` guarda los datos y preferencias de cada usuario; `ContactInquiry` registra las consultas enviadas desde el formulario de contacto de la Landing Page y, mediante una policy, avisa al equipo de DoofPlus.

![Class Diagram - Organizations & Profiles](../assets/img/chapter4/diagram-class/class-02-organizations.png)

**Subscriptions & Payments.** `Subscription` controla el ciclo de vida de la suscripciÃ³n y sus pagos; `Plan` define precios y lÃ­mites. `PaymentGateway` abstrae la pasarela y `NiubizPaymentGateway` la implementa.

![Class Diagram - Subscriptions & Payments](../assets/img/chapter4/diagram-class/class-03-subscriptions.png)

**Manufacturing & Batch Management.** `ProductionBatch` es el aggregate central del dominio: concentra el ciclo de vida del lote (`PLANNED` a `RELEASED` o `REJECTED`), sus consumos de insumos, parÃ¡metros de proceso, incidencias y su lÃ­nea de tiempo (`BatchEvent`). `ProductionOrder`, `MasterFormula`, `Product` y `RawMaterialLot` completan el contexto.

![Class Diagram - Manufacturing & Batch Management](../assets/img/chapter4/diagram-class/class-04-manufacturing.png)

**IoT Monitoring.** `Equipment` mantiene su historial de calibraciones y mantenimientos y define si estÃ¡ apto para producciÃ³n; `IoTDevice` representa un sensor de ThingsBoard asignable a un lote; `TelemetryReading` guarda cada lectura y `AlertRuleEvaluator` genera las alertas.

![Class Diagram - IoT Monitoring](../assets/img/chapter4/diagram-class/class-05-iot.png)

**Quality & Compliance.** `QualityDocument` gestiona versiones y aprobaciÃ³n de SOP y protocolos; `MaterialApproval` registra el dictamen de cada lote de insumo; `BatchReview` controla la cuarentena, evaluaciÃ³n y liberaciÃ³n del lote y emite el `ReleaseCertificate`; `AnalyticalResult` calcula el resultado y detecta los OOS. `Deviation` controla la clasificaciÃ³n, investigaciÃ³n, causa raÃ­z y acciones CAPA hasta su cierre; `Audit` registra hallazgos y observaciones; `AuditTrailEntry`, de solo inserciÃ³n, persiste el read model "Audit trail" del Design-Level EventStorming; `RegulatoryReport` guarda los reportes generados.

![Class Diagram - Quality & Compliance](../assets/img/chapter4/diagram-class/class-06-quality.png)

## 4.8. Database Design

La base de datos de DoofPlus se implementa en MySQL 8 y se genera a partir de las entidades JPA del RESTful API. Sus principales caracterÃ­sticas son:

- **OrganizaciÃ³n por bounded context:** cada contexto tiene su propio conjunto de tablas, que corresponde a sus aggregates. Dentro de un contexto se usan llaves forÃ¡neas; entre contextos las referencias son lÃ³gicas (solo el identificador) y se marcan como "ref <contexto>.<tabla>" en los diagramas.
- **Convenciones:** nombres en inglÃ©s, en snake_case y en plural, aplicados con la estrategia `SnakeCaseWithPluralizedTablePhysicalNamingStrategy`; llaves primarias `bigint AUTO_INCREMENT`; restricciones `NOT NULL`, `UNIQUE` y estados como enumeraciones en texto.
- **AuditorÃ­a e integridad:** todas las tablas incluyen `created_at` y `updated_at` (omitidos en los diagramas); `audit_trail_entries` es de solo inserciÃ³n y `electronic_signatures` conserva las firmas de cada registro, en lÃ­nea con los principios ALCOA y 21 CFR Part 11.

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

**Quality & Compliance (documentos, insumos, resultados, liberaciÃ³n, desviaciones, CAPA, auditorÃ­as y reportes)**

![Database Diagram - Quality & Compliance](../assets/img/chapter4/database/db-06-quality.png)

La fuente Structurizr DSL de los diagramas C4 se encuentra en `assets/diagrams/structurizr/workspace.dsl`, y las fuentes Mermaid de los diagramas de clases y de base de datos, en `assets/diagrams/mermaid`.


