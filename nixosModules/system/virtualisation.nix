{ pkgs, ... }:
{
  virtualisation = {
    docker.enable = true;
    podman = {
      enable = true;
      dockerCompat = true;
      defaultNetwork.settings.dns_enabled = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # nerdctl

    # firecracker
    # firectl
    # flintlock

    distrobox
    qemu

    podman-compose
    podman-tui

    # lazydocker
    # docker-credential-helpers
  ];
}
