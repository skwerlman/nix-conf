{
  description = "System configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix.url = {
      url = "github:danth/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, stylix, disko, home-manager, ... }@inputs: {
    nixosConfigurations = {
      "frame" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          disko.nixosModules.disko
          stylix.nixosModules.stylix
          ./config/systems
          ./config/systems/frame
          home-manager.nixosModules.home-manager
          {
            imports = [
              ./config/users/sk
            ];
          }
        ];
      };
    };
  };
}
