#!/bin/bash

set -e

REPO="sherazahmad720/linkedin-viral-pro"
SKILL="linkedin-viral-pro"

echo "LinkedIn Viral Pro — Installer"
echo ""

# Detect which tools are installed
CLAUDE_FOUND=0
GEMINI_FOUND=0
CURSOR_FOUND=0

[ -d "$HOME/.claude" ] && CLAUDE_FOUND=1
[ -d "$HOME/.gemini" ] && GEMINI_FOUND=1
[ -d "$HOME/.cursor" ] && CURSOR_FOUND=1

# If only one tool found, auto-select it
TOTAL=$((CLAUDE_FOUND + GEMINI_FOUND + CURSOR_FOUND))

if [ $TOTAL -eq 0 ]; then
  echo "No supported AI tools detected. Installing for Claude Code..."
  TARGET="claude-code"
elif [ $TOTAL -eq 1 ]; then
  if [ $CLAUDE_FOUND -eq 1 ]; then TARGET="claude-code"; fi
  if [ $GEMINI_FOUND -eq 1 ]; then TARGET="gemini-cli"; fi
  if [ $CURSOR_FOUND -eq 1 ]; then TARGET="cursor"; fi
  echo "Detected: $TARGET — installing..."
else
  echo "Multiple AI tools detected. Choose one:"
  echo ""
  [ $CLAUDE_FOUND -eq 1 ] && echo "  1) Claude Code"
  [ $GEMINI_FOUND -eq 1 ] && echo "  2) Gemini CLI"
  [ $CURSOR_FOUND -eq 1 ] && echo "  3) Cursor"
  echo "  4) All of the above"
  echo ""
  read -rp "Enter choice [1-4]: " CHOICE

  case $CHOICE in
    1) TARGET="claude-code" ;;
    2) TARGET="gemini-cli" ;;
    3) TARGET="cursor" ;;
    4) TARGET="all" ;;
    *) echo "Invalid choice. Exiting."; exit 1 ;;
  esac
fi

# Install
if [ "$TARGET" = "all" ]; then
  [ $CLAUDE_FOUND -eq 1 ] && npx skills add "$REPO" -a claude-code -y
  [ $GEMINI_FOUND -eq 1 ] && npx skills add "$REPO" -a gemini-cli -y
  [ $CURSOR_FOUND -eq 1 ] && npx skills add "$REPO" -a cursor -y
else
  npx skills add "$REPO" -a "$TARGET" -y
fi

echo ""
echo "Done! Restart your AI tool and use: /linkedin-viral-pro"
