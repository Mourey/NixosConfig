{ pkgs, ... }: {
  # Fonts
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      nerdfonts
    ];
  };

}

