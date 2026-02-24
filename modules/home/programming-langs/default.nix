{ pkgs, ... }:
{
    home.packages = with pkgs; [
        nodejs
        gcc

        # Nix
        nixd
        nixfmt

        # Rust
        rustc
        cargo
        rust-analyzer

        # Go
        go
        gopls

        # Elixir & Erlang
        elixir
    ];
}