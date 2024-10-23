syntax off
set number
set relativenumber
set numberwidth=2

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let mapleader= " "
noremap <leader>sv :source $MYVIMRC<cr>



