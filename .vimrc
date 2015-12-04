set shiftwidth=4
set tabstop=4
set expandtab

set number
syntax on

set nocompatible " be iMproved

" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

filetype off " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage Vundle
Bundle 'gmarik/vundle'

" My bundles here
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'taglist.vim'

filetype plugin indent on

" Key map
nmap <F2> :NERDTreeToggle <CR>
map <F3> :Tlist<CR>
map <F4> :bp<CR>
map <F5> :bn<CR>

" Vim-airline setting
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme = 'wombat'


" Taglist
let Tlist_Use_Right_Window = 1

" Install plugins the first time vim runs
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif
