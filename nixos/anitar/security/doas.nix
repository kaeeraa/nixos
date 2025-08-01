{
  security.doas = {
    enable = true;
    extraRules = [
      {
        groups = ["doas"];
        users = ["root" "kaeeraa" "windstone"];
        keepEnv = true;
        persist = true;
      }
    ];
  };
}
