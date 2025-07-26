{pkgs, ...}: {
  programs.gh = {
    enable = true;

    extensions = with pkgs; [
      gh-dash
      gh-skyline
      gh-poi
      gh-eco
    ];

    gitCredentialHelper = {
      enable = true;
      hosts = ["https://github.com"];
    };

    settings = {
      git_protocol = "ssh";
    };
  };
}
