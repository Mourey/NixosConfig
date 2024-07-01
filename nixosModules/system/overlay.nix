{ inputs, ... }:
final: prev:
let
  inherit (final)
    callPackage
    rustChannelOf
    ;

  toolchain = (rustChannelOf {
    rustToolchain = ./rust-toolchain.toml;
    sha256 = "sha256-LyoJhDEuv4dvWL3k6pJtauvANthI2NZ+hVJFr8cYI5A=";
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
