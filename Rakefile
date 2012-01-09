# TODO
# Add support for new janus:
# - Add vim's plugins via git submodules in /vim/janus (will be symlink to ~.janus/)
desc 'Delete symlink to *.local if any, and create new ones'
task :delete_symlinks do
  # Check the existence of files and folders, and if true, delete it
  f = File.expand_path('~/.vimrc.after')
  d = '~/.janus'
  b = File.expand_path('~/.bashrc')
  p = File.expand_path('~/.bash_profile')
  system 'rm ~/.vimrc.after' if File.exists?(f)
  system 'rm -rf ~/.janus' if File.directory?(d)
  system 'rm ~/.bashrc' if File.exists?(f)
  system 'rm ~/.bash_profile' if File.exists?(f)
  puts 'Vim file/folder and bash config files (.bashrc, .bash_profile) deleted!'
end
desc 'Create symlinks'
task :create_symlinks => :delete_symlinks do
  system 'ln -s ~/dotfiles/vim/vimrcafter ~/.vimrc.after'
  system 'ln -s ~/dotfiles/vim/janus ~/.janus'
  system 'ln -s ~/dotfiles/bashrc ~/.bashrc'
  system 'ln -s ~/dotfiles/bash_profile ~/.bash_profile'
  puts 'All sylmink created!'
end
task :default => :create_symlinks
