{ pkgs, lib, ... }:
{
    # home.file.".config/obsidian".source = 

    programs.obsidian = {
        enable = true;
        package = pkgs.obsidian;
    };

    # Obsidian HM Module doesn't create a .config/obsidian dir
    # but tries to write to it, this ensures the directory exists.
    home.activation.createObsidianConfigDir =
    lib.hm.dag.entryBefore [ "writeBoundary" ] ''
      mkdir -p "$HOME/.config/obsidian"
    '';
}