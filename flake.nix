{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        ocaml = {
          path = ./ocaml;
          description = "A flake template for development with OPAM and Dune";
        };
        rust = {
          path = ./go-api;
          description = "Go project template for REST APIs";
        };
        rust = {
          path = ./rust;
          description = "Rust toolchain";
        };
      };
    };
}
