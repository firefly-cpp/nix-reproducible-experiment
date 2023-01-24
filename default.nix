{ nixpkgs ? import <nixpkgs> {}, pythonPkgs ? nixpkgs.pkgs.python310Packages }:

let
  inherit (nixpkgs) pkgs;
  inherit pythonPkgs;

  nia = { buildPythonPackage, niapy }:
    buildPythonPackage rec {
      pname = "nia-experiment";
      version = "1.0";

      src = fetchGit {
        url = "https://gitlab.com/firefly-cpp/nia-test-experiments";
        rev = "d35eaac8162ab08e736413247bff39e8ea929b9a";
        #sha256 = "sha256-k4NBvuMcUNGzwyHabBwMxUNOgXBXEzgUFjyA/vrRREA=";
      };

      propagatedBuildInputs = [ niapy ];

      meta = {
        description = "Simple experiment using niapy package";
        homepage = "https://gitlab.com/firefly-cpp/nia-test-experiments";
      };
    };

  drv = pythonPkgs.callPackage nia {};
in
  drv
