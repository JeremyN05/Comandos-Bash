for file in test7/*; do
	if [[ $file == *.conf ]]; then
	sed -i 's/localhost/127.0.0.1/g' "$file"

	echo "El archivo $file se ha modificado"
	fi
done

