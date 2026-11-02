workspace "DoofPlus" "C4 model of DoofPlus (IngesCompanyCC). Structurizr DSL source of the diagrams in section 4.6." {

    model {
        properties {
            "structurizr.groupSeparator" "/"
        }

        visitor = person "Laboratory Visitor" "Evaluates DoofPlus from the Landing Page and reviews its plans before registering the laboratory."
        qa = person "QA/QC Specialist" "Manages documents, raw material approvals, deviations, CAPA, audits and batch release."
        prod = person "Pharmaceutical Production Supervisor" "Manages orders and batches, monitors equipment and requests approvals from Quality."
        admin = person "Laboratory Administrator" "Registers the organization, users, roles, sensors and the subscription."
        tb = softwareSystem "ThingsBoard" "IoT platform that receives the plant sensor readings and forwards them." "External"
        niubiz = softwareSystem "Niubiz" "Payment gateway that charges the subscriptions." "External"
        mail = softwareSystem "SendGrid" "Email service for invitations, alerts and notifications." "External"
        ga = softwareSystem "Authenticator App (TOTP)" "User's mobile app (e.g., Google Authenticator) that generates the 2FA codes." "External"
        rfid = softwareSystem "RFID Reader" "Warehouse RFID tag reader; types the code it reads into the Single-Page Application as keyboard input (USB HID), without an API of its own." "External"

        doofplus = softwareSystem "DoofPlus" "SaaS platform for quality management and batch traceability in pharmaceutical laboratories." {
            landing = container "Landing Page" "Static website with the value proposition, plans, team and the call to action to the Web Application; en-US/es-419." "HTML5, CSS3, JavaScript (GitHub Pages)" "Directory"
            webapp = container "Web Application" "Delivers the static content and the DoofPlus single-page application (index.html and JavaScript bundles) to the user's web browser." "Firebase Hosting" "Directory"
            spa = container "Single-Page Application" "Runs in the user's web browser and provides all the DoofPlus features, one module per bounded context." "Vue 3, Vite, PrimeVue, Pinia, JavaScript" "Web Browser" {
                spa_shared = component "Shared" "Workspace shell (layout, toolbar, sidebar, footer and language switcher), routes per environment and the base REST client reused by every bounded context." "Vue module"
                spa_iam = component "Identity & Access Management" "Environment selection, sign-in with 2FA, session, users, invitations and route protection by role." "Vue module"
                spa_org = component "Organizations & Profiles" "Organization registration, facilities, administration overview, contact inquiries and profile preferences." "Vue module"
                spa_sub = component "Subscriptions & Payments" "Plans, payment method, current subscription and invoice history." "Vue module"
                spa_mfg = component "Manufacturing & Batch Management" "Production overview, orders, products and formulas, batches and raw material receipt." "Vue module"
                spa_iot = component "IoT Monitoring" "IoT overview, equipment and sensors, readings, alerts and batch IoT evidence." "Vue module"
                spa_qa = component "Quality & Compliance" "Documents, deviations, CAPA, batch release, analytical results, audits, audit trail and regulatory reports." "Vue module"
            }

            api = container "RESTful API" "Modular monolith with the six bounded contexts; ASP.NET Core Identity (JWT + TOTP), OpenAPI (Swashbuckle) and real-time notifications (SignalR)." "ASP.NET Core, C#, Entity Framework Core (Render)" "Server-side Application" {
                api_shared = component "Shared" "Base auditable aggregate, snake_case naming convention for Entity Framework Core, Result type and common configuration reused by every bounded context." "ASP.NET Core namespace"
                api_iam = component "Identity & Access Management" "Sign-up, sign-in with JWT and TOTP, users, roles, account locking and electronic signatures." "ASP.NET Core namespace"
                api_org = component "Organizations & Profiles" "Organizations (unique RUC), facilities, profiles and contact inquiries." "ASP.NET Core namespace"
                api_sub = component "Subscriptions & Payments" "Plans, subscriptions, payments, renewals and cancellations." "ASP.NET Core namespace"
                api_mfg = component "Manufacturing & Batch Management" "Products, master formulas, raw material lots, production orders, batches and incidents." "ASP.NET Core namespace"
                api_iot = component "IoT Monitoring" "Equipment, calibrations, IoT devices, telemetry readings and alerts." "ASP.NET Core namespace"
                api_qa = component "Quality & Compliance" "Quality documents, raw material approval, batch review and release, deviations, CAPA, audits, audit trail and regulatory reports." "ASP.NET Core namespace"
            }
            db = container "Database" "Tables grouped by bounded context." "MySQL 8 (Railway)" "Database"
        }

        # System context
        visitor -> doofplus "Learns about the value proposition and plans, and registers the laboratory" "HTTPS"
        qa -> doofplus "Manages quality and compliance" "HTTPS"
        prod -> doofplus "Manages production and monitors the plant" "HTTPS"
        admin -> doofplus "Manages the organization, users and subscription" "HTTPS"
        tb -> doofplus "Sends sensor telemetry" "Webhook REST/HTTPS, JSON"
        doofplus -> niubiz "Authorizes subscription charges" "REST/HTTPS, JSON"
        doofplus -> mail "Sends emails" "REST/HTTPS, JSON"
        ga -> qa "Shows the TOTP code (no API integration)" "" "Optional"
        ga -> prod "Shows the TOTP code (no API integration)" "" "Optional"
        ga -> admin "Shows the TOTP code (no API integration)" "" "Optional"
        prod -> rfid "Scans the RFID tag of each received raw material lot using"

        # Containers
        visitor -> landing "Visits" "HTTPS"
        landing -> webapp "Links to the sign-in of each environment and to the registration" "HTTPS"
        qa -> webapp "Visits the DoofPlus web address" "HTTPS"
        prod -> webapp "Visits the DoofPlus web address" "HTTPS"
        admin -> webapp "Visits the DoofPlus web address" "HTTPS"
        webapp -> spa "Delivers to the user's web browser"
        qa -> spa "Uses"
        prod -> spa "Uses"
        admin -> spa "Uses"
        spa -> api "Makes API calls to and receives real-time alerts from" "JSON/HTTPS with Bearer JWT, WebSocket (SignalR)"
        api -> db "Reads from and writes to" "Entity Framework Core (MySQL provider)"
        tb -> api "Sends telemetry" "Webhook JSON/HTTPS"
        api -> niubiz "Authorizes charges" "REST JSON/HTTPS"
        api -> mail "Sends emails" "REST JSON/HTTPS"
        rfid -> spa "Types the raw material tag code" "USB HID (keyboard emulation)"

        # Single-Page Application components
        qa -> spa_shared "Uses"
        prod -> spa_shared "Uses"
        admin -> spa_shared "Uses"
        spa_shared -> spa_iam "Loads"
        spa_shared -> spa_org "Loads"
        spa_shared -> spa_sub "Loads"
        spa_shared -> spa_mfg "Loads"
        spa_shared -> spa_iot "Loads"
        spa_shared -> spa_qa "Loads"
        spa_iam -> api "Makes API calls to" "JSON/HTTPS"
        spa_org -> api "Makes API calls to" "JSON/HTTPS"
        spa_sub -> api "Makes API calls to" "JSON/HTTPS"
        spa_mfg -> api "Makes API calls to" "JSON/HTTPS"
        spa_iot -> api "Makes API calls to" "JSON/HTTPS"
        spa_qa -> api "Makes API calls to" "JSON/HTTPS"
        rfid -> spa_mfg "Types the raw material tag code" "USB HID (keyboard emulation)"

        # RESTful API components
        spa -> api_iam "Makes API calls to" "JSON/HTTPS"
        spa -> api_org "Makes API calls to" "JSON/HTTPS"
        spa -> api_sub "Makes API calls to" "JSON/HTTPS"
        spa -> api_mfg "Makes API calls to" "JSON/HTTPS"
        spa -> api_iot "Makes API calls to and receives alerts from" "JSON/HTTPS, WebSocket (SignalR)"
        spa -> api_qa "Makes API calls to" "JSON/HTTPS"
        tb -> api_iot "Sends telemetry" "Webhook JSON/HTTPS"
        api_org -> api_iam "Creates the administrator through" "IamContextFacade"
        api_qa -> api_iam "Requests electronic signatures from" "IamContextFacade"
        api_mfg -> api_qa "Requests material approval and batch quarantine from" "QualityContextFacade"
        api_qa -> api_mfg "Publishes release and approval verdicts to" "Domain events"
        api_mfg -> api_iot "Assigns sensors to batches through" "IotMonitoringContextFacade"
        api_iot -> api_mfg "Checks the batch in progress through" "ManufacturingContextFacade"
        api_iot -> api_sub "Checks the plan device limit through" "SubscriptionsContextFacade"
        api_iam -> mail "Sends invitations through" "REST/HTTPS"
        api_org -> mail "Notifies contact inquiries through" "REST/HTTPS"
        api_iot -> mail "Sends alerts through" "REST/HTTPS"
        api_sub -> niubiz "Authorizes charges with" "REST/HTTPS"
        api_iam -> db "Persists data in" "Entity Framework Core"
        api_org -> db "Persists data in" "Entity Framework Core"
        api_sub -> db "Persists data in" "Entity Framework Core"
        api_mfg -> db "Persists data in" "Entity Framework Core"
        api_iot -> db "Persists data in" "Entity Framework Core"
        api_qa -> db "Persists data in" "Entity Framework Core"

    }

    views {
        systemContext doofplus "C4-01-Context" {
            title "[System Context] DoofPlus"
            include *
            include ga
        }
        container doofplus "C4-02-Containers" {
            title "[Container] DoofPlus"
            include *
        }
        component spa "C4-03-SPA" {
            title "[Component] DoofPlus - Single-Page Application"
            include *
        }
        component api "C4-04-API" {
            title "[Component] DoofPlus - RESTful API"
            include *
        }

        styles {
            element "Element" {
                color #ffffff
            }
            element "Person" {
                background #08427B
                shape Person
            }
            element "Software System" {
                background #1168BD
            }
            element "External" {
                background #8C8C8C
            }
            element "Container" {
                background #438DD5
            }
            element "Web Browser" {
                shape WebBrowser
            }
            element "Database" {
                shape Cylinder
            }
            element "Directory" {
                shape Folder
            }
            element "Server-side Application" {
                shape Shell
                stroke #FFFFFF
            }
            element "Component" {
                background #85BBF0
                color #0B2545
                width 520
                height 330
            }
            element "Group" {
                color #444444
            }
            relationship "Relationship" {
                dashed false
                color #555555
            }
            relationship "Optional" {
                dashed true
            }
        }
    }
}
