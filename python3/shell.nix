# A developement shell for compiling Python.
# This file needs to be in the root of the project that uses Python.
#
# For installation steps see: https://nix.dev/tutorials/install-nix
#
# To start the dev shell, simply run: `nix-shell`
#
# By default `nix-shell` opens a new `bash` shell. If you would like to use
# your own, for example `zsh`, you can open a new instance directly after: `zsh`.
# For more information on this limitation see https://nixos.wiki/wiki/Development_environment_with_nix-shell#direnv

let
  pkgs = import <nixpkgs> {};
in pkgs.mkShell {
  packages = [
    (pkgs.python3.withPackages (python-pkgs: [
      python-pkgs.pandas
      python-pkgs.requests
    ]))
  ];
}