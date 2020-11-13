" Vim Which Key config 



" By default timeoutlen is 1000 ms
set timeoutlen=500

" let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
call which_key#register('<Space>', "g:which_key_map")
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" Define prefix dictionary
let g:which_key_map =  {}

" 'name' is a special field. It will define the name of the group, e.g., leader-f is the "+file" group.
" Unnamed groups will show a default empty string.

" Note:
" Some complicated ex-cmd may not work as expected since they'll be
" feed into `feedkeys()`, in which case you have to define a decicated
" Command or function wrapper to make it work with vim-which-key.
" Ref issue #126, #133 etc.

" let g:which_key_map['o'] = {
" 	\ 'name' : '+open',
" 	\ 'q' : [':copen'	, 'open-quickfix']	,
" 	\ 's' : [':lopen'	, 'open-locationlist']	,
" 	\ }

" nnoremap <silent> <leader>q :quit<CR>
" let g:which_key_map.q = 'quit'

let g:which_key_map['a'] = {
	\ 'name' : '+',
	\ 'c' : [':checkhealth'			, 'vim-checkhealth']	,
	\ 'd' : [':e $MYVIMRC'			, 'edit-vimrc']		,
	\ 'r' : [':update | so $MYVIMRC'	, 'reload-vim-config']	,
	\ }

let g:which_key_map['f'] = {
	\ 'name' : '+file',
	\ 'x' : [':update | !bash %'		, ':bash %']	,
	\ 'p' : [':update | !python3 %'		, ':python3 %']	,
	\ 'q' : [':quit'			, ':quit']	,
	\ 's' : [':update'			, 'save file']	,
	\ 'e' : [':Fern . -drawer -reveal=%'	, 'filemanager']	,
	\ }

let g:which_key_map.b = {
      \ 'name' : '+buffer' ,
      \ '1' : ['b1'        , 'buffer 1']        ,
      \ '2' : ['b2'        , 'buffer 2']        ,
      \ 'd' : ['bd'        , 'delete-buffer']   ,
      \ 'f' : ['bfirst'    , 'first-buffer']    ,
      \ 'h' : ['Startify'  , 'home-buffer']     ,
      \ 'i' : [':intro'	   , 'intro-buffer']    ,
      \ 'l' : ['blast'     , 'last-buffer']     ,
      \ 'n' : ['bnext'     , 'next-buffer']     ,
      \ 'p' : ['bprevious' , 'previous-buffer'] ,
      \ 's' : [':update'   , 'save-buffer']	,
      \ '?' : ['Buffers'   , 'fzf-buffer']      ,
      \ }

"let g:which_key_map.l = {
      "\ 'name' : '+lsp',
      "\ 'f' : ['spacevim#lang#util#Format()'          , 'formatting']       ,
      "\ 'r' : ['spacevim#lang#util#FindReferences()'  , 'references']       ,
      "\ 'R' : ['spacevim#lang#util#Rename()'          , 'rename']           ,
      "\ 's' : ['spacevim#lang#util#DocumentSymbol()'  , 'document-symbol']  ,
      "\ 'S' : ['spacevim#lang#util#WorkspaceSymbol()' , 'workspace-symbol'] ,
      "\ 'g' : {
        "\ 'name': '+goto',
        "\ 'd' : ['spacevim#lang#util#Definition()'     , 'definition']      ,
        "\ 't' : ['spacevim#lang#util#TypeDefinition()' , 'type-definition'] ,
        "\ 'i' : ['spacevim#lang#util#Implementation()' , 'implementation']  ,
        "\ },
      "\ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'other-window']          ,
      \ 'd' : ['<C-W>c'     , 'delete-window']         ,
      \ '-' : ['<C-W>s'     , 'split-window-below']    ,
      \ '|' : ['<C-W>v'     , 'split-window-right']    ,
      \ '2' : ['<C-W>v'     , 'layout-double-columns'] ,
      \ 'h' : ['<C-W>h'     , 'window-left']           ,
      \ 'j' : ['<C-W>j'     , 'window-below']          ,
      \ 'l' : ['<C-W>l'     , 'window-right']          ,
      \ 'k' : ['<C-W>k'     , 'window-up']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-window-left']    ,
      \ 'J' : [':resize +5'  , 'expand-window-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-window-right']   ,
      \ 'K' : [':resize -5'  , 'expand-window-up']      ,
      \ '=' : ['<C-W>='     , 'balance-window']        ,
      \ 's' : ['<C-W>s'     , 'split-window-below']    ,
      \ 'v' : ['<C-W>v'     , 'split-window-below']    ,
      \ '?' : ['Windows'    , 'fzf-window']            ,
      \ }





