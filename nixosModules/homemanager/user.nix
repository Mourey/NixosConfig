{ pkgs, ... }: {
  users = {
    users = {
      hotrod = {
        isNormalUser = true;
        description = "Rodrigo Mourey";
        extraGroups = [ "networkmanager" "wheel" "docker" ];
        shell = pkgs.zsh;

        packages = with pkgs; [
          spotify
          youtube-music
          discord
          tdesktop
          vscodium
          brave
          neovim
        ];
      };
    };
  };

  # Change runtime directory size
  services.logind.extraConfig = "RuntimeDirectorySize=8G";
}
