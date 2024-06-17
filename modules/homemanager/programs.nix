{ ... }: {
  # Nix Index Table integration
  programs = {
    nix-index = {
      enable = true;
      enableBashIntegration = true; # Enable bash integration
      enableZshIntegration = true; # Enable zsh integration
    };

    # Disable command-not-found to avoid conflicts
    command-not-found.enable = false;
    vim.enable = true;

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
