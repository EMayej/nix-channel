{ pkgs ? import <nixpkgs> { } }:

{
  gost = pkgs.callPackage ./gost.nix { };
  adguardhome = pkgs.callPackage ./adguardhome.nix { };
  adguard-exporter = pkgs.callPackage ./adguard-exporter.nix { };
}
