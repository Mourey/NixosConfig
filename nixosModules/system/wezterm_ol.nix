{ inputs, final, prev }:

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
