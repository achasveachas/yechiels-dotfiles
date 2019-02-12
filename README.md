# My dotfiles
This repo contains my dotfile configuration.

## Contents
The repo contains three dotfiles:
* `.prompt` contains the bash prompt (an emoji that indicates if the last prompt was successful, the computer name and host, the path to the current working directory, and the current git branch).
* `.aliases` contains bash aliases
* `.git_aliases` contains git aliases

## Usage
To use these download the repo into your root directory and then add the following to the bottom of your `~/.bashrc`:
```
for file in ~/yechiels-dotfiles/.*.sh
do source $file
done
```

And the following to your `~/.gitconfig`:
```
[include]
        path = ~/yechiels-dotfiles/.git_aliases
```
