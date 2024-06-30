{ pkgs, ... }:

{
  # Select internationalisation properties.
  services.xserver = {
    xkb.layout = "us,ua,ru";
    xkb.options = "grp:alt_shift_toggle";
  };

  environment.systemPackages = with pkgs; [
    nuspell
    hyphen
    hunspell
    hunspellDicts.en_US
    hunspellDicts.uk_UA
    hunspellDicts.ru_RU
  ];
}
