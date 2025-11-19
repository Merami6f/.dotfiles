" Options 
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set nocompatible
set background=dark
set t_Co=256


syntax on
set number
set relativenumber
set numberwidth=2
set showcmd
set nowrap
set incsearch
set cursorline

set cindent
set tabstop=4
set shiftwidth=4
set smartindent

" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"


" Keymaps
let mapleader= " "
noremap <leader>sv :source $MYVIMRC<cr>
vnoremap J :m '>+1<cr>gv=gv
vnoremap K :m '>-4<cr>gv=gv

noremap <leader>ff :Files<cr>
noremap <leader>fg :RG<cr>
noremap <leader>fb :Buffers<cr>
" copy file path
noremap yp :let @" = expand("%")<cr>

" Vim-plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'vim-airline/vim-airline'
call plug#end()

" colorscheme
colorscheme sonokai
"colorscheme gruvbox
"let g:gruvbox_contrast_dark ='soft'

function! Formatonsave()
  let l:formatdiff = 1
  pyf /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp, *.c call Formatonsave()
