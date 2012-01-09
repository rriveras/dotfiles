# TODO
# Add support for new janus:
# - For bash, move the RAKE file to the root & add tasks for remove & symlink the config files
# - Checkout the plugins in that directory (git submodules?)
desc 'Delete symlink to *.local if any, and create new ones'
task :delete_symlinks do
  f = File.expand_path('~/.vimrc.after')
  d = '~/.janus'
  system 'rm ~/.vimrc.after' if File.exists?(f)
  system 'rm -rf ~/.janus' if File.directory?(d)
  puts '*.after symlink and .janus folder deleted!'
end
desc 'Create symlinks'
task :create_symlinks => :delete_symlinks do
  system 'ln -s ~/dotfiles/vim/vimrcafter ~/.vimrc.after'
  system 'ln -s ~/dotfiles/vim/janus ~/.janus'
  puts '*.after and .janus sylmink created!'
end
task :default => :create_symlinks
