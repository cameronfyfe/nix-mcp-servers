{ fetchFromGitHub
, python3Packages
}:

python3Packages.buildPythonApplication rec {
  pname = "mcp-neo4j-cypher";

  version = "0.1.1";

  src = fetchFromGitHub
    {
      owner = "neo4j-contrib";
      repo = "mcp-neo4j";
      rev = "mcp-neo4j-cypher-v.${version}";
      hash = "sha256-DF19ZNlCwCiDlE0X3D8cS39cvmVMqsPbRPySO1yLUOQ=";
    }
  + "/servers/mcp-neo4j-cypher";

  pyproject = true;

  build-system = [ python3Packages.hatchling ];

  dependencies = with python3Packages; [
    mcp
    neo4j
  ];
}
