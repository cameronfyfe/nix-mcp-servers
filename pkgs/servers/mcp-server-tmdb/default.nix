{ buildNpmPackage
, fetchFromGitHub
}:

buildNpmPackage {
  pname = "mcp-server-tmdb";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "Laksh-star";
    repo = "mcp-server-tmdb";
    rev = "5efa38caf714132dae7c004242a81da61fe8d4e1";
    hash = "sha256-t8yrcmkdj4qg4es2v4RzyZOzy2kv/iOocgFyVAiBjN0=";
  };

  postPatch = ''
    cp ${./package-lock.json} ./package-lock.json
  '';

  npmDepsHash = "sha256-Z4HMfyDfpSY0Wh6TKQASgFa606e+/Q5Dqqg9lX8kNjk=";
}
