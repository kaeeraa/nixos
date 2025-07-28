{
  security.doas = {
    enable = true;
    extraRules = [
      {
        groups = ["doas"];
        users = ["root" "kaeeraa"];
        keepEnv = true;
        persist = true;
      }
    ];
  };
}
