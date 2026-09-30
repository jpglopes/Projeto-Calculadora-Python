#!/bin/bash

ARQUIVO="calculadora.ipynb"

# Verifica se o arquivo existe antes de prosseguir
if [ ! -f "$ARQUIVO" ]; then
    echo "Erro: O arquivo '$ARQUIVO' não foi encontrado no diretório atual."
    exit 1
fi

echo "1. Tornando o arquivo executável..."
chmod +x "$ARQUIVO"

echo "2. Definindo permissões (Proprietário: leitura/escrita/execução | Outros: apenas leitura)..."
# Permissão 744 (u=rwx, g=r, o=r)
# - Proprietário (7): Leitura (4) + Escrita (2) + Execução (1)
# - Grupo (4): Apenas Leitura
# - Outros (4): Apenas Leitura
chmod 744 "$ARQUIVO"

echo "3. Executando o arquivo '$ARQUIVO'..."
./"$ARQUIVO"
