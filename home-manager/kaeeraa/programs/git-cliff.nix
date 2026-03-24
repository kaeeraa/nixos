{
  programs.git-cliff = {
    enable = true;
    settings = {
      repository = ".";
      tag_pattern = "v[0-9]+.[0-9]+.[0-9]+";
      template = "keepachangelog";
      commit_filter = ["-m" "*fix*"];
    };
  };
}
