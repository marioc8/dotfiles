
call plug#begin()

Plug 'liuchengxu/vim-which-key'		" Based on plugin 'hecal3/vim-leader-guide'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'mhinz/vim-startify'		" welcome screen 
Plug 'unblevable/quick-scope'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'		" easy comments
Plug 'itchyny/lightline.vim'		" statusbar
Plug 'NLKNguyen/papercolor-theme'	" theme
Plug 'lambdalisue/fern.vim'		" File manager
Plug 'antoinemadec/FixCursorHold.nvim'	" Fixes bug in fern with neovim (for now (See #120))
Plug 'christoomey/vim-tmux-navigator'	" Seamless navigation between tmux panes and vim splits

call plug#end()


" Plugins config

source ~/.config/nvim/quick-scope.vimrc 
source ~/.config/nvim/vim-which-key.vimrc 
source ~/.config/nvim/vimwiki.vimrc
source ~/.config/nvim/tmux-seamless-navigation.vimrc

" general

colorscheme PaperColor
set background=dark
set laststatus=2
set relativenumber
set nowrap

" vim split window: Focus new window
" To open new splits on the right or on the bottom of the screen add the following to your vimrc.

set splitbelow
set splitright

