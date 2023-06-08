# Markdown PDF Styles

![VSCode Markdown PDF logo.](https://github.com/yzane/vscode-markdown-pdf/raw/master/images/icon.png)

Stylesheets for [VSCode Markdown PDF](https://github.com/yzane/vscode-markdown-pdf/).

- Use preset styles:
  - Classic: [Report](#report), [Letter](#letter), [Resume](#resume)
  - Academic: [IEEE](#ieee), [APA](#apa), [MLA](#mla)
  - Others: [Cheatsheet](#cheatsheet)
- Or customize using barebone styles:
  - [Font](#font)
  - [Text](#text)
  - [Indent](#indent)
  - [Spacing](#spacing)
  - [Column](#column)
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

![Preset style preview: Classic report.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_classic_report.png)

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

![Preset style preview: Classic letter.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_classic_letter.png)

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

![Preset style preview: Classic resume.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_classic_resume.png)

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

![Preset style preview: Academic IEEE.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_academic_ieee.png)

IEEE style is an academic paper format with double column and serif font.

```markdown
::: title
Paper Title* (use style: *paper title*)
:::

::: authors
Given Name Surname<br>*dept. name of organization (of Affiliation)*<br>City, Country<br>email address or ORCID
:::

::: content
Lorem Ipsum...

::: references
1. Awesome article
2. ...
:::
```

### [APA](https://apastyle.apa.org/style-grammar-guidelines/paper-format/)

![Preset style preview: Academic APA.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_academic_apa.png)

APA style is an academic paper format with sans serif font.

Replace variable `$TITLE` to article's title.

### [MLA](https://style.mla.org/mla-format/)

![Preset style preview: Academic MLA.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_academic_mla.png)

MLA style is an academic paper format with serif font.

Replace variable `$LAST_NAME` to author's last name.

### Cheatsheet

![Preset style preview: Cheatsheet.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/preset_others_cheatsheet.png)

Keep as many content as possible with mini everything.

## Custom styles

Only pick at maximum one in each category.

### Font

| Sans | Serif |
| --- | --- |
| ![Custom style preview: Sans font family.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_font_sans.png) | ![Custom style preview: Serif font family.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_font_serif.png) |

Font family stylesheets with *Noto Sans/Serif* and *JetBrains Mono*, the default
is system fonts.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/font-sans.css",
    ".../markdown-pdf-styles/styles/font-serif.css",
  ],
}
```

### Text

| Small | Normal |
| --- | --- |
| ![Custom style preview: Small text size.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_text_small.png) | ![Custom style preview: Normal text size.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_text_normal.png) |

Text and code size stylesheets, the default is around 12pt.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/text-small.css",
    ".../markdown-pdf-styles/styles/text-normal.css",
  ],
}
```

### Indent

| Quarter | Half |
| --- | --- |
| ![Custom style preview: Quarter-inch indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_indent_quarter.png) | ![Custom style preview: Half-inch indent.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_indent_half.png) |

Paragrah indentation and justification stylesheets, there is no indent by
default.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/indent-quarter.css",
    ".../markdown-pdf-styles/styles/indent-half.css",
  ],
}
```

### Spacing

| Single | Double |
| --- | --- |
| ![Custom style preview: Single-height spacing.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_spacing_single.png) | ![Custom style preview: Double-height spacing.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_spacing_double.png) |

Line height stylesheets, the default is around one-half inch.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/spacing-single.css",
    ".../markdown-pdf-styles/styles/spacing-double.css",
  ],
}
```

### Column

| Two | Three | Four |
| --- | --- | --- |
| ![Custom style preview: Two-column layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_column_two.png) | ![Custom style preview: Three-column layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_column_three.png) | ![Custom style preview: Four-column layout.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/custom_column_four.png) |

Column splitting stylesheets, the default is full column.

```json
{
  "markdown-pdf.styles": [
    ".../markdown-pdf-styles/styles/column-two.css",
    ".../markdown-pdf-styles/styles/column-three.css",
    ".../markdown-pdf-styles/styles/column-four.css",
  ],
}
```

### Others

#### Reference

A hotfix to prevent `sup` and `sub` for affecting line height.

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
| ![Headers style preview: Webpage header.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/headers_webpage_header.png) | ![Headers style preview: Webpage footer.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/headers_webpage_footer.png) |

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
| ![Headers style preview: Homework header.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/headers_homework_header.png) | ![Headers style preview: Homework footer.](https://github.com/hendraanggrian/markdown-pdf-styles/raw/assets/headers_homework_footer.png) |

Replace variable `$SUBJECT` to student credential, `$IMAGE_BASE64` to school
logo (10px height), `$TITLE` to document title.

```json
{
  "markdown-pdf.headerTemplate": "<div style='font-size: 7pt; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='$IMAGE_BASE64'> </div>",
  "markdown-pdf.footerTemplate": "<div style='font-size: 7pt; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 7pt; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>",
}
```
