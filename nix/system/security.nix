{ inputs, ... }: {

  imports = [
    inputs.sops-nix.nixosModules.default
  ];

  sops = {

    defaultSopsFile = ../secrets/secrets.yaml;
    defaultSopsFormat = "yaml";

    age = {
      keyFile = "/home/hotrod/.config/sops/age/keys.txt";
      sshKeyPaths = [ "/etc/ssh/ssh_host_ed25519_key" ];
      generateKey = true;
    };

    secrets = {
      "proton/password" = { };
      "proton/username" = { };
      "wireguard/mx/private_key" = { };
      "wireguard/us/private_key" = { };
      "wireguard/eu/private_key" = { };
    };
  };

  security = {
    rtkit.enable = true;
  };
}
