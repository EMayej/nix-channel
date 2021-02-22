{ pkgs ? import <nixpkgs> { } }:

{
  gost = pkgs.callPackage ./gost.nix { };
}
