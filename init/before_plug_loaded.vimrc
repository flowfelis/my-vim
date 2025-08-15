" ALE
" Allow autocompletion
let g:ale_completion_enabled = 1

" VimWiki
" Change prefix keymapping due to conflict
let g:vimwiki_map_prefix = '<Leader>n'


" Vim Buffet
let g:buffet_powerline_separators = 1
let g:buffet_tab_icon = "\uf00a"
let g:buffet_left_trunc_icon = "\uf0a8"
let g:buffet_right_trunc_icon = "\uf0a9"

" Note: Make sure the function is defined before `vim-buffet` is loaded.
function! g:BuffetSetCustomColors()
  hi! link BuffetCurrentBuffer StatusLineTerm
  hi! link BuffetActiveBuffer WarningMsg
  hi! link BuffetTab StatusLine

endfunction
