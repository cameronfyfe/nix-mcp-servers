{ fetchFromGitHub
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "mcp-server-fetch";
  version = "0.6.2";

  src = fetchFromGitHub
    {
      owner = "modelcontextprotocol";
      repo = "servers";
      rev = "python-servers-${version}";
      hash = "sha256-UGzt4stV+6N+haBwfGv2i8ruyHjpHnuw4ncECaDdbvE=";
    }
  + "/src/fetch";

  pyproject = true;

  build-system = [ python3Packages.hatchling ];

  dependencies = with python3Packages; [
    markdownify
    mcp
    protego
    pydantic
    readabilipy
    requests
  ];
}
