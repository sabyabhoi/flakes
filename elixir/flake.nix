{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in {
        devShell = pkgs.mkShell {
          name = "elixir-flake";
          buildInputs = with pkgs; [
            elixir
            elixir-ls
            erlang
            inotify-tools
          ];
          shellHook = ''
            echo "Welcome to the Elixir development shell!"
          '';
        };
      }
    );
}
