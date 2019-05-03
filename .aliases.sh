alias connect="sudo easytether-usb"
alias vpn="globalprotect"

mk() {
	mkdir $1 && cd $1
}

gclone() {
	git clone "$1" && cd "$(basename "$1" .git)"
}
