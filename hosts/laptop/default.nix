{ pkgs, ... }:

{
	imports = [
		./hardware-configuration.nix
		./../../modules/core
	];
	
	environment.systemPackages = with pkgs; [
		brightnessctl
	];
}
