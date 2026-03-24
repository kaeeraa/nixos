{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser.url = "github:youwen5/zen-browser-flake";
    freesmlauncher.url = "git+https://github.com/FreesmTeam/FreesmLauncher.git";
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    noctalia = {
      url = "github:kaeeraa/noctalia-shell?ref=9024b931abe5c7c0f409e6718e897ef611084af2";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    ayugram-desktop = {
      type = "git";
      submodules = true;
      url = "https://github.com/ndfined-crp/ayugram-desktop/";
    };
    kpl.url = "github:kaeeraa/kpl";
    nix-index-database = {
      url = "github:nix-community/nix-index-database";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    self,
    nixpkgs,
    disko,
    home-manager,
    stylix,
    zen-browser,
    freesmlauncher,
    mango,
    noctalia,
    kpl,
    ayugram-desktop,
    nix-index-database,
  } @ inputs: {
    nixosConfigurations = {
      kaeeraa-dev = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          # Shared modules
          stylix.nixosModules.stylix
          disko.nixosModules.disko
          mango.nixosModules.mango
          home-manager.nixosModules.home-manager

          # Modules
          ./nixos/kaeeraa-dev
          ./overlays

          # Users
          {
            home-manager.backupFileExtension = "hm.bck";
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
          }
        ];
      };
    };
    homeConfigurations = {
      "kaeeraa@kaeeraa-dev" = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = {
          inherit inputs;
          hostName = "kaeeraa-dev";
        };
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          # Shared Modules
          stylix.homeModules.stylix
          mango.hmModules.mango
          noctalia.homeModules.default
          nix-index-database.homeModules.default

          # Modules
          ./home-manager/kaeeraa
          ./overlays

          {
            programs.nix-index-database.comma.enable = true;
          }
        ];
      };
    };
    formatter = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
