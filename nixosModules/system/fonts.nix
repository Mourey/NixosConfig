{ pkgs, ... }: {
  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerdfonts
      jetbrains-mono
      nerd-font-patcher
    ];
  };

}

