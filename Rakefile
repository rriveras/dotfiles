# TODO
# - Add .gitignore_global
desc 'Delete symlink to *.local if any, and create new ones'
task :delete_symlinks do
  # Check the existence of files and folders, and if true, delete it
  vb = File.expand_path('~/.vimrc.before')
  va = File.expand_path('~/.vimrc.after')
  j = '~/.janus'
  bf = '~/.bash'
  b = File.expand_path('~/.bashrc')
  bp = File.expand_path('~/.bash_profile')
  g = File.expand_path('~/.gitconfig')
  gi = File.expand_path('~/.gitignore_global')
  system 'rm ~/.vimrc.before' if File.exists?(vb)
  system 'rm ~/.vimrc.after' if File.exists?(va)
  system 'rm -rf ~/.janus' if File.directory?(j)
  system 'rm -rf ~/.bash' if File.directory?(bf)
  system 'rm ~/.bashrc' if File.exists?(b)
  system 'rm ~/.bash_profile' if File.exists?(bp)
  system 'rm ~/.gitconfig' if File.exists?(g)
  system 'rm ~/.gitignore_global' if File.exists?(gi)
  puts 'Vim file/folder and bash config files (.bashrc, .bash_profile) deleted!'
end
desc 'Create symlinks'
task :create_symlinks => :delete_symlinks do
  fullPath = File.dirname(__FILE__)
  system 'ln -s ' + fullPath + '/vim/vimrcbefore ~/.vimrc.before'
  system 'ln -s ' + fullPath + '/vim/vimrcbefore ~/.vimrc.before'
  system 'ln -s ' + fullPath + '/vim/vimrcafter ~/.vimrc.after'
  system 'ln -s ' + fullPath + '/vim/janus ~/.janus'
  system 'ln -s ' + fullPath + '/bash ~/.bash'
  system 'ln -s ' + fullPath + '/bashrc ~/.bashrc'
  system 'ln -s ' + fullPath + '/bash_profile ~/.bash_profile'
  system 'ln -s ' + fullPath + '/gitconfig ~/.gitconfig'
  system 'ln -s ' + fullPath + '/gitignore_global ~/.gitignore_global'
  puts 'All sylmink created!'
end
task :default => :create_symlinks
