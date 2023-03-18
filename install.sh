#!/bin/bash
# Executable to modify VSCode user settings.json.

readonly END=[0m
readonly BOLD=[1m
readonly UNDERLINE=[4m
readonly RED=[91m
readonly GREEN=[92m
readonly YELLOW=[93m

readonly HEADERS_EMPTY="<div> </div>"
readonly SOURCE_ROOT="$(cd "$(dirname "$0")" && pwd)"
readonly SETTINGS_JSON="$HOME/Library/Application Support/Code/User/settings.json"

if ! command -v jq &> /dev/null; then die "jq not installed."; fi
if ! command -v sponge &> /dev/null; then die "sponge not installed."; fi
if [[ ! -f "$SETTINGS_JSON" ]]; then die "No VSCode settings found."; fi

warn() { echo "$YELLOW$*$END"; } >&2
die() { echo; echo "$RED$*$END"; echo; exit 1; } >&2

write() {
  local key="$1"
  local value="$2"

  if [[ "$value" = "\"\"" ]]; then
    echo "${RED}remove $key$END"
    jq "del(.\"markdown-pdf\".$key)" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
  else
    echo "${GREEN}set $key = $value$END"
    jq ".\"markdown-pdf\".$key = $value" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
  fi
}

patch() {
  local style="$1"
  local margin_top="$2"
  local margin_bottom="$3"
  local margin_right="$4"
  local margin_left="$5"
  local header="$6"
  local footer="$7"

  echo
  write "\"styles\"" "[\"$style\"]"

  write "\"margin\".\"top\"" "\"$margin_top\""
  write "\"margin\".\"bottom\"" "\"$margin_bottom\""
  write "\"margin\".\"right\"" "\"$margin_right\""
  write "\"margin\".\"left\"" "\"$margin_left\""
  if [[ "$margin_top" = "\"\"" ]] && [[ "$margin_bottom" = "\"\"" ]] && [[ "$margin_right" = "\"\"" ]] && [[ "$margin_left" = "\"\"" ]]; then
    jq "del(.\"markdown-pdf\".\"margin\")" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
  fi

  write "\"headerTemplate\"" "\"$header\""
  write "\"footerTemplate\"" "\"$footer\""
}

echo
echo "$BOLD${UNDERLINE}Markdown PDF Styles$END"
echo
echo "1. Google - Noto Sans"
echo "2. Google - Noto Serif"
echo "3. Application - Microsoft Word"
echo "4. Application - Apple Pages"
echo "5. Colorful - Essay"
echo "6. Colorful - Business"
echo "7. Academic - APA Style"
echo "8. Academic - MLA Style"
echo
echo "D. Default"
echo "R. Reset"
echo
echo "Q. Quit"
echo
warn "Pick the style:"
read input_style

case "$input_style" in
  1 | 2 | 3 | 4 | 5 | 6 | d | D)
    echo
    echo "1. Webpage"
    echo "2. Homework"
    echo
    echo "D. Default"
    echo "E. Empty"
    echo
    warn "Pick the header & footer:"
    read input_headers

    if [[ "$input_style" == 1 ]]; then
      style="$SOURCE_ROOT/noto-sans.css"
    elif [[ "$input_style" == 2 ]]; then
      style="$SOURCE_ROOT/noto-serif.css"
    elif [[ "$input_style" == 3 ]]; then
      style="$SOURCE_ROOT/microsoft-word.css"
      margin_top="1in"
      margin_bottom="1in"
      margin_right="1in"
      margin_left="1in"
    elif [[ "$input_style" == 4 ]]; then
      style="$SOURCE_ROOT/apple-pages.css"
      margin_top="1in"
      margin_bottom="1in"
      margin_right="1in"
      margin_left="1in"
    elif [[ "$input_style" == 5 ]]; then
      style="$SOURCE_ROOT/essay.css"
      margin_top="1in"
      margin_bottom="1in"
      margin_right="1in"
      margin_left="1in"
    elif [[ "$input_style" == 6 ]]; then
      style="$SOURCE_ROOT/business.css"
      margin_top="1.32in"
      margin_bottom="1in"
      margin_right="0.7in"
      margin_left="0.7in"
    fi

    case "$input_headers" in
      1)
        echo
        warn "Enter url:"
        read URL
        echo
        warn "Enter title:"
        read TITLE
        patch "$style" "$margin_top" "$margin_bottom" "$margin_right" "$margin_left" "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
        ;;
      2)
        echo
        warn "Enter subject:"
        read SUBJECT
        echo
        warn "\$IMAGE_BASE64 need to be set manually later."
        echo
        warn "Enter title:"
        read TITLE
        patch "$style" "$margin_top" "$margin_bottom" "$margin_right" "$margin_left" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='\$IMAGE_BASE64'> </div>" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
        ;;
      d | D) patch "$style" "$margin_top" "$margin_bottom" "$margin_right" "$margin_left";;
      e | E) patch "$style" "$margin_top" "$margin_bottom" "$margin_right" "$margin_left" "$HEADERS_EMPTY" "$HEADERS_EMPTY" ;;
      *) die "Unable to recognize input." ;;
    esac
    ;;
  7)
    echo
    warn "Enter title:"
    read TITLE
    patch "$SOURCE_ROOT/apa-style.css" "1in" "1in" "1in" "1in" "<div style='font-size: 9px; margin-left: 1cm;'> <span style='text-transform: uppercase;'>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> </div>" "$HEADERS_EMPTY"
    ;;
  8)
    echo
    warn "Enter last name:"
    read LAST_NAME
    patch "$SOURCE_ROOT/mla-style.css" "1in" "1in" "1in" "1in" "<div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span>$LAST_NAME</span> <span class='pageNumber'></span> </div>" "$HEADERS_EMPTY"
    ;;
  r | R)
    jq "del(.\"markdown-pdf\")" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON";;
  q | Q) ;;
  *) die "Unable to recognize input." ;;
esac

echo
echo "Goodbye!"
echo
exit 0
