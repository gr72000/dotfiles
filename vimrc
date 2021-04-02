filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'psliwka/vim-smoothie'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/tagbar'
Plugin 'junegunn/vim-peekaboo'
Plugin 'preservim/vimux'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
"Plugin 'tpope/vim-repeat' te potencia el '.'.
" plugins here
" plugins here
call vundle#end()
filetype plugin indent on

set hlsearch
set incsearch
nnoremap <leader>, :noh<cr>
set ignorecase
set infercase
set number
set relativenumber
let mapleader = "\<Space>"
nmap <leader>vr :vsp $MYVIMRC<cr>
nmap <leader>so :source $MYVIMRC<cr>
set backspace=indent,eol,start
autocmd Filetype help nnoremap <buffer> q :q<cr>
syntax on
set shiftwidth=4
autocmd Filetype c,cpp :set cindent
set autoindent
abbreviate #i #include <iostream>
abbreviate usi using namespace std;
abbreviate #v #include <vector>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set ignorecase
set autoindent
set smartindent
set smartcase
nmap <leader>z :w<cr>
nmap <leader>c :!g++ % && ./a.out<cr>
set clipboard+=unnamedplus
set hidden
set scrolloff=4
set showfulltag
vnoremap <leader>p "_dP
nnoremap <F8> :TagbarToggle<cr>

"Ver si de verdad sirve"
nnoremap <leader>m :call VimuxRunCommand("g++ % && ./a.out")<cr>

"cosas de syntastic
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*

    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0

"ultisnips configuration
let g:UltiSnipsExpandTrigger="`"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
