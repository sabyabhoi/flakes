{
  description = "Flake utils demo";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system}; in
      {
        devShell = pkgs.mkShell { 
          name = "ocaml-devshell";
          buildInputs = with pkgs.ocamlPackages; [
            dune_3
            findlib
            ocaml
            ocamlformat
            ocaml-lsp
            odoc
            utop

            janeStreet.base
            janeStreet.stdio
          ]; 
        };
      }
    );
}
