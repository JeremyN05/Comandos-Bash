for SUBDIR in test9/*; do
  if [[ -d $SUBDIR ]]; then
	echo "$SUBDIR es un directorio"

	for file in $SUBDIR/*.txt; do
	  head -n 1 "$file"
	done
  fi
done
