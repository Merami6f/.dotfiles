" Options 

syntax on
filetype plugin on
set omnifunc=syntaxcomplete#Complete
set background=dark
set t_Co=256
set nocompatible
set nowrap

set number
set relativenumber
set numberwidth=2
set tabstop=4
set shiftwidth=4

set incsearch
set cursorline
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

function! Formatonsave()
  let l:formatdiff = 1
  pyf /usr/share/clang/clang-format.py
endfunction
autocmd BufWritePre *.h,*.cc,*.cpp, *.c call Formatonsave()
autocmd FileType markdown iabbrev id@ ---<CR>id:<CR>alliases:<CR>tags:<CR>---

" Statusline
set laststatus=2
set statusline+=%1*
set statusline+=<
set statusline+=<
set statusline+=%{StatuslineMode()}
set statusline+=>
set statusline+=>
set statusline+=%3*
set statusline+=%f
set statusline+=%m
set statusline+=%=
set statusline+=%2*
set statusline+=%{&ff}
set statusline+=|
set statusline+=%l
set statusline+=:
set statusline+=%L
hi User1 ctermbg=grey ctermfg=black guibg=grey guifg=black
hi User3 ctermbg=black ctermfg=lightgray guibg=black guifg=lightgray
hi User2 ctermbg=darkgray ctermfg=black guibg=darkgray guifg=black

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
