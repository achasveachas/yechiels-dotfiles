alias vpn="globalprotect"
alias please="sudo "
alias yeet="rm -rf "

mk() {
	mkdir $1 && cd $1
}

gclone() {
	git clone "$1" && cd "$(basename "$1" .git)"
}
