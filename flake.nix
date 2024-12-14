{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        python = {
          path = ./python;
        };
        ocaml = {
          path = ./ocaml;
        };
        go = {
          path = ./go-api;
        };
        rust = {
          path = ./rust;
        };
      };
    };
}
