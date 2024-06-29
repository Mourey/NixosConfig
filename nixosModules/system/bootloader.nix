{ pkgs, ... }: {

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
      timeout = 2;
    };

    initrd = {
      enable = true;
      systemd.enable = true;
      luks = {
        devices = {
          "luks-68ca8403-b99f-4642-b64d-80676ffce6fa".device = "/dev/disk/by-uuid/68ca8403-b99f-4642-b64d-80676ffce6fa";
        };
      };
    };

    consoleLogLevel = 3;
    plymouth = {
      enable = true;
      font = "${pkgs.jetbrains-mono}/share/fonts/truetype/JetBrainsMono-Regular.ttf";
      themePackages = [ pkgs.catppuccin-plymouth ];
      theme = "catppuccin-macchiato";
    };
  };
}
