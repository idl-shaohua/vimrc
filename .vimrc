"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [Vundle]
" The configuration takes advantage from VundleVim to manage plugins. Please 
" refer Quick Start of project site https://github.com/VundleVim/Vundle.vim. 
" Installation:
" git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Load custom plugins here...
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'flazz/vim-colorschemes'

" HTML
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" JAVA
Plugin 'javacomplete'

call vundle#end()
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Program editing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set expandtab
set shiftwidth=4
set number

" C++
autocmd FileType cpp,h highlight OverLength ctermbg=red ctermfg=white guibg=#592929
autocmd FileType cpp,h match OverLength /\%81v.\+/

" JAVA
setlocal omnifunc=javacomplete#Complete
autocmd FileType java inoremap <buffer> . .<C-X><C-O><C-P>

colorscheme Revolution 
syntax on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure key maps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F2> :NERDTreeToggle <CR>
map <F3> :bp <CR>
map <F4> :bn <CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep=' '
let g:airline#extensions#tabline#left_alt_sep='|'
let g:airline#extensions#tabline#buffer_nr_show=1
let g:airline_theme='base16_flat'

