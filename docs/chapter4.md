# CapÃ­tulo IV: Product Design

En este capÃ­tulo se detallan las decisiones de diseÃ±o del producto para su plataforma DoofPlus, junto con la Landing Page. Se establecen guÃ­as de estilo visuales, arquitectura de la informaciÃ³n (AI) y criterios que aseguran que la experiencia de usuario (UX) sea intuitiva y profesional, donde alineamos a las exigencias en las mÃ¡quinas de la industria farmacÃ©utica y entidades regulatorias para la calidad de los fÃ¡rmacos como la DIGEMID.

## 4.1. Style Guidelines

En esta secciÃ³n se establecen las bases visuales y de comunicaciÃ³n para DoofPlus, centralizando los recursos que serÃ¡n de uso comÃºn para todo el equipo de desarrollo y diseÃ±o. El objetivo es garantizar una presentaciÃ³n consistente, inclusiva y enfocada a travÃ©s de todos los puntos de contacto del producto, facilitando la mantenibilidad y escalabilidad del cÃ³digo y del diseÃ±o a lo largo del ciclo de vida del proyecto.

### 4.1.1. General Style Guidelines

Para asegurar una interfaz coherente y alineada a los estÃ¡ndares que exige la industria farmacÃ©utica, el sistema de diseÃ±o de DoofPlus toma como base fundamental **Material Design**. Esta decisiÃ³n permite una integraciÃ³n nativa con la biblioteca de componentes Angular Material, que serÃ¡ utilizada en la implementaciÃ³n del frontend.

#### Branding:

El logotico escogido para DoofPlus comunica de forma directa y sintÃ©tica la propuesta de valor del sistema: la integraciÃ³n de la automatizaciÃ³n industrial con la rigurosidad del control farmacÃ©utico. Para la secciÃ³n de Branding, el anÃ¡lisis de los componentes de dicho logotipo se desglosa de la siguiente manera:

![DoofPlus Logo](../assets/img/chapter4/doofplus-logo.png)

- Maquinaria y Cinta Transportadora: La silueta industrial con cÃ¡psulas en la cinta representa el nÃºcleo operativo de la plataforma, lo que simboliza la manufactura y conexiÃ³n de IoT en la lÃ­nea de producciÃ³n.
- Escudo de VerificaciÃ³n: Representa el Aseguramiento de Calidad de los productos. Transmite bioseguridad, protecciÃ³n de los datos y el cumplimiento regulatorio estricto que se exige por DIGEMID y las BPM.
- ConstrucciÃ³n TipogrÃ¡fica y CromÃ¡tica: El nombre "DoofPLus" divide sus conceptos visualmente utilizando una fuente sans-serif sÃ³lida. El prefijo "Doof" en azul marino corporativo evoca la base tecnolÃ³gica y la seriedad farmacÃ©utica, mientras que el sufijo "PLus" en verde esmeralda conecta con la salud y la validaciÃ³n de procesos.

#### Typography
La tipografÃ­a empleada en DoofPlus serÃ¡ una fuente inter moderna, limpia y altamente versÃ¡til, la cual cuenta con una extensa familia de pesos que incluye: Thin, Extra Light, Light, Regular, Medium, Semi Bold, Bold, Extra Bold y Black. Esta amplia disponibilidad de grosores, junto con sus respectivas versiones en cursiva (italic) para cada peso, permite estructurar una jerarquÃ­a visual extremadamente precisa. Su diseÃ±o geomÃ©trico garantiza una legibilidad excepcional para datos numÃ©ricos crÃ­ticos, tablas de lotes y grÃ¡ficos de telemetrÃ­a, tanto en pantallas industriales como en dispositivos mÃ³viles.   

![Typography](../assets/img/chapter4/typography-guide.jpg)

La jerarquÃ­a tipogrÃ¡fica se establece de la siguiente manera para garantizar claridad y ritmo visual:
- TÃ­tulos principales (H1 / Section heading): 3rem (aprox. 48px) en escritorio, utilizando pesos pesados como Extra Bold o Black para mÃ¡ximo impacto y jerarquÃ­a.
- SubtÃ­tulos (H2 / Sub-headings): 2rem (aprox. 32px) en peso Bold o Semi Bold.
- TÃ­tulos de componentes y tarjetas (H3 / H4): 1.25rem (20px) a 1.5rem (24px) en peso Medium.
- Cuerpo del texto y Tablas de Datos (p / td): 1rem (16px) en peso Regular, con un interlineado de 1.5. Para datos complementarios o notas secundarias se podrÃ¡n aplicar pesos mÃ¡s ligeros como Light o Extra Light.
- Botones y etiquetas de estado (span): 0.875rem (14px) en peso Medium o Semi Bold para resaltar la acciÃ³n.

#### Colors
La paleta de colores de DoofPlus estÃ¡ diseÃ±ada para evocar pulcritud clÃ­nica, seguridad tecnolÃ³gica y control absoluto sobre los procesos. Se distribuye en tres categorÃ­as:

**Paleta principal**: Colores que definen la identidad de QualiTrack y se usan en elementos clave.
* **Primario (Verde Marino):** var(--primary-color | #0D9488) (referencia principal).
* **Secundario (Azul Pizarra Oscuro):** var(--secondary-color | #0F172A) (para texto principal y elementos interactivos).
* **Terciario (Gris Pizarra):** var(--tertiary-color | #64748B) (para texto secundario y detalles).
* **Fondo Claro:** var(--bg-light) (fondos de listas, dashboard y secciones).
* **Fondo Blanco:** var(--white) (fondos de tarjetas y elementos principales).

**Paleta de Soporte**: Colores complementarios que aÃ±aden profundidad y contraste.
* **Gris Neutro:** Para bordes sutiles, lÃ­neas divisorias y fondos de alternancia.

**Colores Funcionales**: Reservados para comunicar estados especÃ­ficos al usuario.
* **Ã‰xito:** Verde (#4CAF50) para confirmaciones y acciones exitosas.
* **Error:** Rojo (#F44336) para alertas y mensajes de error.
* **Advertencia:** Amarillo (#FFC107) para notificaciones y avisos importantes.
  ![paleta-colores](../assets/img/chapter4/color-palette.png)

#### Spacing
El espaciado en DoofPlus se rige por el sistema de cuadrÃ­cula de 8 puntos de Material Design. Esto asegura un ritmo vertical constante y facilita la lectura rÃ¡pida de los reportes tÃ©cnicos sin abrumar al usuario.
- Margen Interno (Padding) de Secciones: Las Ã¡reas de trabajo principales y dashboards utilizan un padding aproximado de 40px a 48px para separar claramente los bloques de informaciÃ³n.

- Espacio entre Elementos: La separaciÃ³n entre tarjetas de mÃ©tricas o controles de filtros varÃ­a entre 16px y 24px, manteniendo cohesiÃ³n lÃ³gica.

- Line Height: El interlineado base es de 1.5 para pÃ¡rrafos, reduciÃ©ndose a 1.2 en las celdas de las tablas de datos para maximizar la cantidad de registros visibles sin perder claridad.

#### Tono de ComunicaciÃ³n
La voz y el tono de DoofPlus estÃ¡n diseÃ±ados para reflejar la misma fiabilidad e inmutabilidad que su arquitectura de software, conectando directamente con Supervisores de ProducciÃ³n, Especialistas QA/QC y auditores externos.

- Tono: Formal, corporativo y analÃ­tico. Proyecta dominio absoluto sobre las normativas de calidad (BPM, Data Integrity), manteniendo el rigor que exige la industria farmacÃ©utica.

- Actitud: Resolutiva y proactiva. La comunicaciÃ³n se enfoca en la eficiencia operativa ("Trazabilidad automatizada", "Monitoreo en tiempo real") y en la alerta temprana de desviaciones.

- Lenguaje: TÃ©cnico y preciso. Se utiliza terminologÃ­a propia del dominio farmacÃ©utico y tecnolÃ³gico (telemetrÃ­a, IoT, Cuarentena, FÃ³rmulas Maestras, Audit Trail, DIGEMID) asumiendo que el usuario es un profesional capacitado en estas Ã¡reas.

- Voz: Experta e inquebrantable. Posiciona a DoofPlus como el puente definitivo entre la maquinaria industrial y el cumplimiento normativo, siendo una fuente de verdad Ãºnica y segura para las auditorÃ­as.

### 4.1.2. Web Style Guidelines

Las directrices de estilo web de DoofPlus explican e ilustran las decisiones sobre los estÃ¡ndares visuales y de interacciÃ³n para las interfaces web responsivas de la plataforma. Nuestro objetivo es crear una experiencia visual que refleje la misiÃ³n del sistema: digitalizar el control de calidad farmacÃ©utico y la telemetrÃ­a industrial mediante un diseÃ±o limpio, riguroso y altamente funcional, minimizando la carga cognitiva en la planta de producciÃ³n.

1. Layout
- Sistema de Grid: Utilizamos un diseÃ±o de cuadrÃ­cula fluida de 12 columnas para garantizar que el contenido de DoofPlus se adapte perfectamente a cualquier resoluciÃ³n de pantalla. Este enfoque permite que los dashboards de telemetrÃ­a, las tablas de trazabilidad de lotes y los planes de suscripciÃ³n se ajusten dinÃ¡micamente, manteniendo la jerarquÃ­a visual requerida en un entorno industrial.
- Headers y Footers (encabezados y pies de pÃ¡gina): El encabezado es fijo en la parte superior, proporcionando acceso constante a la navegaciÃ³n principal, alertas de desviaciones crÃ­ticas y a las acciones de sesiÃ³n. El pie de pÃ¡gina centraliza los enlaces normativos, polÃ­ticas de privacidad, tÃ©rminos de servicio, copyright y contacto de soporte.
- Cards y Data Tables: Las tarjetas (Cards) estructuran la informaciÃ³n de los mÃ³dulos del sistema (IoT, Compliance, AuditorÃ­as) en la Landing Page. Para la aplicaciÃ³n web, el componente central son las Tablas de Datos (Data Tables), diseÃ±adas con bordes sutiles y alternancia de color (Zebra striping) para facilitar la lectura de expedientes de lotes y registros inmutables (Audit Trail) sin fatiga visual.
2. Responsive Design
- Desktop: Orientado al Jefe de ProducciÃ³n y al Administrador. La navegaciÃ³n principal es visible en una barra lateral o superior. El contenido aprovecha mÃºltiples columnas para desplegar grÃ¡ficos unificados de rendimiento y tablas complejas de fÃ³rmulas maestras en monitores de estaciones de trabajo.
- Tablet: Orientado al Especialista QA/QC en la lÃ­nea de producciÃ³n. La cuadrÃ­cula se adapta a un diseÃ±o compacto. Los botones, selectores de estado y campos tÃ¡ctiles se ajustan a un Ã¡rea mÃ­nima de 48x48 pÃ­xeles para facilitar la interacciÃ³n de operarios que utilicen guantes de nitrilo o equipos de protecciÃ³n.
- Mobile: Optimizado para la lectura rÃ¡pida y atenciÃ³n de emergencias. El diseÃ±o colapsa a una sola columna y la navegaciÃ³n se agrupa en un menÃº hamburguesa. Los elementos interactivos priorizan la visualizaciÃ³n de notificaciones de urgencia.
3. Interaction Design
- Botones: Los botones de llamado a la acciÃ³n (CTA) utilizan un azul marino para generar contraste. Los estados de interacciÃ³n (Hover, Focus, Active, Disabled) existen para asegurar la accesibilidad. Las acciones destructivas o de rechazo de lotes utilizan un color rojo semÃ¡ntico para prevenir accidentes.
- Formularios y Validaciones: Los formularios de captura de datos integran validaciÃ³n en tiempo real. Utilizan contornos verdes para datos correctos y mensajes de error descriptivos en rojo debajo de los campos obligatorios incompletos, lo que garantiza una integridad de los datos antes del envÃ­o a la base de datos.
4. Images and Icons
- ImÃ¡genes: En la Landing Page se utilizan fotografÃ­as de alta calidad, optimizadas en formato WebP, que evocan el entorno de manufactura: lÃ­neas de producciÃ³n automatizadas, laboratorios esterilizados y operarios utilizando tablets. Refuerzan el mensaje de tecnologÃ­a aplicada al cumplimiento BPM.
- Ãconos: Se emplea la biblioteca Material Symbols para un estilo lineal y minimalista. Estos Ã­conos ofrecen una guÃ­a visual rÃ¡pida para representar servicios crÃ­ticos: un microchip o antena para la telemetrÃ­a, un escudo con un sÃ­mbolo de check para el cumplimiento regulatorio y cÃ¡psulas o maquinaria para la gestiÃ³n de producciÃ³n.
5. Repositorio Central
- OrganizaciÃ³n: El proyecto frontend en Angular sigue una estructura de directorios modular. Los activos visuales estÃ¡ticos se almacenan centralizados en `src/assets/images` y `src/assets/icons`, los estilos globales y variables SCSS en `src/styles`, y los componentes reutilizables en `src/app/shared/components`.
- Versionado: Se utiliza Git gestionado desde GitHub como sistema de control de versiones central. El equipo aplica GitFlow y Conventional Commits para gestionar los cambios en el cÃ³digo, lo que ayuda a garantizar que el entorno de desarrollo mantenga una integraciÃ³n continua y una versiÃ³n estable del producto en todo momento. AdemÃ¡s, se aplica Semantic Versioning para darle un orden a las versiones.


## 4.2. Information Architecture
La arquitectura de la informaciÃ³n de DoofPlus establece las decisiones que dirigen la organizaciÃ³n del contenido en las experiencias web, lo que estÃ¡ orientado a que tanto los visitantes del sector comercial como los usuarios operativos, que forman parte de los segmentos objetivos, se adapten con facilidad a la funcionalidad del producto y puedan encontrar lo que necesitan sin esfuerzo.

### 4.2.1. Organization Systems
Para estructurar los grupos de informaciÃ³n de la plataforma de manera lÃ³gica, se aplican los siguientes sistemas de organizaciÃ³n visual y de categorizaciÃ³n:
- OrganizaciÃ³n Visual JerÃ¡rquica (Visual Hierarchy): Se aplica en la Landing Page estructurando el contenido de mayor a menor impacto, inicia con la Propuesta de Valor (Hero), luego a las CaracterÃ­sticas (Features) y culmina en los Planes de SuscripciÃ³n y Contacto.
- OrganizaciÃ³n Visual Secuencial (Step-by-step to accomplish): Se utiliza en la Web Application para los flujos operativos estrictos, como la liberaciÃ³n de un lote farmacÃ©utico, donde el usuario debe validar parÃ¡metros de telemetrÃ­a IoT antes de firmar electrÃ³nicamente la aprobaciÃ³n.
- OrganizaciÃ³n Visual Matricial: Aplicada en los dashboards para cruzar variables crÃ­ticas de maquinaria frente a los Ã­ndices de calidad y cumplimiento normativo en tiempo real.
- CategorizaciÃ³n CronolÃ³gica: Fundamental para el mÃ³dulo de Audit Trail y el registro de telemetrÃ­a IoT, ordenando los eventos y lecturas de sensores por fecha y hora exacta para garantizar la trazabilidad requerida por DIGEMID.
- CategorizaciÃ³n segÃºn Audiencia: Utilizada para segmentar los planes de suscripciÃ³n en la Landing Page, y para estructurar los accesos en la Web App segÃºn los grupos de usuarios.

### 4.2.2. Labeling Systems
Para asegurar la simplicidad y evitar la confusiÃ³n de los visitantes y usuarios, la representaciÃ³n de los datos se realiza mediante etiquetas que utilizan el mÃ­nimo nÃºmero de palabras posibles, lo que representa la terminologÃ­a tÃ©cnica de la industria farmacÃ©utica:
- Landing Page: Se emplean asociaciones de uso estÃ¡ndar como "Features" (para mÃ³dulos tÃ©cnicos), "Pricing" (para los planes) y "Request Demo" (para el contacto comercial).
- Web Application: Las etiquetas operativas evitan ambigÃ¼edades. Se utiliza "Lotes" (agrupando el historial de fabricaciÃ³n), "Cuarentena" (asociado a la evaluaciÃ³n de calidad), "Desviaciones" (asociado a alertas IoT y errores) y "Audit Trail" (asociado al registro inmutable de auditorÃ­a).

### 4.2.3. SEO Tags and Meta Tags
Para el posicionamiento y la indexaciÃ³n correcta de las principales pÃ¡ginas de la experiencia web, se asignan los siguientes valores mÃ­nimos exigidos:

| Meta Tag | Valor Asignado para DoofPlus                                                                                                                                 |
| :--- |:-------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Title** | DoofPlus \| Plataforma IoT y Control de Calidad FarmacÃ©utica                                                                                                 |
| **Description** | Sistema SaaS para la manufactura 4.0 farmacÃ©utica. Automatiza el control de calidad, integra telemetrÃ­a IoT y asegura el cumplimiento BPM y DIGEMID.         |
| **Keywords** | manufactura farmacÃ©utica, telemetrÃ­a IoT, trazabilidad de lotes, BPM, DIGEMID, software industrial, audit trail.                                             |
| **Author** | Equipo de Desarrollo DoofPlus                                                                                                                                |

### 4.2.4. Searching Systems
Para evitar que los usuarios se sientan perdidos ante el alto volumen de informaciÃ³n generada por la producciÃ³n y la telemetrÃ­a, se brindan los siguientes medios de ayuda dentro del producto digital:
- BÃºsqueda Global y EspecÃ­fica: La App Web ofrece una barra de bÃºsqueda en el encabezado centrada en la consulta rÃ¡pida por identificadores exactos (ID de Lote, CÃ³digo de Protocolo de Calidad o ID de Dispositivo IoT).
- Filtros y Facetas: El usuario contarÃ¡ con filtros combinados para refinar las listas de datos. PodrÃ¡ filtrar expedientes por "Estado" (En Proceso, Cuarentena, Aprobado, Rechazado), por "Rango de Fechas de Manufactura", o aislar eventos por la "Severidad" de las desviaciones (CrÃ­tica, Advertencia).
- VisualizaciÃ³n de Resultados: DespuÃ©s de la bÃºsqueda, los datos lucirÃ¡n en formato de tabla de datos (Data Table), resaltando visualmente la coincidencia del tÃ©rmino ingresado y mostrando el estado actual del lote para permitir una toma de decisiÃ³n inmediata.

### 4.2.5. Navigation Systems
Las acciones y tÃ©cnicas para guiar a los usuarios a travÃ©s del ecosistema y permitirles interactuar de forma satisfactoria se definen de la siguiente manera:
- NavegaciÃ³n Continua y de Anclaje (Landing Page): Los visitantes recorrerÃ¡n el contenido mediante desplazamiento vertical (Scroll). El sistema de navegaciÃ³n se apoya en una barra superior fija (Sticky Top Navigation) con enlaces ancla que dirigen suavemente a las secciones clave, manteniendo siempre visible el botÃ³n de acciÃ³n principal.
- NavegaciÃ³n Global y Contextual (Web Application): Los usuarios operativos utilizarÃ¡n una barra lateral izquierda (Sidebar Drawer) como sistema principal para conmutar entre los mÃ³dulos core (Dashboard, FÃ³rmulas Maestras, Lotes, IoT). Adicionalmente, se emplearÃ¡n "Migas de Pan" (Breadcrumbs) en la parte superior del Ã¡rea de trabajo para mostrar la ubicaciÃ³n exacta dentro de un expediente profundo, lo que permite retornar a vistas generales sin esfuerzo.

## 4.3. Landing Page UI Design

### 4.3.1. Landing Page Wireframe

El wireframe de nuestra pÃ¡gina de inicio sirve como un mapa visual que define la estructura y el flujo de la informaciÃ³n, alineado con los principios de rigurosidad y claridad que exige el sector farmacÃ©utico. Este esquema asegura una disposiciÃ³n lÃ³gica de los componentes, facilitando la navegaciÃ³n y destacando la propuesta de valor de **DoofPlus.** Las secciones del wireframe estÃ¡n diseÃ±adas para contar una historia completa y persuasiva:

**Nav y Hero:**

Esta secciÃ³n inicial incluye el logotipo de DoofPlus junto con una presentaciÃ³n breve que introduce al visitante en la propuesta de valor de la plataforma: 'The Future of Pharmaceutical Quality Management' (El futuro de la gestiÃ³n de calidad farmacÃ©utica). La barra de navegaciÃ³n permite un acceso rÃ¡pido a secciones clave como Features, Benefits y About Us, mientras que el Ã¡rea principal ofrece una visiÃ³n concisa del producto, acompaÃ±ada de un claro llamado a la acciÃ³n: 'Request a Demo' (Solicitar Demo). Un elemento visual atractivo refuerza el mensaje de innovaciÃ³n tecnolÃ³gica, precisiÃ³n y cumplimiento regulatorio que distingue a DoofPlus.

![Hero Section Wireframe](../assets/img/chapter4/landing-page/wireframes/hero-section-landing-wireframe.png)

**Services (What We Offer):**

AquÃ­ se detallan los servicios principales de DoofPlus: Real-Time IoT Monitoring, Automated BPM Compliance, Immutable Traceability y Digital Batch Management. Cada servicio se presenta con un icono representativo y una breve descripciÃ³n, haciendo que nuestra oferta sea fÃ¡cil de entender y visualmente accesible.

![What We Offer Wireframe](../assets/img/chapter4/landing-page/wireframes/whatweoffer-section-landing-wireframe.png)

**Acerca de la aplicaciÃ³n (About the Platform):**

Esta secciÃ³n presenta lo que hace Ãºnica a DoofPlus: una plataforma para laboratorios farmacÃ©uticos que automatiza el control de calidad mediante integraciÃ³n IoT, elimina errores manuales y garantiza la trazabilidad inmutable. Destacamos beneficios clave como captura automÃ¡tica de telemetrÃ­a, alertas en tiempo real y cumplimiento nativo con normativas DIGEMID.

![Benefits Wireframe](../assets/img/chapter4/landing-page/wireframes/benefits-section-landing-wireframe.png)

**Sobre el Equipo (Our Team):**

En esta secciÃ³n, se humaniza la marca al presentar al equipo detrÃ¡s de DoofPlus (Inges Company). Con fotos y descripciones de los miembros, mostramos a las personas dedicadas a este proyecto, construyendo confianza y una conexiÃ³n personal con los visitantes.

![Our Team Wireframe](../assets/img/chapter4/landing-page/wireframes/ourteam-section-landing-wireframe.png)

**Precios (Plans):**

La secciÃ³n de Precios ofrece una visiÃ³n clara de los planes disponibles. Presentamos el Standard Lab Plan y el Enterprise Plan, con una comparativa de caracterÃ­sticas para ayudar a los usuarios a elegir la opciÃ³n que mejor se adapte a sus necesidades, ya sea para un laboratorio mediano o para una instituciÃ³n de salud pÃºblica. Un selector entre tarifas mensuales y anuales, junto con la indicaciÃ³n del ahorro asociado, facilita una elecciÃ³n mÃ¡s informada.

![Plans Wireframe](../assets/img/chapter4/landing-page/wireframes/plans-section-landing-wireframe.png)

**Footer:**

El pie de pÃ¡gina es un elemento crucial para la usabilidad. Contiene enlaces a informaciÃ³n de contacto (correo electrÃ³nico, telÃ©fono y ubicaciÃ³n). Esto proporciona un acceso rÃ¡pido a la informaciÃ³n sin saturar la interfaz, ofreciendo un cierre limpio y funcional a la pÃ¡gina.

![Footer Wireframe](../assets/img/chapter4/landing-page/wireframes/footer-section-landing-wireframe.png)

Este wireframe sienta las bases para un diseÃ±o visual que no solo se ve bien, sino que tambiÃ©n guÃ­a al usuario de manera intuitiva a travÃ©s de nuestra propuesta de valor, reforzando la confianza y la conexiÃ³n que DoofPlus promete.

### 4.3.2. Landing Page Mock-up

Esta secciÃ³n presenta y explica los Mock-ups del Landing Page, tanto en su versiÃ³n para Desktop Web Browser como Mobile Web Browser. En la propuesta y la explicaciÃ³n se evidencia la aplicaciÃ³n de los principios, elementos de diseÃ±o, diseÃ±o inclusivo y arquitectura de informaciÃ³n, asÃ­ como el Design System establecido para los productos digitales.

**Hero de la aplicaciÃ³n**

El hero de nuestra plataforma **DoofPlus** presenta un fondo moderno e institucional que evoca precisiÃ³n tecnolÃ³gica y cumplimiento normativo, con un tÃ­tulo claro: 'The Future of Pharmaceutical Quality Management'. Una breve descripciÃ³n capta nuestra esencia para el control de calidad, y un botÃ³n de llamado a la acciÃ³n sÃ³lido y centrado ('Request a Demo') invita a los usuarios a dar el primer paso hacia la digitalizaciÃ³n de sus procesos. Una barra de navegaciÃ³n en la parte superior con el logotipo de DoofPlus permite acceder de forma fluida a todas las secciones de la pÃ¡gina, proporcionando una experiencia de usuario intuitiva.

![Hero Section Mockup](../assets/img/chapter4/landing-page/mockups/hero-section-landing-mockup.png)

**What We Offer**

En la secciÃ³n 'What we offer', presentamos nuestras principales Ã¡reas de servicio a travÃ©s de tarjetas limpias. Cada tarjeta cuenta con un tÃ­tulo y una descripciÃ³n enfocada, como 'Real-Time IoT Monitoring', 'Automated BPM Compliance', 'Immutable Traceability' y 'Digital Batch Management'. Esto permite a los usuarios entender rÃ¡pidamente el alcance de nuestra plataforma para resolver los problemas de documentaciÃ³n de calidad farmacÃ©utica.

![What We Offer Mockup](../assets/img/chapter4/landing-page/mockups/whatweoffer-section-landing-mockup.png)

**Features**

La secciÃ³n de "Features" muestra las funcionalidades clave de DoofPlus. El diseÃ±o tipo acordeÃ³n interactivo permite a los usuarios expandir cada caracterÃ­stica (como la integraciÃ³n de sensores IoT o alertas instantÃ¡neas por desviaciÃ³n) para leer su descripciÃ³n completa, mientras que el recuadro visual de la izquierda balancea el contenido. Este formato combina informaciÃ³n tÃ©cnica detallada con un diseÃ±o dinÃ¡mico.

![Features Mockup](../assets/img/chapter4/landing-page/mockups/features-section-landing-mockup.png)

**Benefits**

En 'Benefits', destacamos las ventajas tangibles de utilizar DoofPlus. A travÃ©s de un diseÃ±o de tarjetas (cards) sobre fondo claro con Ã­conos representativos, comunicamos de manera directa cÃ³mo nuestra plataforma reduce el tiempo de preparaciÃ³n para auditorÃ­as en un 80%, elimina el error humano en los registros y proporciona una infraestructura SaaS escalable.

![Benefits Mockup](../assets/img/chapter4/landing-page/mockups/benefits-section-landing-mockup.png)

**About Us**

La secciÃ³n 'About Us' presenta a **Inges Company**, la startup detrÃ¡s de DoofPlus. AquÃ­ compartimos nuestra visiÃ³n de transformar digitalmente procesos especializados, detallando cÃ³mo nuestra soluciÃ³n permite centralizar informaciÃ³n para el ciclo de vida farmacÃ©utico y asegurar las BPM. El diseÃ±o separa claramente la misiÃ³n de la empresa de una lista puntual con los pilares del servicio (IoT, Trazabilidad, Cumplimiento).

![About Us Mockup](../assets/img/chapter4/landing-page/mockups/aboutus-section-landing-mockup.png)

**Our Team**

La secciÃ³n "Our Team" presenta a los ingenieros de software detrÃ¡s de Inges Company: Marcelo Angulo, Yhoshua Cobades, Ricardo Flores, Nestor Rojas y Rodolfo Zavaleta. Las tarjetas de perfil muestran una foto, el nombre, el rol de Software Engineer y una biografÃ­a detallada para cada miembro. El diseÃ±o de tarjetas alineadas en cuadrÃ­cula brinda un aspecto organizado, humanizando el desarrollo del software.

![Our Team Mockup](../assets/img/chapter4/landing-page/mockups/ourteam-section-landing-mockup.png)

**Plans**

En la secciÃ³n de "Plans", ofrecemos los detalles de nuestros planes de suscripciÃ³n. Las tarjetas de "Standard Lab" y "Enterprise" incluyen descripciones precisas para los segmentos objetivos, precios mensuales/anuales, y listas completas de caracterÃ­sticas. El Plan Enterprise destaca visualmente con el color Verde Marino principal como fondo sÃ³lido para distinguirlo, y se incorpora un toggle para facilitar la vista de precios anuales.

![Plans Mockup](../assets/img/chapter4/landing-page/mockups/plans-section-landing-mockup.png)

**Footer**

El "Footer" de nuestra landing page actÃºa como cierre funcional de la navegaciÃ³n. Contiene el logotipo en su versiÃ³n blanca y el nombre de DoofPlus, enlaces de contacto y acceso a recursos. Finalmente, se observa la declaraciÃ³n oficial "Copyright Â© 2026 Inges Company", asegurando la propiedad del producto en una interfaz ordenada con los colores oscuros corporativos.

![Footer Mockup](../assets/img/chapter4/landing-page/mockups/footer-section-landing-mockup.png)

## 4.4. Web Applications UX/UI Design

La presente secciÃ³n describe el diseÃ±o de experiencia de usuario (UX) e interfaz de usuario (UI) desarrollado para la plataforma web DoofPlus. La propuesta fue diseÃ±ada para apoyar la gestiÃ³n integral de calidad farmacÃ©utica bajo entornos regulados GxP, facilitando la administraciÃ³n documental, la trazabilidad de procesos productivos, la gestiÃ³n de desviaciones y el monitoreo operativo de laboratorios y lÃ­neas de manufactura.

El diseÃ±o considera principios de usabilidad, accesibilidad, consistencia visual y eficiencia operativa, asegurando que los diferentes perfiles de usuario puedan ejecutar actividades crÃ­ticas relacionadas con el cumplimiento normativo, la liberaciÃ³n de lotes y la auditorÃ­a regulatoria.

### 4.4.1. Web Applications Wireframes

En esta secciÃ³n se presentan los wireframes diseÃ±ados para la aplicaciÃ³n web de DoofPlus. Cada pantalla fue desarrollada para gestionar procesos de calidad farmacÃ©utica, producciÃ³n regulada GxP, trazabilidad de lotes, control documental y cumplimiento normativo mediante firmas electrÃ³nicas y registros auditables.

A continuaciÃ³n, se muestran las representaciones esquemÃ¡ticas de baja fidelidad que describen la estructura, distribuciÃ³n de componentes y funcionalidades principales de cada mÃ³dulo de la plataforma.

- **Landing Page - DoofPlus**

Pantalla de presentaciÃ³n de la plataforma que comunica la propuesta de valor de DoofPlus y permite acceder al portal especializado para gestiÃ³n de calidad y producciÃ³n farmacÃ©utica bajo normativas GxP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Landing%20Page.png)

- **Regulatory Identification - DoofPlus**

Pantalla de autenticaciÃ³n regulatoria que solicita las credenciales corporativas y la firma electrÃ³nica necesarias para acceder a funcionalidades sujetas a cumplimiento FDA 21 CFR Part 11 y normativas GxP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Login.png)

- **Environment Selection Portal - DoofPlus**

Interfaz que permite seleccionar el entorno de trabajo autorizado, diferenciando entre el segmento de calidad (QA/QC) y el entorno de producciÃ³n farmacÃ©utica.

![Wireframe](../assets/img/chapter4/prototype/wireframes/SelecciÃ³n%20de%20Espacio.png)

- **QA & Lab Console Dashboard - DoofPlus**

Panel principal para usuarios de calidad que centraliza la supervisiÃ³n de lotes pendientes, ensayos analÃ­ticos, desviaciones abiertas y actividades del laboratorio.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Dashboard%20Calidad.png)

- **Document Management & Master SOPs - DoofPlus**

Repositorio documental diseÃ±ado para gestionar procedimientos operativos estÃ¡ndar (SOPs), registros electrÃ³nicos, certificados de anÃ¡lisis y documentaciÃ³n regulatoria controlada.

![Wireframe](../assets/img/chapter4/prototype/wireframes/DocumentaciÃ³n.png)

- **Quality Protocols & Validation Management - DoofPlus**

MÃ³dulo destinado a la administraciÃ³n de protocolos de validaciÃ³n, cualificaciÃ³n de equipos y seguimiento de actividades relacionadas con IQ, OQ y PQ.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Protocolos.png)

- **Critical Deviations & CAPA Actions Control - DoofPlus**

Pantalla de seguimiento de desviaciones crÃ­ticas, anÃ¡lisis de impacto GMP y control de acciones correctivas y preventivas (CAPA).

![Wireframe](../assets/img/chapter4/prototype/wireframes/Desviaciones.png)

- **Process Audit Master Plan - DoofPlus**

MÃ³dulo para planificar, ejecutar y monitorear auditorÃ­as internas, inspecciones regulatorias y hallazgos asociados al cumplimiento GMP.

![Wireframe](../assets/img/chapter4/prototype/wireframes/AuditorÃ­as.png)

- **GxP Regulatory Reports & Metrics - DoofPlus**

Panel de anÃ¡lisis que permite generar reportes regulatorios, revisar mÃ©tricas de desempeÃ±o y exportar informaciÃ³n validada para auditorÃ­as e inspecciones.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Reportes.png)

- **Analytical Testing & Microbiology Control (QC) - DoofPlus**

Pantalla de control de ensayos analÃ­ticos y microbiolÃ³gicos que permite gestionar muestras, equipos de laboratorio y resultados fuera de especificaciÃ³n (OOS).

![Wireframe](../assets/img/chapter4/prototype/wireframes/Ensayos.png)

- **Analytical Results Entry & Validation - DoofPlus**

Interfaz destinada al registro y validaciÃ³n de resultados analÃ­ticos, integrando verificaciÃ³n de especificaciones y aprobaciÃ³n mediante firma electrÃ³nica.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Resultados.png)

