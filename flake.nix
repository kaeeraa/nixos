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
    zen-browser.url = "github:youwen5/zen-browser-flake";
    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    disko,
    home-manager,
    zen-browser,
    chaotic,
  } @ inputs: {
    nixosConfigurations = {
      kaeeraa-dev = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          # Shared modules
          chaotic.nixosModules.default
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
      anitar = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {inherit inputs;};
        modules = [
          # Shared modules
          disko.nixosModules.disko
          home-manager.nixosModules.home-manager

          # Modules
          ./nixos/anitar

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
          # Modules
          ./home-manager/kaeeraa
        ];
      };
      "kaeeraa@anitar" = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = {
          inherit inputs;
          hostName = "anitar";
        };
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          # Modules
          ./home-manager/kaeeraa
        ];
      };
      "windstone@anitar" = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = {
          inherit inputs;
          hostName = "anitar";
        };
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          # Modules
          ./home-manager/windstone
        ];
      };
    };

    formatter = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
