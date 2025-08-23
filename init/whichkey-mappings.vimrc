nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")
" Define prefix dictionary
let g:which_key_map =  {}

" Buffers
let g:which_key_map['['] = 'previous buffer'
let g:which_key_map[']'] = 'next buffer'

" Splits
let g:which_key_map.h = 'left pane'
let g:which_key_map.j = 'down pane'
let g:which_key_map.k = 'up pane'
let g:which_key_map.l = 'right pane'
let g:which_key_map.v = 'Vertical Split'
let g:which_key_map.s = 'Horizontal Split'

" Highlighting
let g:which_key_map.d = 'No highlighting'

" Open Loclist
let g:which_key_map.x = 'Open LocList'

" Close
let g:which_key_map.w = 'Close window'
let g:which_key_map.q = 'Close Buffer'

" Find
let g:which_key_map.f = { 'name' : '+find' }
let g:which_key_map.f.v = 'Vim config files'

" Code
let g:which_key_map.c = { 'name' : '+code' }

" VimWiki
let g:which_key_map.n = { 'name' : '+vimwiki' }
let g:which_key_map.n.l = 'linkify'