- **Pharmaceutical Batch History & Traceability - DoofPlus**

MÃ³dulo de consulta histÃ³rica que permite rastrear lotes farmacÃ©uticos, consultar estados regulatorios y acceder a certificados de anÃ¡lisis.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Historial%20de%20Lotes.png)

- **Cross-Traceability & Audit Center - DoofPlus**

Centro de trazabilidad que integra genealogÃ­a de lotes, registros de laboratorio, documentaciÃ³n asociada y auditorÃ­a completa de eventos regulatorios.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Centro%20de%20Trazabilidad.png)

- **GxP Production Control Console - DoofPlus**

Panel principal del entorno de producciÃ³n que permite supervisar Ã³rdenes activas, progreso de eBR y estado de los procesos de manufactura.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Dashboard%20ProducciÃ³n.png)

- **GxP Batch Execution & Management Console - DoofPlus**

Interfaz para la gestiÃ³n operativa de lotes de fabricaciÃ³n, incluyendo seguimiento de etapas de producciÃ³n, firmas electrÃ³nicas y responsables asignados.

![Wireframe](../assets/img/chapter4/prototype/wireframes/GestiÃ³n%20de%20Lotes.png)

- **GxP Incident Registration & Deviation Management - DoofPlus**

MÃ³dulo de registro de incidencias que permite documentar eventos de desviaciÃ³n, adjuntar evidencias y gestionar acciones de contenciÃ³n.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Incidencias.png)

