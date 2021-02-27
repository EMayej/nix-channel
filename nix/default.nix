{ pkgs ? import <nixpkgs> {
  overlays = [ (self: super: { sources = import ./sources.nix; }) ];
} }:

{
  adguard-exporter = pkgs.callPackage ./adguard-exporter.nix { };
  adguardhome = pkgs.callPackage ./adguardhome.nix { };
  gost = pkgs.callPackage ./gost.nix { };
}
