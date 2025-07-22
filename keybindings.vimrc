inoremap kj <ESC>

" select a line
nnoremap vl _v$h

" remove highlight until next search
nnoremap <ESC> <cmd>noh<CR>

" buffer movement
nnoremap <leader>[ <cmd>bprevious<CR>
nnoremap <leader>] <cmd>bnext<CR>

" windows
noremap <leader>h <C-w>h
noremap <leader>j <C-w>j
noremap <leader>k <C-w>k
noremap <leader>l <C-w>l

nnoremap <leader>v <C-w>v<C-w>l

" Close buffer and windows
nnoremap <silent> <leader>w :close<CR>
nnoremap <silent> <leader>q :bdelete<CR>

" Open vim config files
" nnoremap <leader>fc :e ~/.vim/init/<CR>
" nnoremap <leader>fc :lua require("fuzzyy").open("~/.vim/init", { layout = "horizontal" })<CR>



" Project
" nnoremap <C-o> :ProjectOpen<Space>
" nnoremap <C-l> :ProjectList<CR>


" Terminal
tnoremap kj <C-\><C-n>

" function! ToggleTerminal()
"   for buf in range(1, bufnr('$'))
"     if bufexists(buf) && getbufvar(buf, '&buftype') ==# 'terminal'
"       if bufwinnr(buf) != -1
"         " Terminal is visible — close its window
"         execute bufwinnr(buf) . 'wincmd c'
"         return
"       endif
"     endif
"   endfor
"   " No terminal visible — open new terminal
"   split | terminal
" endfunction

" nnoremap <leader>t :call ToggleTerminal()<CR>

" Fuzzyy
let g:fuzzyy_enable_mappings = 0
nnoremap <silent> <leader>fb :FuzzyBuffers<CR>
nnoremap <silent> <leader>fc :FuzzyCommands<CR>
nnoremap <silent> <leader><leader> :FuzzyFiles<CR>
nnoremap <silent> <leader>/ :FuzzyGrep<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>fi :FuzzyInBuffer<CR>
nnoremap <silent> <leader>fm :FuzzyMru<CR>
nnoremap <silent> <leader>fp :FuzzyPrevious<CR>
nnoremap <silent> <leader>fr :FuzzyMruCwd<CR>