- **GxP Profile & Regulatory Credentials - DoofPlus**

Pantalla de perfil regulatorio donde los usuarios administran credenciales, firmas electrÃ³nicas y permisos asociados a los distintos contextos del sistema.

![Wireframe](../assets/img/chapter4/prototype/wireframes/Perfil.png)

- **General Settings & GxP Policies - DoofPlus**

MÃ³dulo de configuraciÃ³n orientado a la administraciÃ³n de polÃ­ticas GxP, parÃ¡metros de seguridad, auditorÃ­as internas y canales de notificaciÃ³n regulatoria.

![Wireframe](../assets/img/chapter4/prototype/wireframes/ConfiguraciÃ³n.png)

### 4.4.2. Web Applications Wireflow Diagrams

Los Wireflow Diagrams se utilizan para representar visualmente la navegaciÃ³n y las interacciones que realizan los usuarios dentro de una aplicaciÃ³n para alcanzar un objetivo determinado. Estos diagramas combinan wireframes y flujos de usuario, permitiendo visualizar las diferentes pantallas involucradas en cada proceso y la secuencia de acciones necesarias para completar una tarea.

Para DoofPlus se desarrollaron distintos Wireflow Diagrams basados en los principales objetivos de los usuarios dentro de un entorno farmacÃ©utico regulado por normas GxP. Cada diagrama describe el flujo que siguen los usuarios para gestionar procesos de producciÃ³n, control de calidad, documentaciÃ³n regulatoria, trazabilidad y cumplimiento normativo.

**Especialista de Aseguramiento y Control de Calidad (QA/QC)**

**User Goal 1:** Acceder a la plataforma y configurar el entorno regulatorio de trabajo.

Como usuario, quiero ingresar a DoofPlus y configurar el entorno regulatorio correspondiente para acceder a los mÃ³dulos y funciones necesarias para la gestiÃ³n de calidad farmacÃ©utica.

[User 1](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-1.png)

**User Goal 2:** Monitorear equipos y condiciones ambientales asociadas a la producciÃ³n.

Como usuario, quiero supervisar el estado de los equipos y las variables ambientales crÃ­ticas para asegurar que las operaciones de manufactura cumplan con los requisitos regulatorios establecidos.

[User 2](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-2.png)

**User Goal 3:** Gestionar lotes de producciÃ³n y garantizar su trazabilidad.

Como usuario, quiero registrar y monitorear los lotes de producciÃ³n para asegurar la trazabilidad completa desde su fabricaciÃ³n hasta su liberaciÃ³n.

[User 3](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-3.png)

**User Goal 4:** Consultar la trazabilidad histÃ³rica y el plan maestro de auditorÃ­as.

Como usuario, quiero acceder al historial de lotes y a los registros de auditorÃ­a para verificar evidencias de cumplimiento y mantener la integridad de la informaciÃ³n regulatoria.

[User 4](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-4.png)

User Goal 5: Gestionar protocolos de laboratorio y validar resultados de calidad.

Como usuario de control de calidad, quiero administrar protocolos de laboratorio y registrar resultados analÃ­ticos para garantizar el cumplimiento de los estÃ¡ndares GxP y los procedimientos de validaciÃ³n.

[User 5](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-5.png)

**User Goal 6:** Supervisar desviaciones, CAPA y mÃ©tricas regulatorias.

Como usuario, quiero registrar desviaciones, gestionar acciones correctivas y preventivas (CAPA) y consultar mÃ©tricas regulatorias para facilitar el cumplimiento normativo y la mejora continua.

[User 6](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-2-user-goal-6.png)

**Jefe o Supervisor de ProducciÃ³n FarmacÃ©utica**

User Goal 1: Acceder al dashboard de calidad para supervisar el estado de los procesos.

Como especialista de QA, quiero acceder a un dashboard centralizado que me permita monitorear indicadores de calidad, lotes en revisiÃ³n y elementos pendientes de validaciÃ³n.

[User 1](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-1.png)

User Goal 2: Gestionar auditorÃ­as y evidencias de cumplimiento regulatorio.

Como especialista de QA, quiero revisar auditorÃ­as y evidencias documentadas para verificar el cumplimiento de los requisitos regulatorios y de calidad.

[User 2](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-2.png)

User Goal 3: Registrar desviaciones e iniciar acciones CAPA.

Como especialista de QA, quiero registrar incidencias y gestionar acciones correctivas y preventivas para controlar riesgos y asegurar la mejora continua de los procesos.

[User 3](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-3.png)

User Goal 4: Gestionar protocolos de validaciÃ³n y control de calidad.

Como especialista de QA, quiero administrar protocolos de validaciÃ³n para verificar que los procesos y procedimientos cumplan con los requisitos regulatorios establecidos.

[User 4](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-4.png)

User Goal 5: Administrar documentaciÃ³n regulatoria y procedimientos operativos estÃ¡ndar.

Como especialista de QA, quiero gestionar documentos y SOPs para mantener registros controlados, actualizados y trazables dentro del sistema.

[User 5](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-5.png)

User Goal 6: Consultar reportes regulatorios y mÃ©tricas de desempeÃ±o.

Como especialista de QA, quiero visualizar reportes regulatorios e indicadores de calidad para evaluar tendencias, identificar riesgos y respaldar la toma de decisiones.

[User 6](../assets/img/chapter4/prototype/wireflow-diagrams/segmento-1-user-goal-6.png)

### 4.4.3. Web Applications Mock-ups

En esta secciÃ³n se presentan los mock-ups desarrollados para la aplicaciÃ³n web de DoofPlus. Estas representaciones de alta fidelidad muestran la apariencia final de la plataforma, incorporando la identidad visual del producto, componentes interactivos y elementos orientados al cumplimiento regulatorio farmacÃ©utico bajo estÃ¡ndares GMP y FDA 21 CFR Part 11.

Los mock-ups fueron diseÃ±ados considerando los procesos crÃ­ticos de aseguramiento y control de calidad, manufactura farmacÃ©utica, trazabilidad de lotes y gestiÃ³n documental, garantizando una experiencia de usuario intuitiva y alineada con los requisitos de integridad de datos, auditorÃ­a y firmas electrÃ³nicas.

- **Landing Page - DoofPlus**

Pantalla de presentaciÃ³n de la plataforma que comunica la propuesta de valor de DoofPlus y permite acceder al portal especializado para gestiÃ³n de calidad y producciÃ³n farmacÃ©utica bajo normativas GxP.

![Mockup](../assets/img/chapter4/prototype/mockup/Landing%20Page.png)

- **Regulatory Identification - DoofPlus**

Pantalla de autenticaciÃ³n regulatoria que solicita las credenciales corporativas y la firma electrÃ³nica necesarias para acceder a funcionalidades sujetas a cumplimiento FDA 21 CFR Part 11 y normativas GxP.

![Mockup](../assets/img/chapter4/prototype/mockup/Login.png)

- **Environment Selection Portal - DoofPlus**

Interfaz que permite seleccionar el entorno de trabajo autorizado, diferenciando entre el segmento de calidad (QA/QC) y el entorno de producciÃ³n farmacÃ©utica.

![Mockup](../assets/img/chapter4/prototype/mockup/SelecciÃ³n%20de%20Espacio.png)

- **QA & Lab Console Dashboard - DoofPlus**

Panel principal para usuarios de calidad que centraliza la supervisiÃ³n de lotes pendientes, ensayos analÃ­ticos, desviaciones abiertas y actividades del laboratorio.

![Mockup](../assets/img/chapter4/prototype/mockup/Dashboard%20Calidad.png)

- **Document Management & Master SOPs - DoofPlus**

Repositorio documental diseÃ±ado para gestionar procedimientos operativos estÃ¡ndar (SOPs), registros electrÃ³nicos, certificados de anÃ¡lisis y documentaciÃ³n regulatoria controlada.

![Mockup](../assets/img/chapter4/prototype/mockup/DocumentaciÃ³n.png)

- **Quality Protocols & Validation Management - DoofPlus**

MÃ³dulo destinado a la administraciÃ³n de protocolos de validaciÃ³n, cualificaciÃ³n de equipos y seguimiento de actividades relacionadas con IQ, OQ y PQ.

![Mockup](../assets/img/chapter4/prototype/mockup/Protocolos.png)

- **Critical Deviations & CAPA Actions Control - DoofPlus**

Pantalla de seguimiento de desviaciones crÃ­ticas, anÃ¡lisis de impacto GMP y control de acciones correctivas y preventivas (CAPA).

