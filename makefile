all: readme

readme:
	echo "Guessing Game project\n---------------------\n" > README.md
	date >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
