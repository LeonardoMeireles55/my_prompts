#!/bin/bash

# Script para renomear arquivos .md para .prompt.md
# Executa apenas na raiz atual

echo "Renomeando arquivos .md para .prompt.md na pasta atual..."

# Contador para mostrar progresso
count=0

# Loop através de todos os arquivos .md na pasta atual (não recursivo)
for file in *.md; do
    # Verifica se o arquivo existe (evita erro quando não há arquivos .md)
    if [ -f "$file" ]; then
        # Verifica se o arquivo já termina com .prompt.md
        if [[ "$file" == *.prompt.md ]]; then
            echo "Pulando '$file' - já tem o sufixo correto"
        else
            # Remove a extensão .md e adiciona .prompt.md
            new_name="${file%.md}.prompt.md"

            # Renomeia o arquivo
            mv "$file" "$new_name"
            echo "Renomeado: '$file' -> '$new_name'"
            ((count++))
        fi
    fi
done

# Verifica se não foram encontrados arquivos .md
if [ $count -eq 0 ]; then
    echo "Nenhum arquivo .md encontrado para renomear na pasta atual."
else
    echo "Concluído! $count arquivo(s) renomeado(s)."
fi
