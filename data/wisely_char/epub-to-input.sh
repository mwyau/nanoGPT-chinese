#!/bin/sh
for filename in *.epub; do
    ebook-convert "$filename" "${filename%.epub}.txt"
done

cat *.txt > input.txt
sed -e '/^$/d' -e 's/^　　//' -i input.txt
