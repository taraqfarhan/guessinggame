all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "Title: Guess total number of files in the current directory" >> README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o '\d*' >> README.md

clean:
	rm README.md