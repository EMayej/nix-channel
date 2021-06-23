{ sources, lib, stdenv, fetchurl }:

let adguardhome = sources.adguardhome;
in stdenv.mkDerivation {
  pname = "adguardhome";
  inherit (adguardhome) version;

  src = fetchurl { inherit (adguardhome) url sha256; };

  installPhase = ''
    install -m755 -D ./AdGuardHome $out/bin/adguardhome
  '';

  meta = with lib; {
    inherit (adguardhome) description homepage;
    license = licenses.gpl3;
    platforms = platforms.linux;
  };
}
