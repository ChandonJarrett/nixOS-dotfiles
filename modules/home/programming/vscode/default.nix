{ pkgs, ... }:
{
	programs.vscode = {
		enable = true;
		profiles.default.extensions = with pkgs.vscode-extensions; [
			bbenoist.nix
			ms-vscode-remote.remote-ssh
			ms-vscode-remote.remote-containers
			ritwickdey.liveserver
			vscode-icons-team.vscode-icons
		];
	};
}
