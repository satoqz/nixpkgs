{ stdenv, lib, fetchFromGitHub }:

stdenv.mkDerivation rec {
  pname = "zsh-system-clipboard";
  version = "2024-07-18";

  src = fetchFromGitHub {
    owner = "kutsan";
    repo = "zsh-system-clipboard";
    rev = "8b4229000d31e801e6458a3dfa2d60720c110d11";
    sha256 = "phsIdvuqcwtAVE1dtQyXcMgNdRMNY03/mIzsvHWPS1Y=";
  };

  strictDeps = true;
  installPhase = ''
    install -D zsh-system-clipboard.zsh $out/share/zsh/${pname}/zsh-system-clipboard.zsh
  '';

  meta = with lib; {
    homepage = "https://github.com/kutsan/zsh-system-clipboard";
    description = "Plugin that adds key bindings support for ZLE (Zsh Line Editor) clipboard operations for vi emulation keymaps";
    license = licenses.gpl3Only;
    maintainers = with maintainers; [ _0qq satoqz ];
    platforms = platforms.all;
  };
}
