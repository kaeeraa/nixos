{pkgs, ...}: {
  programs.git = {
    enable = true;
    package = pkgs.gitFull;

    userName = "Kaeeraa";
    userEmail = "kaeeraa@nebula-nook.ru";
    delta.enable = true;
    signing = {
      format = "openpgp";
      key = "53EB0B8547C7F50F";
      signByDefault = true;
    };
  };
}
