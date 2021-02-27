{ pkgs ? import <nixpkgs> {
  overlays = [ (self: super: { sources = import ./sources.nix; }) ];
} }:

{
  gost = pkgs.callPackage ./gost.nix { };
  adguardhome = pkgs.callPackage ./adguardhome.nix { };
  adguard-exporter = pkgs.callPackage ./adguard-exporter.nix { };
}
