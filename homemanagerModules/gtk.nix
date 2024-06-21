{ pkgs, ... }:

let
  gruvboxplus = import ./gruvbox-plus.nix { inherit pkgs; };
in
{
  gtk =
    {
      enable = true;
      cursorTheme = {
        package = pkgs.bibata-cursors;
        name = "Bibata-Modern-Dark";
      };

      theme = {
        package = pkgs.adw-gtk3;
        name = "adw-gtk3";
      };

      iconTheme = { };
      package = gruvboxplus;
      name = "gruvbox-plus";
    };

  home = {
    file = {
      ".icons/bibata".source = "${pkgs.bibata-cursors}/share/icons/Bibata-Modern-Classic";
    };
  };
}
