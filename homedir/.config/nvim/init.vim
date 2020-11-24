
call plug#begin()

Plug 'liuchengxu/vim-which-key'		" Based on plugin 'hecal3/vim-leader-guide'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'		" welcome screen 
Plug 'unblevable/quick-scope'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'		" easy comments
Plug 'itchyny/lightline.vim'		" statusbar
Plug 'NLKNguyen/papercolor-theme'	" theme
Plug 'lambdalisue/fern.vim'		" File manager
Plug 'antoinemadec/FixCursorHold.nvim'	" Fixes bug in fern with neovim (for now (See #120))
Plug 'christoomey/vim-tmux-navigator'	" Seamless navigation between tmux panes and vim splits
Plug 'ton/vim-bufsurf'			" Buffers surfing based on view history

call plug#end()


" Plugins config

source ~/.config/nvim/quick-scope.vimrc 
source ~/.config/nvim/vim-which-key.vimrc 
source ~/.config/nvim/vimwiki.vimrc
source ~/.config/nvim/tmux-seamless-navigation.vimrc
source ~/.config/nvim/coc.vimrc
" source ~/.config/nvim/coc-python-with-lightline.vimrc
" source ~/.config/nvim/giving-vim-superpowers.vimrc
source ~/.config/nvim/java-compile.vimrc

" " coc-python
" set statusline^=%{coc#status()}

" general

colorscheme PaperColor
set background=dark
set laststatus=2
set relativenumber
set nowrap
set clipboard=unnamed

" enable 'gf' for current file and all traversing downwords
set path+=.,**

" remapping keys
" nnoremap <silent> <Tab> <C-w>p
map <M-j> <C-W>w
nmap <silent> <C-o> :BufSurfBack<CR>
nmap <silent> <C-i> :BufSurfForward<CR>
" change window size
" map <M-h> <C-W><
" map <M-l> <C-W>>

" Comment/Uncomment
nmap <silent> <C-z> :Commentary<CR>
vmap <silent> <C-z> :Commentary<CR>

" no highlight
nnoremap <silent> ,<space> :nohlsearch<CR>


" To focus new window - open new splits on the right or on the bottom of the screen 
set splitbelow
set splitright

