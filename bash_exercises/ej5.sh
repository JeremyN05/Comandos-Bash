for file in test5/*.jpg; do
    mv "$file" "${file%.jpg}.old"
done
