filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'psliwka/vim-smoothie'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-dispatch'
Plugin 'vim-airline/vim-airline'
Plugin 'preservim/tagbar'
Plugin 'junegunn/vim-peekaboo'
Plugin 'preservim/vimux'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'sainnhe/gruvbox-material'
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
nnoremap <leader>vm :vertical terminal make<cr>
nnoremap <f9> :make<cr>

"Compile & opend output. Pandoc
nnoremap <leader>g :w! \| !comp <c-r>%<CR><CR>
nnoremap <leader>o :!opout <c-r>%<CR><CR>

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

"gruvbox material
if has('termguicolors')
  set termguicolors
endif

" Enable true color 启用终端24位色
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif                                                                                    

" For dark version.
set background=dark
                                                                                    
" For light version.
"set background=light
                                                                                    
" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'hard'
                                                                                    
colorscheme gruvbox-material
