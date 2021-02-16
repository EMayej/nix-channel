{ sources ? import ./sources.nix }:
import sources.nixpkgs {
  overlays = [
    (self: super: { inherit sources; })
    (self: super: { gost = super.callPackage ./gost.nix { }; })
  ];
  config = { };
}
