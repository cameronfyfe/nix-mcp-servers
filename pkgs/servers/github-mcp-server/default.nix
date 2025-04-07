{ buildGoModule
, fetchFromGitHub
}:

buildGoModule rec {
  pname = "github-mcp-server";
  version = "0.1.0";

  src = fetchFromGitHub {
    owner = "github";
    repo = pname;
    rev = "v${version}";
    hash = "sha256-LpD4zLAeLFod7sCNvBW8u9Wk0lL75OmlRXZqpQsQMOs=";
  };

  vendorHash = "sha256-YqjcPP4elzdwEVvYUcFBoPYWlFzeT+q2+pxNzgj1X0Q=";

  ldflags = [
    "-s"
    "-w"
    "-X main.version=v${version}-nix"
  ];
}
