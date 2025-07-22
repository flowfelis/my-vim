nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>
call which_key#register('<Space>', "g:which_key_map")
" Define prefix dictionary
let g:which_key_map =  {}

let g:which_key_map.h = 'left pane'
let g:which_key_map.j = 'down pane'
let g:which_key_map.k = 'up pane'
let g:which_key_map.l = 'right pane'

let g:which_key_map.v = 'Vertical Split'

let g:which_key_map.w = 'Close window'
let g:which_key_map.q = 'Close Buffer'

let g:which_key_map.f = { 'name' : '+find' }
let g:which_key_map.f.v = 'Vim config files'

let g:which_key_map.c = { 'name' : '+code' }
let g:which_key_map.n = { 'name' : '+vimwiki' }

let g:which_key_map.f.v = 'Vim config files'
