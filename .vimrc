set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'plasticboy/vim-markdown'
Plugin 'scrooloose/nerdtree'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'kien/ctrlp.vim'
Plugin 'valloric/youcompleteme'
Plugin 'pangloss/vim-javascript'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'joukevandermaas/vim-ember-hbs'
Plugin 'mxw/vim-jsx'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'isruslan/vim-es6'
Plugin 'flazz/vim-colorschemes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'airblade/vim-gitgutter'


call vundle#end()            " required
filetype plugin indent on    " required

" Start pathogen so all extensions can run
" execute pathogen#infect()

" Enables syntax highlighting and line-numbers
" Solarized theme
syntax enable

set number
set tabstop=2 shiftwidth=2 expandtab

" Enables scrolling in normal mode
" set mouse=n
set mouse=a
"if has("mouse_sgr")
"    set ttymouse=sgr
"else
"    set ttymouse=xterm2
"end
" map <ScrollWheelUp> <C-Y>
" map <ScrollWheelDown> <C-E>

" NERDTree
autocmd vimenter * NERDTree

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='dark'

let g:airline_right_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep= ''
let g:airline_left_sep = ''

" ctrlp.vim
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] "Ignores what's in .gitignore

" Javascript
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

