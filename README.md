# dotfiles
Config files for **bash**, **vim** and **git**.
## Usage
* `clone` this repository.
* `cd dotfiles`
* Run `rake`
* ´source ~/.bash`

### Notes
The `rake` task, perform the following operations:

* Remove the files, if they exist, `~/.bashrc`, `~/.bash_profile`, `~/.vimrc.before`, `~/.vimrc.after`, `~/.gitconfig`, `~/.gitignore_global` and symlink to the new ones in dotfiles.
* Remove the folder, if any, `~/.janus/` and symlink to the janus folder in dotfiles.
* If you want to customize something, do it in the dotfiles folder, and then run `rake`.
