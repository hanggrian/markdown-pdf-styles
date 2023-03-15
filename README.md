# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

| Style | Default Margin | Default Header & Footer |
| --- | :---: | :---: |
| **Colorful** |
| [Essay](#essay) | &cross; | &cross; |
| [Business](#business) | &cross; | &cross; |
| **Application Default** |
| [*Adobe Acrobat*](#adobe-acrobat) | &check; | &check; |
| [*Microsoft Word*](#microsoft-word) | &cross; | &check; |
| [*Apple Pages*](#apple-pages) | &cross; | &check; |
| **Academic Paper** |
| [APA Style](#apa-style) | &cross; | &cross; |
| [MLA Style](#mla-style) | &cross; | &cross; |

## Usage

Download the source code as zip, extract, and use one of the styles.

## Styles

### Essay

![Essay style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/essay.png)

Inspired by an official style in *Apple Pages* with the same name.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/essay.css"
],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in",
"markdown-pdf.headerTemplate": "<div> </div>",
"markdown-pdf.footerTemplate": "<div style=\"font-size: 9px; margin-left: 1cm;\"> <span style=\"text-transform: uppercase;\">$RUNNING_HEAD</span></div> <div style=\"font-size: 9px; margin-left: auto; margin-right: 1cm; \"> <span class='pageNumber'></span></div>"
```

### Business

![Business style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/business.png)

Inspired by an official style in *Microsoft Word* with the same name.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/business.css"
],
"markdown-pdf.margin.top": "1.32in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "0.7in",
"markdown-pdf.margin.left": "0.7in",
"markdown-pdf.headerTemplate": "<div> </div>",
"markdown-pdf.footerTemplate": "<div style=\"font-size: 9px; margin-left: 1cm;\"> <span style=\"text-transform: uppercase;\">$RUNNING_HEAD</span></div> <div style=\"font-size: 9px; margin-left: auto; margin-right: 1cm; \"> <span class='pageNumber'></span></div>"
```

### *Adobe Acrobat*

![Acrobat style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/adobe_acrobat.png)

Acrobat uses proprietary `Minion Pro` font, resulting in newspaper-like looks.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/adobe-acrobat.css"
]
```

### *Microsoft Word*

![Word style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/microsoft_word.png)

Office uses clean `Calibri` font and lighter font for headlines.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/microsoft-word.css"
]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### *Apple Pages*

![Pages style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/apple_pages.png)

iWork uses wide `Helvetica` font and ridiculously large headlines.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/apple-pages.css"
]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### [APA Style](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![APA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/apa_style.png)

APA is an academic paper format with sans serif font.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/apa-style.css"
],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in",
"markdown-pdf.headerTemplate": "<div style=\"font-size: 9px; margin-left: 1cm;\"> <span style=\"text-transform: uppercase;\">$RUNNING_HEAD</span></div> <div style=\"font-size: 9px; margin-left: auto; margin-right: 1cm; \"> <span class='pageNumber'></span></div>",
"markdown-pdf.footerTemplate": "<div> </div>"
```

### [MLA Style](https://style.mla.org/mla-format/)

![MLA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/mla_style.png)

APA is an academic paper format with serif font.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/mla-style.css"
],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in",
"markdown-pdf.headerTemplate": "<div style=\"font-size: 9px; margin-left: auto; margin-right: 1cm; \"> <span>$LAST_NAME</span> <span class='pageNumber'></span></div>",
"markdown-pdf.footerTemplate": "<div> </div>"
```
