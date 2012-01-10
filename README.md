# dotfiles
Config files for **bash**, **vim** and **git**.
## Usage
* `clone` this repository.
* `cd dotfiles`
* Run `rake`
### Notes
The `rake` task, perform the following operations:
* Remove the files `~/.bashrc`, `~/.bash_profile`, `~/.vimrc.before`, `~/.vimrc.after` and `~/.gitconfig` and symlink to the new ones in dotfiles.
* Remove the folder `~/.janus/` and symlink to the janus folder in dotfiles.
* If you want to customize something, do it in the dotfiles folder, and then run `rake`.