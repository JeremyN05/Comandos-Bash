for file in test6/*.txt; do 
TOTAL_LINEAS=$(grep -c '^' "$file")
	if (( TOTAL_LINEAS >= 3 )); then
		echo "El archivo $file tiene más de tres líneas"
	else 
		echo "El archivo $file tiene 3 líenas o menos"
fi
done
