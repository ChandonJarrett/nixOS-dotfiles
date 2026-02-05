{
	description = "Chan's NixOS Configuration";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		# nixpkgs-stable.url = "github:nixos/nixpkgs/nixos-25.11";
		
		# nix-gaming.url = "github:fufexan/nix-gaming";
		# nix-flatpak.url = "github:gmodena/nix-flatpak";

		home-manager = {
			url = "github:nix-community/home-manager";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		hyprland = {
			url = "git+https://github.com/hyprwm/Hyprland?submodules=1";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		quickshell = {
			url = "git+https://git.outfoxxed.me/quickshell/quickshell";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		dms = {
			url = "github:AvengeMedia/DankMaterialShell/stable";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		stylix = {
			url = "github:danth/stylix";
			inputs.nixpkgs.follows = "nixpkgs";
		};

		nixvim = {
			url = "github:nix-community/nixvim";
			inputs.nixpkgs.follows = "nixpkgs";
		};
	};
	
	outputs = { self, nixpkgs, home-manager, hyprland, quickshell, dms, stylix, nixvim, ... }@inputs:
		let
			system = "x86_64-linux";
			username = "chan";
			# pkgs = nixpkgs.legacyPackages.${system};

			mkHost = host: path:
				nixpkgs.lib.nixosSystem {
					inherit system;
					specialArgs = { inherit self inputs username host; };
					modules = [
						path
						home-manager.nixosModules.home-manager
						stylix.nixosModules.stylix
						{

						}
					];
				};
		in {
			nixosConfigurations = {
				laptop = mkHost "laptop" ./hosts/laptop;
				desktop = mkHost "desktop" ./hosts/desktop;
			};
		};
}