![Mockup](../assets/img/chapter4/prototype/mockup/Desviaciones.png)

- **Process Audit Master Plan - DoofPlus**

MÃ³dulo para planificar, ejecutar y monitorear auditorÃ­as internas, inspecciones regulatorias y hallazgos asociados al cumplimiento GMP.

![Mockup](../assets/img/chapter4/prototype/mockup/AuditorÃ­as.png)

- **GxP Regulatory Reports & Metrics - DoofPlus**

Panel de anÃ¡lisis que permite generar reportes regulatorios, revisar mÃ©tricas de desempeÃ±o y exportar informaciÃ³n validada para auditorÃ­as e inspecciones.

![Mockup](../assets/img/chapter4/prototype/mockup/Reportes.png)

- **Analytical Testing & Microbiology Control (QC) - DoofPlus**

Pantalla de control de ensayos analÃ­ticos y microbiolÃ³gicos que permite gestionar muestras, equipos de laboratorio y resultados fuera de especificaciÃ³n (OOS).

![Mockup](../assets/img/chapter4/prototype/mockup/Ensayos.png)

- **Analytical Results Entry & Validation - DoofPlus**

Interfaz destinada al registro y validaciÃ³n de resultados analÃ­ticos, integrando verificaciÃ³n de especificaciones y aprobaciÃ³n mediante firma electrÃ³nica.

![Mockup](../assets/img/chapter4/prototype/mockup/Resultados.png)

- **Pharmaceutical Batch History & Traceability - DoofPlus**

MÃ³dulo de consulta histÃ³rica que permite rastrear lotes farmacÃ©uticos, consultar estados regulatorios y acceder a certificados de anÃ¡lisis.

![Mockup](../assets/img/chapter4/prototype/mockup/Historial%20de%20Lotes.png)

- **Cross-Traceability & Audit Center - DoofPlus**

Centro de trazabilidad que integra genealogÃ­a de lotes, registros de laboratorio, documentaciÃ³n asociada y auditorÃ­a completa de eventos regulatorios.

![Mockup](../assets/img/chapter4/prototype/mockup/Centro%20de%20Trazabilidad.png)

- **GxP Production Control Console - DoofPlus**

Panel principal del entorno de producciÃ³n que permite supervisar Ã³rdenes activas, progreso de eBR y estado de los procesos de manufactura.

![Mockup](../assets/img/chapter4/prototype/mockup/Dashboard%20ProducciÃ³n.png)

- **GxP Batch Execution & Management Console - DoofPlus**

Interfaz para la gestiÃ³n operativa de lotes de fabricaciÃ³n, incluyendo seguimiento de etapas de producciÃ³n, firmas electrÃ³nicas y responsables asignados.

![Mockup](../assets/img/chapter4/prototype/mockup/GestiÃ³n%20de%20Lotes.png)

- **GxP Incident Registration & Deviation Management - DoofPlus**

MÃ³dulo de registro de incidencias que permite documentar eventos de desviaciÃ³n, adjuntar evidencias y gestionar acciones de contenciÃ³n.

![Mockup](../assets/img/chapter4/prototype/mockup/Incidencias.png)

- **GxP Profile & Regulatory Credentials - DoofPlus**

Pantalla de perfil regulatorio donde los usuarios administran credenciales, firmas electrÃ³nicas y permisos asociados a los distintos contextos del sistema.

![Mockup](../assets/img/chapter4/prototype/mockup/Perfil.png)

- **General Settings & GxP Policies - DoofPlus**

MÃ³dulo de configuraciÃ³n orientado a la administraciÃ³n de polÃ­ticas GxP, parÃ¡metros de seguridad, auditorÃ­as internas y canales de notificaciÃ³n regulatoria.

![Mockup](../assets/img/chapter4/prototype/mockup/ConfiguraciÃ³n.png)

### 4.4.4. Web Applications User Flow Diagrams

Los User Flow Diagrams representan la secuencia de acciones que realizan los usuarios dentro de la plataforma para alcanzar un objetivo especÃ­fico. Estos diagramas permiten visualizar la navegaciÃ³n entre mÃ³dulos, las decisiones tomadas durante el proceso y los diferentes escenarios que pueden ocurrir durante la interacciÃ³n con el sistema.

Para DoofPlus se definieron distintos flujos asociados a los procesos crÃ­ticos de calidad y manufactura farmacÃ©utica. Cada User Flow se clasifica como Happy Path, cuando el usuario completa exitosamente el objetivo planteado, o Unhappy Path, cuando el flujo se origina a partir de una incidencia, desviaciÃ³n o situaciÃ³n excepcional que requiere atenciÃ³n y seguimiento.

***User Flow 1: Acceso a la plataforma y selecciÃ³n del entorno operativo***

Este flujo describe el proceso que realiza un usuario desde el ingreso a la plataforma hasta el acceso al entorno de trabajo correspondiente segÃºn su rol y permisos regulatorios.

**Happy Path**

Como usuario autorizado, quiero acceder a la plataforma, completar la autenticaciÃ³n regulatoria y seleccionar mi entorno de trabajo para comenzar a utilizar las funcionalidades correspondientes a mi perfil.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-1.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path*

Como usuario, quiero acceder a la plataforma y al entorno de manufactura para consultar indicadores regulatorios y reportes asociados al proceso productivo.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-1.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 2: GestiÃ³n de muestras y consulta de trazabilidad***

Este flujo representa el proceso mediante el cual un especialista de calidad registra una muestra, valida los resultados obtenidos y consulta posteriormente la trazabilidad asociada al lote analizado.

**Happy Path**

Como especialista de calidad, quiero registrar muestras y validar resultados analÃ­ticos para garantizar la trazabilidad y el cumplimiento de los procedimientos de laboratorio.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-2.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero consultar el historial de trazabilidad y auditorÃ­a de un lote para investigar eventos o situaciones excepcionales detectadas durante la producciÃ³n.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-2.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 3: Registro de incidencias y gestiÃ³n de desviaciones***

Este flujo muestra cÃ³mo una incidencia detectada durante las operaciones es registrada y posteriormente evaluada mediante el proceso de gestiÃ³n de desviaciones y acciones correctivas.

**Happy Path**

Como especialista de calidad, quiero gestionar desviaciones y registrar acciones CAPA para corregir incumplimientos identificados y reducir riesgos regulatorios.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-3.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como operador de manufactura, quiero registrar una incidencia operativa para documentar una desviaciÃ³n que pueda afectar la calidad, seguridad o continuidad del proceso.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-3.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 4: GestiÃ³n documental y protocolos de validaciÃ³n***

Este flujo describe la administraciÃ³n de documentos regulados y protocolos de validaciÃ³n necesarios para mantener la conformidad con los estÃ¡ndares GMP.

**Happy Path**

Como especialista de calidad, quiero gestionar documentos y protocolos de validaciÃ³n para asegurar que los procedimientos se encuentren actualizados y correctamente controlados.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-4.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero monitorear equipos y consultar el estado de ejecuciÃ³n de lotes para identificar anomalÃ­as que puedan afectar la operaciÃ³n.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-4.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 5: EvaluaciÃ³n de cumplimiento regulatorio***

Este flujo representa el proceso de anÃ¡lisis del estado de cumplimiento mediante la revisiÃ³n de desviaciones, validaciones y reportes regulatorios.

**Happy Path**

Como especialista de calidad, quiero revisar el estado del sistema de calidad y consultar mÃ©tricas regulatorias para evaluar el nivel de cumplimiento de la organizaciÃ³n.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-5.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero realizar seguimiento a la ejecuciÃ³n de lotes y verificar posteriormente la informaciÃ³n de trazabilidad para investigar posibles desviaciones.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-5.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

***User Flow 6: AuditorÃ­a y trazabilidad de lotes***

Este flujo muestra cÃ³mo los usuarios acceden a la informaciÃ³n histÃ³rica de los lotes y a los registros de auditorÃ­a para respaldar procesos de inspecciÃ³n y liberaciÃ³n farmacÃ©utica.

**Happy Path**

Como especialista de calidad, quiero consultar la trazabilidad completa de un lote y revisar el historial de auditorÃ­a para verificar la integridad y consistencia de los registros.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/happy-path-6.png" alt="Happy" style="width: auto; height: auto; border: 2px solid #00bfff;">

**Unhappy Path**

Como usuario de manufactura, quiero acceder al historial y la trazabilidad de un lote para analizar informaciÃ³n relacionada con una situaciÃ³n excepcional o una observaciÃ³n generada durante el proceso productivo.

<img src="../assets/img/chapter4/prototype/user-flow-diagrams/unhappy-path-6.png" alt="Unappy" style="width: auto; height: auto; border: 2px solid #00bfff;">

## 4.5. Web Applications Prototyping

La secciÃ³n de Web Applications Prototyping presenta los prototipos interactivos desarrollados para validar los flujos operativos y regulatorios de DoofPlus antes de su implementaciÃ³n. Estos prototipos permiten simular la experiencia real de navegaciÃ³n dentro de la plataforma, evaluando la accesibilidad, usabilidad y eficiencia de las interacciones propuestas.

El diseÃ±o de los prototipos fue guiado por cuatro principios fundamentales:

1. Cumplimiento regulatorio por diseÃ±o

Todas las interacciones fueron concebidas considerando requisitos de FDA 21 CFR Part 11, GMP y buenas prÃ¡cticas de documentaciÃ³n, incorporando controles asociados a firmas electrÃ³nicas, auditorÃ­a de registros y segregaciÃ³n de funciones.

2. Arquitectura basada en procesos farmacÃ©uticos

La navegaciÃ³n se organiza alrededor de los procesos mÃ¡s frecuentes dentro de la industria farmacÃ©utica:

- GestiÃ³n documental regulatoria.
- Control y liberaciÃ³n de lotes.
- InvestigaciÃ³n de desviaciones.
- GestiÃ³n CAPA.
- AuditorÃ­as regulatorias.
- ValidaciÃ³n y control analÃ­tico.

3. Consistencia visual y operativa

Los prototipos mantienen una identidad visual uniforme mediante el uso consistente de colores institucionales, componentes reutilizables, tablas regulatorias y paneles de control orientados a la supervisiÃ³n operativa.

4. OptimizaciÃ³n para entornos de trabajo regulados

La interfaz prioriza:

- Acceso rÃ¡pido a informaciÃ³n crÃ­tica.
- VisualizaciÃ³n inmediata del estado de cumplimiento.
- ReducciÃ³n de errores durante el ingreso de datos.
- NavegaciÃ³n simplificada para procesos frecuentes.
- Facilidad de auditorÃ­a e inspecciÃ³n regulatoria.

Los prototipos permiten validar que las tareas principales del sistema, tales como consultar documentaciÃ³n aprobada, investigar desviaciones, ejecutar acciones CAPA y realizar auditorÃ­as internas, puedan completarse de forma eficiente y manteniendo la trazabilidad requerida por los estÃ¡ndares regulatorios del sector farmacÃ©utico.

