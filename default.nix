{
  pkgs ? import (fetchTarball {
    url = "https://github.com/NixOS/nixpkgs/archive/e2f0148a2052cb6d948d7f5326cde18391f48f5f.tar.gz";
    sha256 = "sha256:11rnjp2bhp1sds5kdbyprlq09blhgr5ayzibmsmc4g2lmr27vvk2";
  }) {}
}:

with pkgs;

let
  packages = rec {

    # The derivation for our experiment
    nia-experiment = pkgs.python310Packages.buildPythonPackage rec {
      pname = "nia";
      version = "1";
      src = fetchgit {
        url = "https://gitlab.com/firefly-cpp/nia-test-experiments";
        rev = "d35eaac8162ab08e736413247bff39e8ea929b9a";
        sha256 = "sha256-k4NBvuMcUNGzwyHabBwMxUNOgXBXEzgUFjyA/vrRREA=";
      };

      buildInputs = [
        uarmsolver

        # Python packages
        (python310.buildEnv.override {
          ignoreCollisions = true;
          extraLibs = with python310Packages; [
          # Add Python packages
          niapy
          niaaml
          niaarm
        ];
      })
      ];
    };

    # shell of our environment
    experiment = mkShell rec {
      name = "experiment1";
      buildInputs = [
        python310Packages.niapy
      ];
      shellHook = "
      cd res*/bin
      ./run.sh";
    };

    meta = {
        description = "Simple experiment using niapy package";
        homepage = "https://gitlab.com/firefly-cpp/nia-test-experiments";
      };

  };
in
  packages
