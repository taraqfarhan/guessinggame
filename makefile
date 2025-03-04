all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#Title: Guess total number of files in the current directory" >> README.md
	echo "\\" >> README.md
	echo -n "**Make date & time**: " >> README.md
	date >> README.md
	echo "\\" >> README.md
	echo -n "**Number of lines in this script:** " >> README.md
	wc -l guessinggame.sh | egrep -o '\d*' >> README.md
	echo "" >> README.md

clean:
	rm README.md