make:
	echo "Guessing the number of files in the current directory" > README.md
	date >> README.md
	wc -l guessinggame.sh | awk '{ print $1 }' >> README.md


clean:
	rm README.md
