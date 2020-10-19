" Bind "jj" to <esc> to jump out of insert mode
inoremap jj <esc>

let mapleader = "\<Space>"

" With this you can enter ":Config" in normal mode to open the Vim
" configuration.
command! Config execute ":e $MYVIMRC"

" Call ":Reload" to apply the latest .vimrc contents
command! Reload execute ":source $MYVIMRC"

" Simple tab navigation with <C-h> and <C-l> to intuitively go left and right
noremap <C-h> :tabp<CR>
noremap <C-l> :tabn<CR>

" Close the tab with <C-j>
noremap <C-J> :tabc<CR>

" Enable mouse
if has('mouse')
	set mouse=a
endif

