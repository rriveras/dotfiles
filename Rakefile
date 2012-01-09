# TODO
# Add support for new janus:
# - Add tasks for remove & symlink the config files
# - Add vim's plugins via git submodules in /vim/janus (will be symlink to ~.janus/)
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
