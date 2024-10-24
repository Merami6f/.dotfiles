" Options 
syntax off
colorscheme zaibatsu
set number
set nowrap
set relativenumber
set numberwidth=2

" Cursor
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Keymaps
let mapleader= " "
noremap <leader>sv :source $MYVIMRC<cr>

" Statusline
set laststatus=2
set statusline=
set statusline+=%F
set statusline+=\ 
set statusline+=%m
set statusline+=%=
set statusline+=>
set statusline+=>
set statusline+=\ 
set statusline+=\ 
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=<
set statusline+=<
set statusline+=\ 
set statusline+=\ 

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

