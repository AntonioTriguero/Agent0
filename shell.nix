{ pkgs ? import <nixpkgs> {
    config.allowUnfree = true;
  }
}:

pkgs.mkShell {
  buildInputs = [
    pkgs.git
    pkgs.docker
    pkgs.docker-compose
    pkgs.colima
    pkgs.uv
  ];

  shellHook = ''
    export LC_ALL=C

    npm set prefix ~/.npm-global
    export PATH="$HOME/.npm-global/bin:$PATH"

    # --- 1. CONFIGURACIÓN BÁSICA DE DOCKER/COLIMA ---
    export COLIMA_SOCKET="$HOME/.colima/default/docker.sock"
    export DOCKER_HOST="unix://$COLIMA_SOCKET"

    # Asegurar que Colima esté corriendo antes de entrar al editor
    if ! colima status > /dev/null 2>&1; then
      echo "🚀 Iniciando Colima..."
      colima start --vm-type qemu --runtime docker --mount-type 9p --network-address
    fi

    # Linkear socket para compatibilidad
    if [ ! -S /tmp/docker.sock ]; then
        ln -sf "$COLIMA_SOCKET" /tmp/docker.sock
    fi
  '';
}
