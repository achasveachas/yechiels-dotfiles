PROMPT_COMMAND=__prompt_command 

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

__prompt_command() {
    local EXIT="$?"

    # set variable identifying the chroot you work in (used in the prompt below)
    if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
        local debian_chroot=$(cat /etc/debian_chroot)
    fi

    if [ "$EXIT" == "0" ]; then 
        local status_emoji=😀; 
    else 
        local status_emoji=😱; 
    fi

    PS1="${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\u@\h\[\033[00m\]:\[\033[01;32m\]\w\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]\n${status_emoji} \$ "
}
