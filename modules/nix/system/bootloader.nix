{ ... }: {

  boot = {
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };

    initrd = {
      luks = {
        devices = {
          "luks-68ca8403-b99f-4642-b64d-80676ffce6fa".device = "/dev/disk/by-uuid/68ca8403-b99f-4642-b64d-80676ffce6fa";
        };
      };
    };
  };
}
