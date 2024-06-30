{ inputs }:
final: prev:
let
  inherit (final)
    callPackage
    ;
in
{
  # misc
  wezterm = callPackage ./wezterm {
    wezterm-flake = inputs.wezterm;
    naersk = callPackage inputs.naersk { };
  };
}
