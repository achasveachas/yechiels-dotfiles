alias please="sudo "
alias yeet="rm -rf "
alias k="kubectl "

mk() {
	mkdir $1 && cd $1
}

gclone() {
	git clone "$1" && cd "$(basename "$1" .git)"
}
