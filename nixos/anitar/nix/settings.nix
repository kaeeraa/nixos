{
  nix.settings = {
    auto-optimise-store = true;
    cores = 4;
    experimental-features = ["nix-command" "flakes"];

    trusted-users = [
      "@wheel"
      "kaeeraa"
      "windstone"
      "root"
    ];
    trusted-substituters = [
      "https://nix-community.cachix.org/"
      "https://cache.garnix.io"
      "https://cache.nixos.org/"
      "https://chaotic-nyx.cachix.org/"
    ];
    trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "cache.garnix.io:CTFPyKSLcx5RMJKfLo5EEPUObbA78b0YQ2DTCJXqr9g="
      "chaotic-nyx.cachix.org-1:HfnXSw4pj95iI/n17rIDy40agHj12WfF+Gqk6SonIT8"
    ];
  };
}
