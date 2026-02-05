{ config, pkgs, ... }:
{
    home.packages = with pkgs; [
        nodejs
        
        # Rust
        rustc
        cargo
        rust-analyzer

        gcc

        # Go
        go

        # Elixir & Erlang
        elixir


    ];
}