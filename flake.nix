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
  };

  outputs = {
    self,
    nixpkgs,
    disko,
    home-manager,
    stylix,
    zen-browser,
    freesmlauncher,
  } @ inputs: {
    nixosConfigurations = {
      kaeeraa-dev = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          # Shared modules
          stylix.nixosModules.stylix
          disko.nixosModules.disko
          home-manager.nixosModules.home-manager

          # Modules
          ./nixos/kaeeraa-dev

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
          # Modules
          ./home-manager/kaeeraa
        ];
      };
    };
    formatter = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
