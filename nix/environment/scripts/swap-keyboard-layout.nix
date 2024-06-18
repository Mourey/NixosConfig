
{ pkgs }:

pkgs.writeShellScriptBin "swap-keyboard-layout" ''
  # Get the current layout
  CURRENT_LAYOUT=$(setxkbmap -query | grep layout | awk '{print $2}')

  # Swap the layout
  if [ "$CURRENT_LAYOUT" = "us" ]; then
      setxkbmap mx
  else
      setxkbmap us
  fi
''



