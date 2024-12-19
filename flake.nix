{
  description = "A collection of project templates";

  outputs =
    { ... }:
    {
      templates = {
        elixir = {
          path = ./elixir;
        };
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
