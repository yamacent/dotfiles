DOTFILES=(
  .bash_profile
  .bashrc
  .gemrc
  .gitconfig
  .inputrc
  .vimrc
)

for file in ${DOTFILES[@]}
do
  if [ -a $HOME/$file ]; then
    ln -s $HOME/dotfiles/$file $HOME/$file.dot
    echo "The file already exists. Created a .dot file: $file"
  else
    ln -s $HOME/dotfiles/$file $HOME/$file
    echo "Created a symbolic link: $file"
  fi
done
