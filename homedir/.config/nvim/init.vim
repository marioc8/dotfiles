
call plug#begin()

Plug 'liuchengxu/vim-which-key'		" Based on plugin 'hecal3/vim-leader-guide'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
Plug 'mhinz/vim-startify'
Plug 'unblevable/quick-scope'
Plug 'vimwiki/vimwiki'
Plug 'tpope/vim-commentary'
Plug 'itchyny/lightline.vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'lambdalisue/fern.vim'
Plug 'antoinemadec/FixCursorHold.nvim'	" Fixes bug in fern with neovim (for now (See #120))
"Plug 'christoomey/vim-tmux-navigator'	" Seamless navigation between tmux panes and vim splits

call plug#end()


" Plugins config

source ~/.config/nvim/quick-scope.vimrc 
source ~/.config/nvim/vim-which-key.vimrc 
source ~/.config/nvim/vimwiki.vimrc

" general

colorscheme PaperColor
set background=dark
set laststatus=2
set relativenumber
set nowrap


