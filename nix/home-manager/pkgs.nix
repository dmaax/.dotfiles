nixpkgs: system: let
  mangling = {
    java = "graalvm17-ce";
  };

  overlays = let
    millOverlay = final: prev: {
      mill = prev.mill.override {
        jre = final.jre;
      };
    };

    javaOverlay = final: _: {
      jdk = final.${mangling.java};
      jre = final.${mangling.java};
    };

  in [
    javaOverlay
    millOverlay
  ];

  pkgs = import nixpkgs {
    inherit system overlays;

    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };
in
  pkgs