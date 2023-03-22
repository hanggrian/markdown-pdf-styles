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

remove_setting() {
  echo "${RED}remove $1$END"
  jq "del(.$1)" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
}
set_setting() {
  echo "${GREEN}set $1 = $2$END"
  jq ".$1 = $2" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
}
append_setting() {
  echo "${GREEN}append $1 = $2$END"
  jq ".$1 += [\"$2\"]" "$SETTINGS_JSON" | sponge "$SETTINGS_JSON"
}
overwrite_setting() {
  local key="$1"
  local value="$2"
  if [[ "$value" = "\"\"" ]]; then
    remove_setting "\"markdown-pdf\".$key"
  else
    set_setting "\"markdown-pdf\".$key" "$value"
  fi
}

append_style() {
  echo
  append_setting "\"markdown-pdf\".\"styles\"" "$1";
}
setall_styles() {
  local style="$1"
  local margin_top="$2"
  local margin_bottom="$3"
  local margin_right="$4"
  local margin_left="$5"
  local header="$6"
  local footer="$7"

  echo
  if [[ "$style" != "" ]]; then
    overwrite_setting "\"styles\"" "[\"$style\"]"
  fi
  if [[ "$margin_top" = "" ]] && [[ "$margin_bottom" = "" ]] && [[ "$margin_right" = "" ]] && [[ "$margin_left" = "" ]]; then
    remove_setting "\"markdown-pdf\".\"margin\""
  else
    overwrite_setting "\"margin\".\"top\"" "\"$margin_top\""
    overwrite_setting "\"margin\".\"bottom\"" "\"$margin_bottom\""
    overwrite_setting "\"margin\".\"right\"" "\"$margin_right\""
    overwrite_setting "\"margin\".\"left\"" "\"$margin_left\""
  fi
  overwrite_setting "\"headerTemplate\"" "\"$header\""
  overwrite_setting "\"footerTemplate\"" "\"$footer\""
}

echo
echo "$BOLD${UNDERLINE}Markdown PDF Styles$END"
echo
echo "1. Single styles"
echo "2. Build styles"
echo "3. Headers & footers"
echo
echo "R. Reset"
echo "Q. Quit"
echo
warn "Choose:"
read input

if [[ "$input" = 1 ]]; then
  echo
  echo "${BOLD}Single styles$END"
  echo
  echo "1. Application - Microsoft Word"
  echo "2. Application - Apple Pages"
  echo "3. Colorful - Essay"
  echo "4. Colorful - Business"
  echo "5. Academic - APA Style"
  echo "6. Academic - MLA Style"
  echo
  warn "Pick the style:"
  read input_style

  case "$input_style" in
    1) setall_styles "$SOURCE_ROOT/microsoft-word.css" "1in" "1in" "1in" "1in" "" "" ;;
    2) setall_styles "$SOURCE_ROOT/apple-pages.css" "1in" "1in" "1in" "1in" "" "" ;;
    3) setall_styles "$SOURCE_ROOT/essay.css" "1in" "1in" "1in" "1in" "" "" ;;
    4) setall_styles "$SOURCE_ROOT/business.css" "1.32in" "1in" "0.7in" "0.7in" "" "" ;;
    5)
      echo
      warn "Enter title:"
      read TITLE
      setall_styles "$SOURCE_ROOT/apa-style.css" "1in" "1in" "1in" "1in" "<div style='font-size: 9px; margin-left: 1cm;'> <span style='text-transform: uppercase;'>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> </div>" "$HEADERS_EMPTY"
      ;;
    6)
      echo
      warn "Enter last name:"
      read LAST_NAME
      setall_styles "$SOURCE_ROOT/mla-style.css" "1in" "1in" "1in" "1in" "<div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span>$LAST_NAME</span> <span class='pageNumber'></span> </div>" "$HEADERS_EMPTY"
      ;;
    *) die "Unable to recognize input." ;;
  esac
elif [[ "$input" = 2 ]]; then
  echo
  echo "${BOLD}Build styles$END"
  echo
  echo "1. Font - Sans"
  echo "2. Font - Serif"
  echo "3. Text - Normal"
  echo "4. Text - Small"
  echo "5. Layout - Half"
  echo "6. Layout - One-third"
  echo "7. Layout - Quarter"
  echo
  warn "Pick the styles:"
  read input_styles

  case "$input_styles" in
    1) append_style "$SOURCE_ROOT/styles/font-sans.css" ;;
    2) append_style "$SOURCE_ROOT/styles/font-serif.css" ;;
    3) append_style "$SOURCE_ROOT/styles/text-normal.css" ;;
    4) append_style "$SOURCE_ROOT/styles/text-small.css" ;;
    5) append_style "$SOURCE_ROOT/styles/layout-half.css" ;;
    6) append_style "$SOURCE_ROOT/styles/layout-onethird.css" ;;
    7) append_style "$SOURCE_ROOT/styles/layout-quarter.css" ;;
    *) die "Unable to recognize input." ;;
  esac
elif [[ "$input" = 3 ]]; then
  echo
  echo "${BOLD}Headers & footers$END"
  echo
  echo "1. Webpage"
  echo "2. Homework"
  echo "D. Default"
  echo "E. Empty"
  echo
  warn "Pick the headers:"
  read input_headers

  case "$input_headers" in
    1)
      echo
      warn "Enter url:"
      read URL
      echo
      warn "Enter title:"
      read TITLE
      setall_styles "" "" "" "" "" "<div style='font-size: 9px; margin-left: 1cm; margin-right: 1cm;'> <span>$URL</span> </div>" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
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
      setall_styles "" "" "" "" "" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$SUBJECT</span> </div> <div style='margin-left: auto; margin-right: 1cm;'> <img src='\$IMAGE_BASE64'> </div>" "<div style='font-size: 9px; margin-left: 1cm;'> <span>$TITLE</span> </div> <div style='font-size: 9px; margin-left: auto; margin-right: 1cm;'> <span class='pageNumber'></span> / <span class='totalPages'></span> </div>"
      ;;
    *) die "Unable to recognize input." ;;
  esac
elif [[ "$input" = "r" ]] || [[ "$input" = "R" ]]; then
  echo
  remove_setting "\"markdown-pdf\""
elif [[ "$input" = "q" ]] || [[ "$input" = "Q" ]]; then
  echo
  echo "Goodbye!"
  echo
  exit 0
else
  die "Unable to recognize input."
fi

echo
echo "Done, restarting..."
exec bash "$0" "$@"
