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
  - Others: [Citation](#citation), [Paragraph](#paragraph)
- Headers & footers: [Webpage](#webpage), [Homework](#homework)

## Usage

To use the style, modify VSCode user `settings.json` according to the style
below. A root project directory may also have `.vscode/settings.json` for
project-wide preferences, which will override global settings.

## Single styles

### *Microsoft Word*

![Microsoft Word style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_word.png)

Office uses clean `Calibri` font and lighter font for headlines.

### *Apple Pages*

![Apple Pages style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_pages.png)

iWork uses wide `Helvetica` font and ridiculously large headlines.

### Essay

![Essay style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_essay.png)

Inspired by an official style in *Apple Pages* with the same name.

### Business

![Business style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_business.png)

Inspired by an official style in *Microsoft Word* with the same name.

### [APA Style](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![APA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_apa.png)

APA is an academic paper format with sans serif font.

Replace variable `$TITLE` to article's title.

### [MLA Style](https://style.mla.org/mla-format/)

![MLA style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_mla.png)

APA is an academic paper format with serif font.

Replace variable `$LAST_NAME` to author's last name.

## Build styles

### Noto Sans

![Noto Sans style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_sans.png)

Font-only stylesheet with Noto Sans and JetBrains Mono.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/font-sans.css",
  ],
}
```

### Noto Serif

![Noto Serif style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_serif.png)

Font-only stylesheet with Noto Sans and JetBrains Mono.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/font-serif.css",
  ],
}
```

### Normal Size

![Normal size style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_normal.png)

Text-only stylesheet with normal font sizes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/text-normal.css",
  ],
}
```

### Small Size

![Small size style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_small.png)

Text-only stylesheet with small font sizes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/text-small.css",
  ],
}
```

### Half Columns

![Half columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_half.png)

Layout-only stylesheet with 2 side-by-side panes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/layout-half.css",
  ],
}
```

### One-third Columns

![One-third columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_onethird.png)

Layout-only stylesheet with 3 side-by-side panes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/layout-onethird.css",
  ],
}
```

### Quarter Columns

![Quarter columns style preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_quarter.png)

Layout-only stylesheet with 4 side-by-side panes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/layout-quarter.css",
  ],
}
```

### Citation

Superscript and subscript won't affect line height.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/citation.css",
  ],
}
```

### Paragraph

Paragraph are indented and justified.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/paragraph.css",
  ],
}
```

## Headers & footers

### Webpage

![Webpage header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_webpage.png)
![Webpage footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_webpage.png)

Replace variable `$URL` to webpage link, `$TITLE` with document title.

```json
{
  "markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```

### Homework

![Homework header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_homework.png)
![Homework footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_homework.png)

Replace variable `$SUBJECT` to student credential, `$IMAGE_BASE64` to school
logo (10px height), `$TITLE` to document title.

```json
{
  "markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```
