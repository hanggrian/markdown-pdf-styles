# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

- Pick single style:
  - Application default: [*Microsoft Word*](#microsoft-word), [*Apple Pages*](#apple-pages)
  - Colorful: [Essay](#essay), [Business](#business)
  - Academic paper: [APA Style](#apa-style), [MLA Style](#mla-style)
- Or build your own:
  - Fonts: [Noto Sans](#noto-sans), [Noto Serif](#noto-sans)
  - Text sizes: [Normal Size](#normal-size), [Small Size](#small-size)
  - Layouts: [Half Columns](#half-columns), [One-third Columns](#one-third-columns),
    [Quarter Columns](#quarter-columns)
  - Others: [Article](#article)
- Headers & footers: [Webpage](#webpage), [Homework](#homework)

## Usage

Download the repository source code as ZIP and extract. To use the style, modify
VSCode user `settings.json` according to the style below.

There is also `install.sh` that modifies VSCode user settings based on user
input.

![macOS installation.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/install.png)

## Single styles

### *Microsoft Word*

![Microsoft Word style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_word.png)

Office uses clean `Calibri` font and lighter font for headlines.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/microsoft-word.css"]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

### *Apple Pages*

![Apple Pages style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_pages.png)

iWork uses wide `Helvetica` font and ridiculously large headlines.

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/apple-pages.css"]
"markdown-pdf.margin.top": "1in",
"markdown-pdf.margin.bottom": "1in",
"markdown-pdf.margin.right": "1in",
"markdown-pdf.margin.left": "1in"
```

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
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span>$LAST_NAME</span> <span class='pageNumber'></span> </div>",
"markdown-pdf.footerTemplate": "<div> </div>"
```

## Build styles

### Noto Sans

![Noto Sans style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_sans.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/font-sans.css"],
```

### Noto Serif

![Noto Serif style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_serif.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/font-serif.css"],
```

### Normal Size

![Normal size style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_normal.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/text-normal.css"],
```

### Small Size

![Small size style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_small.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/text-small.css"],
```

### Half Columns

![Half columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_half.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/layout-half.css"],
```

### One-third Columns

![One-third columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_onethird.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/layout-onethird.css"],
```

### Quarter Columns

![Quarter columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_quarter.png)

```json
"markdown-pdf.styles": [".../markdown-pdf-styles/styles/layout-quarter.css"],
```

## Headers & footers

### Webpage

![Webpage header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_webpage.png)
![Webpage footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_webpage.png)

Replace variable `$URL` to webpage link, `$TITLE` with document title.

```json
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>",
"markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
```

### Homework

![Homework header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_homework.png)
![Homework footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_homework.png)

Replace variable `$SUBJECT` to student credential, `$IMAGE_BASE64` to school
logo (10px height), `$TITLE` to document title.

```json
"markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
"markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
```
