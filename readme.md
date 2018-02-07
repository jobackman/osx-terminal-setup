# Supa fresh dev terminal
Should set up a fresh dev terminal. Do it in order and it should work nicely.

## Homebrew
- [Install homebrew](https://brew.sh/index_se.html)

```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Iterm2
[Download and install](https://www.iterm2.com/downloads.html)
###
To use my iterm2 profile open preferences. Under _General_ check the box for _Load preferences from a custom folder or URL_ and select the folder _iterm_ in this repo.

## zsh
```bash
brew install zsh
```
## [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)
```bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## hardlink zsh config files
Hard link the terminal config files from the root of this repo. There might already be config files in your `~/` directory, in that case they need to be deleted before you can hardlink.

Either run the `link-configs.sh` which hard links all the below, or link what suits you manually.

I recommend linking the three first configs at least, since they will be used for all the other installations here. The _theme_ and the _vimrc_ are entirely optional.
```bash
ln ./config/.zshrc ~/.zshrc
ln ./config/.profile ~/.profile
ln ./config/.bash_profile ~/.bash_profile

# optional: Places the custom theme in oh-my-zsh theme folder. Only works if there is a directory with the name, i.e. after you have installed oh-my-zsh. Choice of theme is set in the .zshrc file.
ln ./config/lucyon.zsh-theme ~/.oh-my-zsh/themes/lucyon.zsh-theme

# optional: Link vim settings if you want my vim settings too.
ln ./config/.vimrc ~/vimrc
```

### oh-my-zsh plugins

#### [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
run script and add as plugin in the .zshrc file (already added if you hardlinked)
```bash
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### [zsh-auto-suggestions](https://github.com/zsh-users/zsh-autosuggestions#oh-my-zsh)
run script and add as plugin in the .zshrc file (already added if you hardlinked)
```bash
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

#### z
Added as a plugin in the .zshrc file (already added if you hardlinked)

## RVM
```bash
\curl -sSL https://get.rvm.io | bash -s stable
```

Then install some version of ruby with your rvm:
```bash
rvm install <some.version>
```

### Github changelog generator
```bash
gem install github_changelog_generator
```

## NVM
```bash
brew install nvm
```

```bash
nvm install <version>
nvm alias default <version>
```

## Yarn
__IMPORTANT:__ _Ensure yarn is installed with the flag --without-node, or it'll mess with your __nvm__ installation. Onceyou start swapping around node versions the yarn executable may or may not be found in the new node version._
```bash
brew install yarn --without-node
```

### Global installs from yarn:
#### ember-cli
```bash
yarn global add ember-cli
```
#### ember-cli-update
```bash
yarn global add ember-cli-update
```
#### eslint
```bash
yarn global add eslint
```
## Vim
If you want to use the vim I've set up, (far from perfect but better then default imo), run the plugin installer based on my .vimrc file:
```bash
vim +PluginInstall +qall
```


## Other useful brew casks
### phraseapp
```bash
brew tap phrase/brewed
brew install phraseapp
```
### ngrok
```bash
brew cask install ngrok
```
### hipchat
```bash
brew cask install hipchat
```
### sourcetree
```bash
brew cask install sourcetree
```
### spotify
```bash
brew cask install spotify
```

### appcleaner
```bash
brew cask install appcleaner
```

# Help
## Scripts wont run
If you have problem running the shell scripts you need to allow them to be executable:
```bash
chmod +x ./file-name.sh
```
