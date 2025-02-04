ps aux > processes.txt

while IFS= read -r PROC; do

	ps aux | grep -q "$PROC" > .temp

	retval=$?

	if [[ $retval == 0 ]]; then

		echo "El proceso $PROC está en ejecución"

	else
		echo "El proceso $PROC no está en ejecución"
	fi

	rm .temp

done < processes.txt
