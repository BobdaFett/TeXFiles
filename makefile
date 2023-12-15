mat141-hw5:
	latexmk -pdf "MAT141\HW 5\HW5.tex"

mat141-hw4:
  latexmk -synctex=1 -pv -file-line-error -pdf -shell-escape "MAT141\HW4\HW4.tex"

mat141-exam5:
	latexmk -synctex=1 -pv -file-line-error -pdf -shell-escape "MAT141\Exam5\Exam5.tex"

mat141-hw5:
	latexmk -synctex=1 -pv -file-line-error -pdf -shell-escape "MAT141\HW5\HW5.tex"

# i have no idea how to use this.
build: mat141-hw4
	latexmk -synctex=1 interation=nonstopmode -file-line-error -pdf -shell-escape "MAT141\HW4\HW4.tex"
