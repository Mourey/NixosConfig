{ ... }:
{
  programs = {
    nix-index = {
      enable = true;
      enableBashIntegration = true; # Enable bash integration
      enableZshIntegration = true; # Enable zsh integration
    };
  };
}
