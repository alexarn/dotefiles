set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    Plugin 'jlanzarotta/bufexplorer'
    Plugin 'joonty/vdebug'
call vundle#end()            " required
filetype plugin indent on    " required

" Alias
command! Be BufExplorer

"active la coloration syntaxique
syntax on

"affiche de la ligne et de la colonne en bas à droite
set ruler

"affiche les numéros de lignes
set number

set expandtab
set sw=4
set ts=4

"change le theme par defaut
colorscheme desert

"indentation intelligente suivant les langages
set et
set smarttab

"Affiche lors de la recherche les mots correspondant en les surlignant
set hlsearch

"affiche la parenthèse correspondante
set sm

set incsearch

set nocompatible

augroup Koha
    au!

    au BufRead,BufNewFile *.tt setlocal ft=tt2html

    au FileType perl setlocal et sw=4 ts=4 sts=4
    au FileType perl vnoremap <buffer> <F8> :!perltidy -q --noprofile<CR>
    au FileType perl setlocal tw=80
    au FileType perl setlocal fo=croqlj
augroup END

"Show non-printable character
set list listchars=tab:\ø\ ,trail:°,nbsp:␣

"No end of line
set binary
set noendofline

" autocomplete files path
set wildmenu
set wildmode=list:longest

set backspace=indent,eol,start