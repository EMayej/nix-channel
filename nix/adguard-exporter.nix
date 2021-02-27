{ sources, pkgs, lib, buildGoModule }:

let
  adguard-exporter = sources.adguard-exporter;
  version = lib.removePrefix "v" adguard-exporter.rev;
in buildGoModule {
  pname = "adguard-exporter";
  inherit version;

  src = adguard-exporter;

  vendorSha256 = "15bkw31lna648ynq3h0wvd4w60jaci33kr0mp4919rk42ybyb8pw";

  doCheck = false;

  subPackages = [ "." ];

  meta = with lib; {
    inherit (adguard-exporter) description homepage;
    license = licenses.mit;
    platforms = platforms.linux ++ platforms.darwin;
  };
  overrideModAttrs = (_: { GOPROXY = "https://goproxy.cn,direct"; });
}
