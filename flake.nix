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
    catppuccin,
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
            home-manager.users.kaeeraa = import ./home-manager/kaeeraa;
          }
        ];
      };
    };

    homeConfigurations = {
      kaeeraa = home-manager.lib.homeManagerConfiguration {
        extraSpecialArgs = {inherit inputs;};
        pkgs = nixpkgs.legacyPackages.x86_64-linux;
        modules = [
          # Shared modules
          home-manager.homeModules.home-manager

          # Modules
          ./home-manager/kaeeraa
        ];
      };
    };

    formatter = nixpkgs.legacyPackages.x86_64-linux.alejandra;
  };
}
