{
  inputs,
  lib,
  pkgs,
  ...
}: let
  mango = inputs.mango.packages."x86_64-linux".mango.overrideAttrs (final: prev: {
    src = pkgs.fetchFromGitHub {
      owner = "ananyatimalsina";
      repo = "mangowc";
      rev = "9d19f2bbcfaaed14e0da821636cd472ba2b570cd";
      sha256 = "sha256-VSIMVOFDdxcMHu7zVare3MDke6/xd24NgOy1yaXx6ZE=";
    };
  });
in {
  programs.mango = {
    enable = true;
    package = mango;
  };
}
