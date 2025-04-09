{ buildNpmPackage
, fetchFromGitHub
, fetchpatch
}:

buildNpmPackage rec {
  pname = "mcp-server-playwright";

  version = "0.0.10";

  src = fetchFromGitHub {
    owner = "microsoft";
    repo = "playwright-mcp";
    rev = "v${version}";
    hash = "sha256-e7zc4HC+V5W7k1khSbyggQGdcUg9pI1+p5n7Ozu0/m0=";
  };

  # https://github.com/microsoft/playwright-mcp/pull/151
  # TODO: remove if this gets merged
  patches = [
    (fetchpatch {
      url = "https://github.com/microsoft/playwright-mcp/commit/d5a20488306d72a431bccbeb62b4d11eaeaa9632.patch";
      sha256 = "sha256-glrMm8NF1tfr8qfv3Jg7NSgaiX7RcfXU+mpWG76C1yw=";
    })
  ];

  npmDepsHash = "sha256-U2k4gZjpPnyJI0FG4S4Ne6rVzg/nvkPJsNAfqDBJDD8=";
}
