# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

- Use preset styles:
  - Classic: [Report](#report), [Letter](#letter), [Resume](#resume)
  - Academic: [IEEE](#ieee), [APA](#apa), [MLA](#mla)
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

### Report

![Preset style preview: Report.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_report.png)

Replace variable `$TITLE` to report's title.

```markdown
::: attributions
Urna Semper<br>Instructor’s Name<br>March 13, 2023
:::

::: title
Geology 101 Report
:::

::: subtitle
Sed et lacus quis enim mattis nonummy
:::

Lorem ipsum...
```

### Letter

![Preset style preview: Letter.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_letter.png)

```markdown
::: sender
Sender Name
:::

::: contact
1234 Main Street<br>Anytown, State ZIP<br>123-456-7890<br>no_reply@example.com
:::

29 April 2023

::: recipient
Recipient Name<br>4321 First Street<br>Anytown, State ZIP
:::

Lorem ipsum...
```

### Resume

![Preset style preview: Resume.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_resume.png)

```markdown
::: name
Your Name
:::

::: job
Job Title
:::

# Profile

Lorem ipsum...

::: contact
1234 Main Street Anytown, State ZIP&emsp;123-456-7890<br>no_reply@example.com&emsp;@social_media
:::
```

### [IEEE](https://www.ieee.org/conferences/publishing/templates.html)

![Preset style preview: IEEE.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_ieee.png)

IEEE style is an academic paper format with double column and serif font.

```markdown
::: title
Paper Title* (use style: paper title)
:::

::: authors
Given Name Surname<br>name of organization
:::

::: content
Lorem ipsum...
:::

::: references
1. Awesome article
2. ...
:::
```

### [APA](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![Preset style preview: APA.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_apa.png)

APA style is an academic paper format with sans serif font.

Replace variable `$TITLE` to article's title.

### [MLA](https://style.mla.org/mla-format/)

![Preset style preview: MLA.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/style_mla.png)

MLA style is an academic paper format with serif font.

Replace variable `$LAST_NAME` to author's last name.

## Custom styles

Only pick at maximum one in each category.

### Fonts

| Sans | Serif |
| --- | --- |
| ![Custom style preview: Sans font.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_font_sans.png) | ![Custom style preview: Serif font.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_font_serif.png) |

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
| ![Custom style preview: Normal text.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_text_normal.png) | ![Custom style preview: Small text.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_text_small.png) |

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
| ![Custom style preview: Normal indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_indent_normal.png) | ![Custom style preview: Small indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_indent_small.png) |

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
| ![Custom style preview: Half layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_half.png) | ![Custom style preview: Third layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_third.png) | ![Custom style preview: Quarter layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/styles_layout_quarter.png) |

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
  "markdown-pdf.headerTemplate": "<div style='font-size: 7pt; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 7pt; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 7pt; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
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
  "markdown-pdf.headerTemplate": "<div style='font-size: 7pt; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 7pt; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 7pt; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```
