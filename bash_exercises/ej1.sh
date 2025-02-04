
for file in test1/*.txt; do

	if ( grep -q '.' "$file" ); then
	echo "El archivo $file No está vacio"
else
	echo "El archivo $file está vacio"
fi
done
