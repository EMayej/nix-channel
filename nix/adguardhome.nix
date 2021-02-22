{ stdenv, fetchurl }:

let
  sources = import ./sources.nix;
  adguardhome = sources.adguardhome;
in stdenv.mkDerivation {
  pname = "adguardhome";
  inherit (adguardhome) version;

  src = fetchurl { inherit (adguardhome) url sha256; };

  installPhase = ''
    install -m755 -D ./AdGuardHome $out/bin/adguardhome
  '';

  meta = with stdenv.lib; {
    inherit (adguardhome) description homepage;
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