## 4.6. Domain-Driven Software Architecture
La arquitectura de DoofPlus se fundamenta en Domain-Driven Design (DDD) para modelar con precisiÃ³n las reglas de negocio del sector farmacÃ©utico exigida por DIGEMID. Mediante la delimitaciÃ³n de bounded contexts, se separan claramente las responsabilidades de cada subsistema. En esta secciÃ³n se presentan los resultados del Event Storming, asÃ­ como los diagramas de contexto, contenedores y componentes que estructuran la soluciÃ³n.

### 4.6.1. Design-Level Event Storming
Para identificar los eventos de dominio y profundizar en la arquitectura del sistema, el equipo de IngesCompany llevÃ³ a cabo una sesiÃ³n de Design-Level Event Storming. Esta tÃ©cnica permitiÃ³ visualizar y comprender el flujo de eventos, reglas de negocio y dependencias tecnolÃ³gicas, facilitando la identificaciÃ³n formal de los Contextos Delimitados de DoofPlus.
El desarrollo del proceso de Domain-Driven Design se realizÃ³ de manera colaborativa utilizando la plataforma Miro.
Enlace al tablero: click aquÃ­ para ver el enlace (https://miro.com/app/board/uXjVHkhKOXE=/)
#### Paso 1: Timelines
Organizamos los eventos (post-its naranjas) en lÃ­neas de tiempo para visualizar la secuencia lÃ³gica de las operaciones de la plataforma SaaS y farmacÃ©utica. Identificamos los siguientes flujos principales:

- Flujo B2B y Organizaciones: Registro de empresas clientes y configuraciÃ³n de perfiles corporativos.

- Flujo de Suscripciones (SaaS): SelecciÃ³n de planes, procesamiento de pagos y renovaciÃ³n o cancelaciÃ³n de suscripciones.

- Flujo de Identidad y Accesos: Inicio de sesiÃ³n con autenticaciÃ³n de doble factor y cierre de sesiÃ³n seguro.

- Flujo de Inventario: Registro de fÃ¡rmacos, recepciÃ³n de materias primas y asignaciÃ³n de ubicaciÃ³n en almacÃ©n.

- Flujo de FabricaciÃ³n: CreaciÃ³n de lotes, aprobaciÃ³n de Ã³rdenes, inicio y cierre de producciÃ³n, y solicitud de liberaciÃ³n.

- Flujo de Calidad y Cumplimiento: CreaciÃ³n y publicaciÃ³n de protocolos, investigaciÃ³n de desviaciones (CAPA), revisiÃ³n de lotes, generaciÃ³n de reportes y expedientes de trazabilidad.

- Flujo de TelemetrÃ­a IoT: Registro automÃ¡tico de variables crÃ­ticas, calibraciÃ³n de maquinaria y generaciÃ³n de alertas operativas o ambientales.

![timeline IAM](../assets/img/chapter4/design-level-event-storming/timelines/timeline-iam.png)
![timeline lotes](../assets/img/chapter4/design-level-event-storming/timelines/timeline-lotes.png)
![timeline telemetria](../assets/img/chapter4/design-level-event-storming/timelines/timeline-telemetria.png)
![timeline calidad](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad.png)
![timeline calidad2](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad2.png)
![timeline calidad3](../assets/img/chapter4/design-level-event-storming/timelines/timeline-calidad3.png)
![timeline SaaS](../assets/img/chapter4/design-level-event-storming/timelines/timeline-saas.png)
![timeline B2B](../assets/img/chapter4/design-level-event-storming/timelines/timeline-b2b.png)

#### Paso 2: Commands
Definimos los comandos (post-its azules, acciones en verbo imperativo) que los actores ejecutan en el sistema para mutar el estado de la aplicaciÃ³n:

| Actor / Sistema | Comandos Principales (Intenciones de acciÃ³n)                                                                                                                                                                                             |
| :--- |:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **Administrador de Sistema** | Registrar empresa cliente, Asignar roles y permisos, Suspender cuenta de empresa, Seleccionar plan de suscripciÃ³n, Procesar pago, Cancelar suscripciÃ³n.                                                                                  |
| **Especialista de control de calidad (QA/QC)** | Iniciar sesiÃ³n, Crear protocolo, Aprobar protocolo, Publicar versiÃ³n, Clasificar desviaciÃ³n, Registrar acciÃ³n correctiva, Iniciar auditorÃ­a, Registrar hallazgo, Evaluar lote, Aprobar distribuciÃ³n, Generar reporte.                    |
| **Jefe de ProducciÃ³n FarmacÃ©utica** | Crear lote, Iniciar producciÃ³n, Actualizar estado, Cerrar lote, Solicitar liberaciÃ³n, Registrar fÃ¡rmaco, Recibir materia prima, Calibrar maquinaria de producciÃ³n, Monitorear producciÃ³n.                                                |
| **Sistemas Internos / IoT** | Renovar suscripciÃ³n, Rechazar pago, Registrar variables crÃ­ticas, Registrar desviaciones, Generar alertas.                                                                                                                               |
![commands IAM](../assets/img/chapter4/design-level-event-storming/commands/commands-iam.png)
![commands lotes](../assets/img/chapter4/design-level-event-storming/commands/commands-lotes.png)
![commands telemetria](../assets/img/chapter4/design-level-event-storming/commands/commands-telemetria.png)
![commands calidad](../assets/img/chapter4/design-level-event-storming/commands/commands-calidad.png)
![commands calidad2](../assets/img/chapter4/design-level-event-storming/commands/commands-calidad2.png)
![commads SaaS](../assets/img/chapter4/design-level-event-storming/commands/commands-saas.png)
![commands B2B](../assets/img/chapter4/design-level-event-storming/commands/commands-b2b.png)

#### Paso 3: Policies & actors

Identificamos a los actores del sistema (post-its amarillos: Especialista QA/QC, Jefe de ProducciÃ³n, Administrador) y las reglas de negocio automÃ¡ticas implÃ­citas en el flujo para garantizar el cumplimiento de las BPM:

*   **CUANDO** se intenta iniciar sesiÃ³n **ENTONCES** exigir validaciÃ³n mediante *Google Authenticator*[cite: 4].
*   **CUANDO** se procesa un pago a travÃ©s de la pasarela **ENTONCES** renovar la suscripciÃ³n y activar el panel[cite: 9].
*   **CUANDO** se recibe materia prima **ENTONCES** actualizar el *Inventario de Materia Prima y AlmacÃ©n*[cite: 5].
*   **CUANDO** los dispositivos IoT registran desviaciones de parÃ¡metros **ENTONCES** disparar el motor de alertas y generar alerta ambiental de almacÃ©n[cite: 6].
*   **CUANDO** se identifica una causa raÃ­z **ENTONCES** registrar acciÃ³n correctiva en el registro CAPA[cite: 7].
*   **CUANDO** el Especialista QA aprueba la distribuciÃ³n **ENTONCES** generar reporte y certificado de calidad[cite: 8].
*   **CUANDO** se cierra el lote de producciÃ³n **ENTONCES** habilitar la solicitud de liberaciÃ³n[cite: 5].
    ![policies lotes](../assets/img/chapter4/design-level-event-storming/policies/policy-lotes.png)
    ![policies telemetria](../assets/img/chapter4/design-level-event-storming/policies/policy-telemetria.png)
    ![policies calidad](../assets/img/chapter4/design-level-event-storming/policies/policy-calidad.png)
    ![policies saas](../assets/img/chapter4/design-level-event-storming/policies/policy-saas.png)

#### Paso 4: Read Models

Los Modelos de Lectura (post-its verdes) representan las vistas de consulta crÃ­ticas que los actores necesitan para tomar decisiones:

*   **AdministraciÃ³n B2B:** *Directorio de Empresas Clientes*, *Matriz de Roles y Permisos*, *Tabla de Planes de SuscripciÃ³n*[cite: 9].
*   **Control de Acceso:** *Pantalla de VerificaciÃ³n 2FA*, *Estado de SesiÃ³n*[cite: 4].
*   **ProducciÃ³n y LogÃ­stica:** *Panel de Control de Lote*, *Dashboard de Tendencias Operativas*, *CatÃ¡logo Maestro de FÃ¡rmacos*, *Inventario de Materia Prima y AlmacÃ©n*[cite: 5].
*   **Control de Calidad (QA/QC):** *Bandeja de Solicitudes de Calidad*, *Panel de Resultados de Laboratorio*, *Agenda y Registro de AuditorÃ­as*[cite: 7, 8].
*   **Monitoreo Industrial:** *Historial de CalibraciÃ³n de Maquinaria*, *Dashboard de TelemetrÃ­a en Tiempo Real*, *Panel de Alertas y Desviaciones Sensoriales*[cite: 6].
    ![rm IAM](../assets/img/chapter4/design-level-event-storming/read-models/rm-iam.png)
    ![rm lotes](../assets/img/chapter4/design-level-event-storming/read-models/rm-lotes.png)
    ![rm telemetria](../assets/img/chapter4/design-level-event-storming/read-models/rm-telemetria.png)
    ![rm calidad](../assets/img/chapter4/design-level-event-storming/read-models/rm-calidad.png)
    ![rm calidad2](../assets/img/chapter4/design-level-event-storming/read-models/rm-calidad2.png)
    ![rm SaaS](../assets/img/chapter4/design-level-event-storming/read-models/rm-saas.png)
    ![rm B2B](../assets/img/chapter4/design-level-event-storming/read-models/rm-b2b.png)

#### Paso 5: External Systems

Mapeamos los sistemas e infraestructura externos (post-its rosados) que interactÃºan con nuestro dominio central para delegar responsabilidades especÃ­ficas:

*   **Google Authenticator:** Utilizado en el proceso de inicio de sesiÃ³n para el control de doble factor (2FA)[cite: 4].
*   **Pasarela de Pago:** Sistema financiero externo para procesar renovaciones o rechazar pagos de las suscripciones SaaS[cite: 9].
*   **Dispositivos IoT:** Hardware en planta encargado de capturar y emitir parÃ¡metros y variables crÃ­ticas hacia el sistema[cite: 6].
*   **Motor de Alertas:** Servicio externo o microservicio encargado de despachar las alertas ambientales generadas por desviaciones de la maquinaria[cite: 6].
    ![es IAM](../assets/img/chapter4/design-level-event-storming/external-systems/es-iam.png)
    ![es lotes](../assets/img/chapter4/design-level-event-storming/external-systems/es-lotes.png)
    ![es telemetria](../assets/img/chapter4/design-level-event-storming/external-systems/es-telemetria.png)
    ![es calidad](../assets/img/chapter4/design-level-event-storming/external-systems/es-calidad.png)
    ![es calidad2](../assets/img/chapter4/design-level-event-storming/external-systems/es-calidad2.png)
    ![es SaaS](../assets/img/chapter4/design-level-event-storming/external-systems/es-saas.png)
    ![es B2B](../assets/img/chapter4/design-level-event-storming/external-systems/es-b2b.png)

#### Paso 6: Aggregates

Agrupamos los comandos y eventos en Agregados (grandes bloques amarillos centrales), los cuales actÃºan como las entidades transaccionales raÃ­z que protegen la consistencia de los datos:

*   **Perfil Corporativo y Tenant:** Centraliza los datos de la empresa cliente y la asignaciÃ³n de roles.
*   **Motor de FacturaciÃ³n y SuscripciÃ³n:** Gestiona el estado del plan, pagos y cuenta de la empresa[cite: 9].
*   **MÃ³dulo de Credenciales y SesiÃ³n:** Controla el ciclo de vida de la sesiÃ³n autenticada[cite: 4].
*   **Inventario y Materia Prima:** Gestiona el catÃ¡logo de fÃ¡rmacos y la recepciÃ³n logÃ­stica[cite: 5].
*   **Lote de ProducciÃ³n:** Controla las Ã³rdenes, estados e incidencias del ciclo de manufactura[cite: 5].
*   **Registro de Maquinaria y TelemetrÃ­a:** Agrupa la calibraciÃ³n de equipos, ingesta de parÃ¡metros y el cÃ¡lculo de indicadores IoT[cite: 6].
*   **Repositorio Documental y Protocolos:** Controla las versiones y aprobaciones de los estÃ¡ndares de calidad[cite: 7].
*   **Registro de InvestigaciÃ³n y CAPA:** Gestiona las desviaciones de calidad, anÃ¡lisis de causa raÃ­z y verificaciones[cite: 7].
*   **Expediente de Trazabilidad y AuditorÃ­a:** Consolida rastreos de lotes, auditorÃ­as, hallazgos y certificados de liberaciÃ³n final[cite: 7, 8].
    ![aggregate IAM](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-iam.png)
    ![aggregate lotes](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-lotes.png)
    ![aggregate telemetria](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-telemetria.png)
    ![aggregate calidad](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-calidad.png)
    ![aggregate SaaS](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-saas.png)
    ![aggregate B2B](../assets/img/chapter4/design-level-event-storming/aggregates/aggregate-b2b.png)

#### Paso 7: Bounded Contexts

Finalmente, consolidamos la arquitectura modular de DoofPlus definiendo formalmente 6 *Bounded Contexts* a partir de la agrupaciÃ³n de los Agregados:

| Bounded Context | Agregados Core y Responsabilidad |
| :--- | :--- |
| **BC: GestiÃ³n de Organizaciones y Perfiles (B2B)** | Contiene *Perfil Corporativo y Tenant*. Gestiona el registro multi-tenant y la matriz de roles y permisos del sistema. |
| **BC: GestiÃ³n de suscripciones y pagos (SaaS)** | Contiene el *Motor de FacturaciÃ³n y SuscripciÃ³n*. Administra los planes comerciales y la integraciÃ³n con la pasarela de pagos[cite: 9]. |
| **BC: GestiÃ³n de identidades y accesos (IAM)** | Contiene el *MÃ³dulo de Credenciales y SesiÃ³n*. Responsable de la seguridad, login y validaciÃ³n 2FA[cite: 4]. |
| **BC: FabricaciÃ³n y gestiÃ³n de lotes** | Agrupa *Inventario y Materia Prima* y *Lote de ProducciÃ³n*. Coordina todo el flujo operativo de manufactura farmacÃ©utica[cite: 5]. |
| **BC: TelemetrÃ­a y monitorizaciÃ³n IoT** | Contiene el *Registro de Maquinaria y TelemetrÃ­a*. Procesa la ingesta de datos industriales y el disparo del motor de alertas[cite: 6]. |
| **BC: GestiÃ³n de calidad y cumplimiento** | Agrupa el *Repositorio Documental*, *Registro CAPA* y el *Expediente de Trazabilidad y AuditorÃ­a*. Asegura las certificaciones, auditorÃ­as y liberaciÃ³n de producto[cite: 7, 8]. |
![bc IAM](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-iam.png)
![bc lotes](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-lotes.png)
![bc telemetria](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-telemetria.png)
![bc calidad](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-calidad.png)
![bc SaaS](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-saas.png)
![bc B2B](../assets/img/chapter4/design-level-event-storming/bounded-contexts/bc-b2b.png)

### 4.6.2. Software Architecture Context Diagram

En esta secciÃ³n, el equipo presenta el diagrama de contexto (Nivel 1 del modelo C4), el cual ofrece una visiÃ³n general de alto nivel de la arquitectura de la plataforma **Doof-Plus**. El objetivo de este nivel es ilustrar el sistema como una "caja negra" central, delimitando claramente sus fronteras frente a los usuarios humanos que lo operan y los sistemas externos de los cuales depende para ejecutar sus flujos de negocio.

![Context Level Diagram](../assets/img/chapter4/software-architecture/context-diagram.svg)

**ExplicaciÃ³n del diagrama:**
El sistema central, **Doof-Plus**, se ubica en el centro como una plataforma SaaS farmacÃ©utica B2B unificada. A su alrededor, interactÃºan dos grupos principales:

1. **Usuarios (Actores):**
    - **Jefe de ProducciÃ³n FarmacÃ©utica:** InteractÃºa con el sistema mediante peticiones HTTPS para planificar manufactura, gestionar lotes y monitorear la telemetrÃ­a operativa de la planta.
    - **Especialista QA/QC:** Utiliza la plataforma para realizar la auditorÃ­a de procesos, gestionar normativas, aprobar acciones correctivas (CAPA) y emitir certificados de liberaciÃ³n.
    - **Administrador de Sistema:** Opera la plataforma para gestionar la alta de empresas clientes (Tenants), distribuir roles globales y administrar los planes de suscripciÃ³n.

2. **Sistemas Externos:**
    - **Google Authenticator:** Proveedor de identidad externo con el que Doof-Plus se comunica vÃ­a REST API para validar cÃ³digos de seguridad de doble factor (2FA).
    - **ThingsBoard:** Plataforma externa especializada en IoT que procesa en crudo los datos de los sensores de la planta, y luego envÃ­a de forma consolidada las alertas ambientales y mÃ©tricas a Doof-Plus.
    - **Niubiz (Payment Gateway):** Pasarela de pagos externa utilizada para procesar, autorizar y tokenizar el cobro de las suscripciones del modelo SaaS.

### 4.6.3. Software Architecture Container Diagrams

En esta secciÃ³n, se presenta el diagrama de contenedores (Nivel 2 del modelo C4), el cual realiza un acercamiento a la arquitectura interna de Doof-Plus. Este nivel expone las unidades de despliegue independientes, mostrando la distribuciÃ³n de responsabilidades, las decisiones tecnolÃ³gicas clave y la comunicaciÃ³n entre los contenedores.

![Container Level Diagram](../assets/img/chapter4/software-architecture/container-diagram.svg)

**ExplicaciÃ³n del diagrama y decisiones tecnolÃ³gicas:**
La arquitectura de Doof-Plus estÃ¡ diseÃ±ada bajo un patrÃ³n de microservicios con una capa de persistencia hÃ­brida, garantizando escalabilidad y separaciÃ³n de responsabilidades (*Bounded Contexts*). Los contenedores y su comunicaciÃ³n se estructuran de la siguiente manera:

1. **Capa de PresentaciÃ³n (Front-End):**
    - **AplicaciÃ³n Web (SPA):** Desarrollada en **TypeScript** (empleando React/Angular). Es la unidad desplegable con la que interactÃºan los actores a travÃ©s de su navegador web. Se comunica con los microservicios backend de forma sÃ­ncrona mediante peticiones HTTP/REST (JSON).

2. **Capa de Microservicios Backend (APIs):**
    - **API de IAM y GestiÃ³n de Tenants:** (C#/TypeScript). Centraliza el control de acceso, la emisiÃ³n de JWT y la multitenencia.
    - **API Principal de FabricaciÃ³n:** (C#/TypeScript). NÃºcleo transaccional del dominio que gestiona la lÃ³gica de Ã³rdenes de producciÃ³n y la actualizaciÃ³n del inventario de materias primas.
    - **Motor de Calidad y Cumplimiento:** (C#/TypeScript). Servicio regulatorio que administra los flujos normativos y la inmutabilidad de los reportes CAPA y de auditorÃ­a.
    - **Servicio de Suscripciones y FacturaciÃ³n:** (C#/TypeScript). Gestiona la lÃ³gica comercial del SaaS y orquesta los pagos delegÃ¡ndolos a la API de Niubiz.
    - **Motor de Ingesta de TelemetrÃ­a IoT:** Desarrollado en **Node.js/TypeScript** por su naturaleza no bloqueante, ideal para recibir un alto volumen de Webhooks entrantes desde ThingsBoard.

3. **Capa de Persistencia (Bases de Datos):**
    - **Base de Datos Relacional (MySQL):** Seleccionada por su cumplimiento ACID. Persiste los datos transaccionales estrictos: credenciales, catÃ¡logos, trazabilidad de lotes y facturaciÃ³n (comunicaciÃ³n vÃ­a TCP/IP SQL).
    - **Base de Datos Documental (MongoDB):** Seleccionada por su flexibilidad de esquemas y rendimiento en operaciones de escritura. Almacena las series temporales masivas generadas por el motor IoT (comunicaciÃ³n vÃ­a MongoDB Wire Protocol).

### 4.6.4. Software Architecture Components Diagrams

En esta secciÃ³n, el equipo presenta los diagramas de componentes (Nivel 3 del modelo C4) correspondientes a cada uno de los microservicios (Containers) backend considerados. Estos diagramas detallan los bloques estructurales de cÃ³digo (Controladores, Servicios y Repositorios), sus responsabilidades de implementaciÃ³n y cÃ³mo interactÃºan para resolver la lÃ³gica de dominio antes de persistir los datos.

**1. DescomposiciÃ³n del Container: API de IAM y GestiÃ³n de Tenants**
![Component Diagram - IAM](../assets/img/chapter4/software-architecture/component-IAM.svg)
- **Controlador de AutenticaciÃ³n:** *REST Controller* que intercepta peticiones HTTP para login y 2FA.
- **Servicio de ValidaciÃ³n de Tokens:** LÃ³gica de negocio encargada de generar y firmar criptogrÃ¡ficamente los tokens JWT.
- **Servicio de GestiÃ³n de Tenants:** Gestiona la segregaciÃ³n de datos para aislar la informaciÃ³n de cada empresa B2B.
- **Repositorio IAM:** Componente ORM que accede a MySQL para validar credenciales.

**2. DescomposiciÃ³n del Container: API Principal de FabricaciÃ³n**
![Component Diagram - Manufactura](../assets/img/chapter4/software-architecture/component-manufactura.svg)
- **Controlador de Lotes:** *REST Controller* que recibe los comandos operativos (ej. Iniciar Lote, Cerrar Lote).
- **Servicio de Dominio de Manufactura:** Clase de servicio que orquesta las reglas de negocio sobre los estados de la producciÃ³n.
- **Servicio de Inventario:** LÃ³gica que valida y descuenta los insumos del almacÃ©n para evitar quiebres de stock.
- **Repositorio de Lotes e Inventario:** Componente ORM que traduce las entidades a consultas transaccionales hacia MySQL.

**3. DescomposiciÃ³n del Container: Motor de Calidad y Cumplimiento**
![Component Diagram - Calidad](../assets/img/chapter4/software-architecture/component-calidad.svg)
- **Controlador de Cumplimiento:** *REST Controller* para la gestiÃ³n de cuarentenas y aprobaciones.
- **Servicio de InvestigaciÃ³n CAPA:** Bloque que controla el ciclo de vida de las desviaciones normativas y sus resoluciones.
- **Repositorio de Trazabilidad y AuditorÃ­a:** Componente encargado de garantizar la inmutabilidad de los registros histÃ³ricos en la base de datos relacional.

**4. DescomposiciÃ³n del Container: Servicio de Suscripciones y FacturaciÃ³n**
![Component Diagram - FacturaciÃ³n](../assets/img/chapter4/software-architecture/component-facturacion.svg)
- **Controlador de FacturaciÃ³n:** Interfaz HTTP para consultar planes y realizar actualizaciones de cuenta.
- **Gestor de Planes de SuscripciÃ³n:** Servicio que valida las restricciones operativas segÃºn el lÃ­mite del plan adquirido por el Tenant.
- **Cliente de Pasarela de Pagos:** Componente de integraciÃ³n externa que serializa la peticiÃ³n hacia Niubiz para autorizar cargos.
- **Repositorio de FacturaciÃ³n:** ORM responsable de guardar el historial de transacciones en MySQL.

**5. DescomposiciÃ³n del Container: Motor de Ingesta de TelemetrÃ­a IoT**
![Component Diagram - TelemetrÃ­a](../assets/img/chapter4/software-architecture/component-telemetria.svg)
- **Receptor de Webhooks:** Controlador optimizado en Node.js para recibir flujos continuos de datos JSON desde ThingsBoard.
- **Motor de Reglas de Alertas:** Servicio lÃ³gico que contrasta las variables operativas contra umbrales de seguridad predefinidos.
- **Cliente de Notificaciones:** Componente disparador que emite eventos de advertencia hacia la plataforma si ocurre una anomalÃ­a en planta.
- **Repositorio de Series Temporales:** Adaptador de datos que persiste los logs y mÃ©tricas a alta velocidad en las colecciones de MongoDB.

## 4.7. Software Object-Oriented Design

En esta secciÃ³n, el equipo presenta el diseÃ±o orientado a objetos y los diagramas de clases tÃ¡cticos basados en Domain-Driven Design (DDD) para cada uno de los **6 Bounded Contexts** de la plataforma **Doof-Plus**. Esta aproximaciÃ³n detalla las entidades, objetos de valor, enumeraciones, multiplicidades y los miembros de cada clase, especificando atributos y mÃ©todos con sus respectivos niveles de visibilidad (`+` para public y `-` para private).

### 4.7.1. Class Diagrams

#### 1. Bounded Context: IAM & Tenant Management
Este diagrama modela el diseÃ±o tÃ¡ctico para el control de identidades, la seguridad perimetral y la separaciÃ³n lÃ³gica de las empresas clientes (Tenants) bajo un esquema multitenant B2B.
- **Clases Principales:** `Tenant` (RaÃ­z de Agregado), `User`, `Credential`, y `UserSession`.
- **Enumeraciones:** `AuthProvider`, `SessionStatus`.
- **Detalle de Relaciones:** El `Tenant` agrupa mÃºltiples usuarios, los cuales se componen estrictamente de credenciales y generan sesiones de usuario asociadas a proveedores de identidad externos.

![ Diagrama de Clases IAM & Tenant Management](../assets/img/chapter4/diagram-class/diagram-class-b1.png)
#### 2. Bounded Context: Core Manufacturing
Modela el nÃºcleo operativo y transaccional de la planta farmacÃ©utica, abarcando la creaciÃ³n de lotes, Ã³rdenes de producciÃ³n, control de materias primas e incidentes en lÃ­nea.
- **Clases Principales:** `ProductionBatch` (RaÃ­z de Agregado), `BatchOrder`, `RawMaterialInventory`, y `OperationalIncident`.
- **Enumeraciones:** `BatchStatus`, `IncidentSeverity`.
- **Detalle de Relaciones:** Cada lote de producciÃ³n gestiona una orden, consume inventario de materias primas y registra incidencias operativas asociadas a su severidad.

![ Diagrama de Clases Core Manufacturing](../assets/img/chapter4/diagram-class/diagram-class-b2.png)

#### 3. Bounded Context: Quality & Compliance
Encapsula el diseÃ±o normativo y regulatorio de las Buenas PrÃ¡cticas de Manufactura (BPM), permitiendo la trazabilidad inmutable y el control de calidad.
- **Clases Principales:** `QualityProtocol` (RaÃ­z de Agregado), `QuarantineRecord`, y `CapaInvestigation`.
- **Enumeraciones:** `ComplianceVerdict`, `CapaState`.
- **Detalle de Relaciones:** El protocolo de calidad controla los registros de cuarentena de los lotes y origina investigaciones de Acciones Correctivas y Preventivas (CAPA) en caso de desviaciones.

![ Diagrama de Clases Quality & Compliance](../assets/img/chapter4/diagram-class/diagram-class-b3.png)

#### 4. Bounded Context: Subscription & Billing (SaaS)
Modela la lÃ³gica comercial orientada al modelo SaaS de la plataforma B2B, gestionando planes de suscripciÃ³n, cuentas corporativas, facturaciÃ³n y pagos.
- **Clases Principales:** `SubscriptionPlan`, `TenantBillingAccount` (RaÃ­z de Agregado), `Invoice`, y `PaymentTransaction`.
- **Enumeraciones:** PlanTier, `PaymentStatus`.
- **Detalle de Relaciones:** La cuenta de facturaciÃ³n del Tenant se suscribe a un plan, genera facturas periÃ³dicas y procesa transacciones de pago mediante la pasarela externa.

![ Diagrama de Clases Subscription & Billing](../assets/img/chapter4/diagram-class/diagram-class-b4.png)

#### 5. Bounded Context: IoT Telemetry & Integration
DiseÃ±ado para el procesamiento de eventos de maquinaria en tiempo real, conectando los flujos de datos con las reglas de alerta de la planta.
- **Clases Principales:** `MachineEquipment`, `SensorTelemetryStream` (RaÃ­z de Agregado), y `AlertRuleEngine`.
- **Enumeraciones:** `SensorType`, `AlertLevel`.
- **Detalle de Relaciones:** Los flujos de telemetrÃ­a son emitidos por los equipos de maquinaria y evaluados continuamente por el motor de reglas de alertas.

![ Diagrama de Clases IoT Telemetry & Integration](../assets/img/chapter4/diagram-class/diagram-class-b5.png)

#### 6. Bounded Context: Plant Asset & Device
Modela la gestiÃ³n de dispositivos de hardware en planta, especÃ­ficamente el rastreo y control de lectores RFID y activos fÃ­sicos vinculados a las lÃ­neas de producciÃ³n.
- **Clases Principales:** `RfidReaderDevice` (RaÃ­z de Agregado) y `PlantAsset`.
- **Enumeraciones:** `DeviceStatus`.
- **Detalle de Relaciones:** El dispositivo lector RFID se encarga de rastrear un activo de planta especÃ­fico manteniendo un estado operativo actualizado.

![ Diagrama de Clases Plant Asset & Device](../assets/img/chapter4/diagram-class/diagram-class-b6.png)

## 4.8. Database Design

En esta secciÃ³n se presenta el diseÃ±o de la base de datos relacional orientada a soportar los diferentes Bounded Contexts identificados para la plataforma DoofPlus. El diseÃ±o garantiza la persistencia, integridad y trazabilidad de la informaciÃ³n crÃ­tica del negocio farmacÃ©utico y la telemetrÃ­a IoT.

Las principales caracterÃ­sticas consideradas para este diseÃ±o son:

- Aislamiento por Contexto (Desacoplamiento): Las tablas se han agrupado lÃ³gicamente segÃºn su Bounded Context. En una arquitectura de microservicios, cada contexto gestionarÃ­a su propio esquema fÃ­sico. Las referencias inter-contexto se manejan mediante identificadores Ãºnicos (UUIDs) en lugar de Foreign Keys estrictas a nivel de base de datos fÃ­sica, favoreciendo la escalabilidad.

- Integridad Referencial y Restricciones (Constraints): Dentro de cada contexto, se aplican Primary Keys (PK) y Foreign Keys (FK) para garantizar la consistencia de los datos. Se utilizan restricciones NOT NULL, UNIQUE y validaciones de estado para proteger las reglas de negocio (BPM).

- Trazabilidad y AuditorÃ­a (Auditability): Cumple con normativas como la FDA 21 CFR Part 11, entidades crÃ­ticas incluyen campos de control de concurrencia y marcas de tiempo exactas, soportadas por tablas de registro inmutable.

### 4.8.1. Database Diagrams
En esta secciÃ³n se presenta el diseÃ±o de la base de datos relacional de DoofPlus, organizado por bounded context. Cada contexto gestiona su propio conjunto de tablas, lo que nos garantiza la separaciÃ³n de responsabilidades y la alineaciÃ³n con la arquitectura DDD definida en los apartados anteriores. Para el diseÃ±o y modelado de estos diagramas se utilizarÃ¡ la herramienta de Lucichart. La base de datos estÃ¡ orientada a implementarse en MySQL y sus tablas principales incluyen campos de auditorÃ­a como created_at y updated_at, con el objetivo de mantener trazabilidad sobre la creaciÃ³n y actualizaciÃ³n de los registros.

Los diagramas de base de datos se organizan en los siguientes contextos:

- Base de datos completa: muestra la integraciÃ³n general de las tablas principales de todos los bounded contexts de DoofPlus.

- GestiÃ³n de organizaciones (B2B) Database: contiene las tablas relacionadas con el registro multi-tenant de laboratorios clientes, perfiles corporativos y la matriz de roles y permisos.

- Suscripciones y pagos (SaaS) Database: contiene planes de suscripciÃ³n, suscripciones activas, pagos procesados y transacciones de facturaciÃ³n.

- IAM Database: contiene credenciales de usuarios, autenticaciÃ³n de doble factor (2FA) y control de sesiones activas.

- FabricaciÃ³n y gestiÃ³n de lotes Database: contiene el catÃ¡logo de fÃ¡rmacos, registro de materias primas (RFID), Ã³rdenes de manufactura y uso de insumos en lotes de producciÃ³n.

- TelemetrÃ­a y monitorizaciÃ³n IoT Database: contiene el inventario de maquinaria, sensores IoT, registros de telemetrÃ­a y alertas ambientales/operativas.

- GestiÃ³n de calidad y cumplimiento Database: contiene protocolos documentales, investigaciones de desviaciones (CAPA), certificados de liberaciÃ³n y el historial de auditorÃ­a inmutable.

Diagrama de base de datos completo:
![Database diagram](../assets/img/chapter4/diagram-database.png)

Para ver a detalle haga click aquÃ­ (https://lucid.app/lucidchart/6102493d-2535-49c1-a3e5-bf2ab643abdc/edit?viewport_loc=-2209%2C-1329%2C5810%2C2503%2C0_0&invitationId=inv_5c9ee0d8-9bc3-4332-9822-98bf6cc97570)

