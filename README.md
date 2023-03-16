# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

- Styles
  - Colorful: [Essay](#essay), [Business](#business)
  - Application default: [*Adobe Acrobat*](#adobe-acrobat), [*Microsoft Word*](#microsoft-word),
    [*Apple Pages*](#apple-pages)
  - Academic paper: [APA Style](#apa-style), [MLA Style](#mla-style)
- Headers & Footers: [Webpage](#webpage), [Homework](#homework)

## Usage

Download the repository source code as ZIP and extract. To use the style, modify VSCode user `settings.json` according to the style below.

There is also `install.sh` that modifies VSCode user settings based on user
input.

![macOS installation.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/install.png)

## Styles

### Essay

![Essay style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_essay.png)

Inspired by an official style in *Apple Pages* with the same name.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/essay.css"],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### Business

![Business style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_business.png)

Inspired by an official style in *Microsoft Word* with the same name.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/business.css"],
"markdown-pdf.margin.top": "1.32in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "0.7in",
"markdown-pdf.margin.left": "0.7in"
```

### *Adobe Acrobat*

![Acrobat style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_acrobat.png)

Acrobat uses proprietary `Minion Pro` font, resulting in newspaper-like looks.

```json
"markdown-pdf.styles": [
  ".../markdown-pdf-styles/adobe-acrobat.css"
]
```

### *Microsoft Word*

![Word style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_word.png)

Office uses clean `Calibri` font and lighter font for headlines.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/microsoft-word.css"]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### *Apple Pages*

![Pages style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_pages.png)

iWork uses wide `Helvetica` font and ridiculously large headlines.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/apple-pages.css"]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### [APA Style](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![APA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_apa.png)

APA is an academic paper format with sans serif font.

> Replace variable `$TITLE` to article's title.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/apa-style.css"],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in",
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span style='text-transform: uppercase;'>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> </div>",
"markdown-pdf.footerTemplate": "<div> </div>"
```

### [MLA Style](https://style.mla.org/mla-format/)

![MLA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_mla.png)

APA is an academic paper format with serif font.

> Replace variable `$LAST_NAME` to author's last name.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/mla-style.css"],
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in",
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span>$LAST_NAME</span><span class='pageNumber'></span> </div>",
"markdown-pdf.footerTemplate": "<div> </div>"
```

## Headers & Footers

### Webpage

![Webpage header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_webpage.png)
![Webpage footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_webpage.png)

A clean header and footer consisting only URL, title and page number.

> Replace variable `$URL` to webpage link, `$TITLE` with document title.

```json
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>",
"markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
```

### Homework

![Homework header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_homework.png)
![Homework footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_homework.png)

Packed header & footer detailing student credential, class subject, school logo
and page number.

> Replace variable `$SUBJECT` to student credential, `$IMAGE_BASE64` to school
  logo (10px height), `$TITLE` to document title.

```json
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
"markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
```
