# TODO
# - This rake task should run in any directory, not only $HOME
desc 'Delete symlink to *.local if any, and create new ones'
task :delete_symlinks do
  # Check the existence of files and folders, and if true, delete it
  vb = File.expand_path('~/.vimrc.before')
  va = File.expand_path('~/.vimrc.after')
  j = '~/.janus'
  b = File.expand_path('~/.bashrc')
  bp = File.expand_path('~/.bash_profile')
  g = File.expand_path('~/.gitconfig')
  system 'rm ~/.vimrc.before' if File.exists?(vb)
  system 'rm ~/.vimrc.after' if File.exists?(va)
  system 'rm -rf ~/.janus' if File.directory?(j)
  system 'rm ~/.bashrc' if File.exists?(b)
  system 'rm ~/.bash_profile' if File.exists?(bp)
  system 'rm ~/.gitconfig' if File.exists?(g)
  puts 'Vim file/folder and bash config files (.bashrc, .bash_profile) deleted!'
end
desc 'Create symlinks'
task :create_symlinks => :delete_symlinks do
  system 'ln -s ~/dotfiles/vim/vimrcbefore ~/.vimrc.before'
  system 'ln -s ~/dotfiles/vim/vimrcafter ~/.vimrc.after'
  system 'ln -s ~/dotfiles/vim/janus ~/.janus'
  system 'ln -s ~/dotfiles/bashrc ~/.bashrc'
  system 'ln -s ~/dotfiles/bash_profile ~/.bash_profile'
  system 'ln -s ~/dotfiles/gitconfig ~/.gitconfig'
  puts 'All sylmink created!'
end
task :default => :create_symlinks
