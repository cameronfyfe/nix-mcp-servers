{ fetchFromGitHub
, buildNpmPackage
, typescript
, writeScriptBin
}:

buildNpmPackage rec {
  pname = "mcp-server-brave-search";
  version = "0.6.2";

  src = fetchFromGitHub {
    owner = "modelcontextprotocol";
    repo = "servers";
    rev = "typescript-servers-${version}";
    hash = "sha256-FKotJUzP29iZzfRqfWGhdZosWxGX7BBOExxznfLi7Us=";
  };

  npmDepsHash = "sha256-fuJQxbHrv/x49I3WDMQxXC/+kuv/JiTDdHiAEaN94Zw=";

  npmWorkspace = "src/brave-search";

  nativeBuildInputs = [
    typescript
    (writeScriptBin "shx" "")
  ];

  dontCheckForBrokenSymlinks = true;

  PUPPETEER_SKIP_DOWNLOAD = true;
}
