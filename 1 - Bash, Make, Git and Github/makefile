RREADME.md:
	@touch README.md
	@echo "The guessing game project" >> README.md
	@echo "=========================" >> README.md
	@echo "* Last run: " $(shell date ) >> README.md
	@echo "* Lines of code in 'guessinggame.sh': " $(shell wc -l guessinggame.sh | egrep -o "[0-9]+" ) >> README.md
	@echo "Generated README.md with title, last run, and number of lines of code"
clean:
	@rm README.md
	@echo "Removed README.md"
