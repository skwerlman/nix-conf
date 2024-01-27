{
  description = "System configuration flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    stylix = {
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
    nix-vscode-extensions = {
      url = "github:nix-community/nix-vscode-extensions";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    # lanzaboote = {
    #   url = "github:nix-community/lanzaboote/v0.3.0";
    #   inputs.nixpkgs.follows = "nixpkgs";
    # };
  };

  outputs = { nixpkgs, stylix, disko, home-manager, nix-vscode-extensions, ... }@inputs: {
    nixosConfigurations = {
      "frame" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        specialArgs = inputs;
        modules = [
          disko.nixosModules.disko
          # lanzaboote.nixosModules.lanzaboote
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
