{ inputs, pkgs, ... }:
final: prev:
let
  inherit (final)
    callPackage
    runCommand
    ;

  toolchain = (pkgs.rustChannelOf {
    rustToolchain = ../rust-toolchain.toml;
    sha256 = "";
    # After you run `nix build`, replace this with the actual
    # hash from the error message
  }).rust;

in
{
  # misc
  wezterm = callPackage ./wezterm {
    wezterm-flake = inputs.wezterm;
    naersk = callPackage inputs.naersk {
      cargo = toolchain;
      rustc = toolchain;
    };
  };
}
