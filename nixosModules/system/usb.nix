{ pkgs, ... }:
{
  # Enable GVFS for USB automounting
  services.gvfs.enable = true;

  # Enable USBGuard
  services.usbguard = {
    enable = true;
    dbus.enable = true;
    implicitPolicyTarget = "block"; # Block all USB devices by default
    # Set your preferred USB devices (trusted USB devices)
    rules = ''
      allow id 1d6b:0002
      allow id 1d6b:0003
      allow id 05e3:0610
      allow id 322e:202c
      allow id 046d:0aaa
      allow id 13d3:3563
      allow id 1532:0067
      allow id 3434:0353
      allow id 05e3:0626
      allow id 0781:55ae
    '';
  };

  # Install USB-specific packages
  environment.systemPackages = with pkgs; [
    usbutils
  ];
}
