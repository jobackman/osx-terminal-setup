function debug {
  echo "🍌  $1"
}

function linkit {
  debug "Linking config files..."
  debug "./config/.zshrc --> ~/.zshrc"
  ln ./config/.zshrc ~/.zshrc
  debug "./config/.profile --> ~/.profile"
  ln ./config/.profile ~/.profile
  debug "./config/.bash_profile --> ~/.bash_profile"
  ln ./config/.bash_profile ~/.bash_profile
  debug "./config/lucyon.zsh-theme --> ~/.oh-my-zsh/themes/lucyon.zsh-theme"
  ln ./config/lucyon.zsh-theme ~/.oh-my-zsh/themes/lucyon.zsh-theme
  debug "./config/.vimrc --> ~/.vimrc"
  ln ./config/.vimrc ~/.vimrc
  debug "Done!"
}

linkit
