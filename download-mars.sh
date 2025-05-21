#!/bin/bash

set -e

JAR_URL="https://github.com/dpetersanderson/MARS/releases/download/v.4.5.1/Mars4_5.jar" # Em casos de erro, verifique a URL de download no repositório oficial
DEST_FILE="./mars.jar"

echo "Baixando MARS IDE de: $JAR_URL"
if curl -fL "$JAR_URL" -o "$DEST_FILE"; then
    echo "✅ Download concluído com sucesso em: $DEST_FILE"
else
    echo "❌ Erro ao baixar o MARS. Verifique sua conexão ou a URL."
    exit 1
fi