{ pkgs, ... }:

{
  # USB Automounting
  services.gvfs.enable = true;
  # services.udisks2.enable = true;
  # services.devmon.enable = true;

  # Enable USB Guard
  services.usbguard = {
    enable = true;
    dbus.enable = true;
    implicitPolicyTarget = "block";
    # FIXME: set yours pref USB devices (change {id} to your trusted USB device), use `lsusb` command (from usbutils package) to get list of all connected USB devices including integrated devices like camera, bluetooth, wifi, etc. with their IDs or just disable `usbguard`
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

  # Enable USB-specific packages
  environment.systemPackages = with pkgs; [
    usbutils
  ];
}
