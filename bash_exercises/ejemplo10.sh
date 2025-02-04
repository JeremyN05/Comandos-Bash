#!/bin/bash

# Guardamos la lista de procesos en un archivo
ps aux > processes.txt  

# Leer cada línea de 'processes.txt'
while IFS= read -r line; do
    # Extraemos el nombre del proceso (columna 11)
    PROC=$(echo "$line" | awk '{print $11}')

    # Validamos que PROC no esté vacío (evita errores en líneas incorrectas)
    if [[ -n "$PROC" ]]; then
        # Comprobamos si el proceso está en ejecución
        if pgrep -x "$PROC" > /dev/null; then
            echo "El proceso $PROC está en ejecución"
        else
            echo "El proceso $PROC no está en ejecución"
        fi
    fi
done < processes.txt
