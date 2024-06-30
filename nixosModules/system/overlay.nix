{ inputs, final, prev, lib, specialArgs, config }:

let
  inherit (final)
    callPackage
    runCommand
  ;
in
{
  # misc
  wezterm = callPackage ./wezterm {
    wezterm-flake = inputs.wezterm;
    naersk = callPackage inputs.naersk { };
  };
}
