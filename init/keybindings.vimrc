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
nnoremap <leader>s <C-w>s<C-w>j

" Close buffer and windows
nnoremap <silent> <leader>w :close<CR>
nnoremap <silent> <leader>q :bdelete<CR>

" Terminal
nnoremap <leader>t <cmd>term<CR>
tnoremap kj <C-\><C-n>

" Explore with netrw
nnoremap <leader>e <C-w>v<cmd>Exp<CR>
