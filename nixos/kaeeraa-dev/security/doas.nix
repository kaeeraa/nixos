{
  security.doas = {
    enable = true;
    extraRules = [
      {
        groups = ["doas"];
        keepEnv = true;
        persist = true;
      }
    ];
  };
}
