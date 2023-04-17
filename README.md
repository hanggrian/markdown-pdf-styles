# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

- Use preset styles:
  - Application default: [*Microsoft Word*](#microsoft-word), [*Apple Pages*](#apple-pages)
  - Colorful: [Essay](#essay), [Business](#business)
  - Academic paper: [APA style](#apa-style), [MLA style](#mla-style)
- Or customize using barebone styles:
  - [Fonts](#fonts)
  - [Texts](#texts)
  - [Indents](#indents)
  - [Layouts](#layouts)
  - [Others](#others)
- Optional headers & footers:
  - [Webpage](#webpage)
  - [Homework](#homework)

## Usage

To use the style, modify VSCode user `settings.json` according to the style
below. A root project directory may also have `.vscode/settings.json` for
project-wide preferences, which will override global settings.

## Preset styles

### *Microsoft Word*

![Preset style preview: Microsoft Word.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_word.png)

Office uses clean `Calibri` font and lighter font for headlines.

### *Apple Pages*

![Preset style preview: Apple Pages.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_pages.png)

iWork uses wide `Helvetica` font and ridiculously large headlines.

### Essay

![Preset style preview: Essay.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_essay.png)

Inspired by an official style in *Apple Pages* with the same name.

### Business

![Preset style preview: Business.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_business.png)

Inspired by an official style in *Microsoft Word* with the same name.

### [APA style](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![Preset style preview: APA style.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_apa.png)

APA is an academic paper format with sans serif font.

Replace variable `$TITLE` to article's title.

### [MLA style](https://style.mla.org/mla-format/)

![Preset style preview: MLA style.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_mla.png)

APA is an academic paper format with serif font.

Replace variable `$LAST_NAME` to author's last name.

## Barebone styles

Only pick one in each category.

### Fonts

| Sans | Serif |
| --- | --- |
| ![Barebone style preview: Sans font.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_font_sans.png) | ![Barebone style preview: Serif font.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_font_serif.png) |

Font-only stylesheets with *Noto Sans/Serif* and *JetBrains Mono*.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/font-sans.css",
    ".../markdown-pdf-styles/styles/font-serif.css",
  ],
}
```

### Texts

| Normal | Small |
| --- | --- |
| ![Barebone style preview: Normal text.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_text_normal.png) | ![Barebone style preview: Small text.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_text_small.png) |

Text-only stylesheets with normal/small font size.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/text-normal.css",
    ".../markdown-pdf-styles/styles/text-small.css",
  ],
}
```

### Indents

| Normal | Small |
| --- | --- |
| ![Barebone style preview: Normal indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_indent_normal.png) | ![Barebone style preview: Small indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_indent_small.png) |

Paragraph are indented by small/normal margin and justified.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/indent-normal.css",
    ".../markdown-pdf-styles/styles/indent-small.css",
  ],
}
```

### Layouts

| Half | Third | Quarter |
| --- | --- | --- |
| ![Barebone style preview: Half layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_half.png) | ![Barebone style preview: Third layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_third.png) | ![Barebone style preview: Quarter layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_quarter.png) |

Layout-only stylesheet with 2, 3, or 4 side-by-side panes.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/layout-half.css",
    ".../markdown-pdf-styles/styles/layout-third.css",
    ".../markdown-pdf-styles/styles/layout-quarter.css",
  ],
}
```

### Others

#### Reference

At the moment, manually adding `sup` or `sub` affect line height. This CSS file
is a hotfix to that behavior.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/reference.css",
  ],
}
```

## Headers & footers

Template for header and footer needs to be embedded in the settings.

### Webpage

| Header | Footer |
| --- | --- |
| ![Webpage header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_webpage.png) | ![Webpage footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_webpage.png) |

Replace variable `$URL` to webpage link, `$TITLE` with document title.

```json
{
  "markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```

### Homework

| Header | Footer |
| --- | --- |
| ![Homework header preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/header_homework.png) | ![Homework footer preview.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/footer_homework.png) |

Replace variable `$SUBJECT` to student credential, `$IMAGE_BASE64` to school
logo (10px height), `$TITLE` to document title.

```json
{
  "markdown-pdf.headerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```
