{ username, ... }:

{
	imports = [
		./bootloader.nix
		./user.nix
		./system.nix
		./network.nix
		./pipewire.nix
		./security.nix
		./display.nix
		./services.nix
		./program.nix
		./nh.nix
	];
}
