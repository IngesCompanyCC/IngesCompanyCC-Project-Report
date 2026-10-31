# Exportación del informe a PDF

El informe se convierte de Markdown a PDF con **Pandoc**. Pandoc lee los archivos como GitHub-flavored Markdown (igual que GitHub y WebStorm) y genera el PDF con el motor **WeasyPrint**, de modo que las tablas, imágenes y bloques HTML se ven como en la vista previa.

## Requisitos

**macOS**

```bash
brew install pandoc weasyprint
```

**Windows**

```bash
winget install --id JohnMacFarlane.Pandoc -e
```

WeasyPrint se descarga desde sus [releases oficiales](https://github.com/Kozea/WeasyPrint/releases) (`weasyprint-windows-onefile.zip`). La carpeta que contiene `weasyprint.exe` debe agregarse al `PATH`.

### Fuente Aptos (carátula)

La carátula replica la plantilla del curso, que usa la fuente **Aptos** (Regular y Bold). Aptos debe estar **instalada en el sistema**. Si solo está disponible dentro de Microsoft Office como fuente en la nube, WeasyPrint no la encuentra y la carátula se genera con la fuente de respaldo (Segoe UI o Helvetica): conserva la posición de cada línea, pero no es idéntica a la plantilla.

- **Descarga oficial:** Microsoft distribuye Aptos de forma gratuita. Descarga el paquete, abre los archivos `.ttf` y selecciona *Instalar*. En macOS, abre los archivos con *Catálogo Tipográfico* (Font Book) y selecciona *Instalar*.
- **Windows con Microsoft 365:** si Word ya usó Aptos, sus archivos están en `%LOCALAPPDATA%\Microsoft\FontCache\4\CloudFonts\Aptos`. Abre cada `.ttf` y selecciona *Instalar*.

Para comprobarlo, exporta el PDF y revisa en sus propiedades (*Fuentes*) que aparezcan `Aptos` y `Aptos-Bold`.

## Exportar

En WebStorm, selecciona la configuración **Export PDF** (junto al botón ▶) y ejecútala. También puedes ejecutar este comando desde la raíz del repositorio:

```bash
pandoc --defaults=pandoc/report.yaml
```

El PDF se genera en `build/upc-pre-202620-1asi0730-8130-IngesCompanyCC-report.pdf`. Antes de entregarlo, renómbralo con el sufijo de la entrega (por ejemplo, `-tb1.pdf`).

## Archivos

| Archivo | Propósito |
|---------|-----------|
| `report.yaml` | Defaults file de Pandoc: orden de los archivos, motor PDF y estilos. |
| `report.css` | Diseño del PDF: tamaño A4, encabezado, pie con número de página, carátula con las posiciones de la plantilla del curso, tablas y tabla de contenido. |
| `report.lua` | Filtro que arma la carátula a partir del README, omite la lista "Contenido" del README e inserta la tabla de contenido con números de página. |
| `../.run/Export PDF.run.xml` | Botón **Export PDF** de WebStorm. |

Al agregar un capítulo nuevo, inclúyelo en `input-files` de `report.yaml`.
