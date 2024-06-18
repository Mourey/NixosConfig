{ pkgs }:

pkgs.writeShellScriptBin "cleanup-script" ''
  # Delete old system generations
  sudo nix-env -p /nix/var/nix/profiles/system --delete-generations old

  # Delete old user profile generations
  nix-env --delete-generations old

  # Run garbage collection
  sudo nix-collect-garbage -d

  # Check disk usage
  df -h
''

