for file in test8/usuarios.txt; do
    for USUARIO in $(cat $file); do
        if [[ $USUARIO == "maria" ]]; then
            echo "Hola, maria"
        else
            echo "Hola, usuario"
        fi
    done
done


