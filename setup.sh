#!/bin/bash

echo "Instalando NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if [ -n "$BASH_VERSION" ]; then
    echo "Carregando ~/.bashrc..."
    source ~/.bashrc
elif [ -n "$ZSH_VERSION" ]; then
    echo "Carregando ~/.zshrc..."
    source ~/.zshrc
else
    echo "Shell não identificado. Carregue o NVM manualmente se necessário."
fi

echo "Instalando a versão LTS do Node.js..."
nvm install --lts

echo "Instalando TypeScript..."
npm install -g typescript

echo "Instalação concluída!"
