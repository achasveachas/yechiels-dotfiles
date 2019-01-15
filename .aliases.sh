alias connect="sudo easytether-usb"

mk() {
	mkdir $1 && cd $1
}

clone() {
	git clone "$1" && cd "$(basename "$1" .git)"
}
