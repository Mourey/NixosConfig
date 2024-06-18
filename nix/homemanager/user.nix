{ pkgs, ... }: {
  users = {
    users = {
      hotrod = {
        isNormalUser = true;
        description = "Rodrigo Mourey";
        extraGroups = [ "networkmanager" "wheel" "docker" ];
        shell = pkgs.zsh;
      };
    };
  };
}
