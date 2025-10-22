" Options 
colorscheme retrobox
set background=dark

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

noremap <leader>e :24Lex<cr> 

noremap <leader>ff :Files<cr>
noremap <leader>fg :RG<cr>
noremap <leader>b :Buffers<cr>

" Vim-plugin
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()

" Statusline
set laststatus=2
set statusline=
set statusline+=%{StatuslineMode()}
set statusline+=%m
set statusline+=%=
set statusline+=%F

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    return "NORMAL"
  elseif l:mode==?"v"
    return "VISUAL"
  elseif l:mode==#"i"
    return "INSERT"
  elseif l:mode==#"R"
    return "REPLACE"
  elseif l:mode==?"s"
    return "SELECT"
  elseif l:mode==#"t"
    return "TERMINAL"
  elseif l:mode==#"c"
    return "COMMAND"
  elseif l:mode==#"!"
    return "SHELL"
  endif
endfunction
