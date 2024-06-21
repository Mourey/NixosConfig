{ ... }: {
  # Nix Index Table integration
  programs = {
    command-not-found.enable = false;

    # Enable zsh as the terminal
    zsh = {
      enable = true;
      shellAliases = {
        ll = "ls -lh";
        la = "ls -a";
        lla = "ls -la";
        gs = "git status";
      };
      initExtra = ''
        eval "$(starship init zsh)"
      '';
    };
  };
}
