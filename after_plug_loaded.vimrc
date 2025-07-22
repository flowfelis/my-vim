" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1  " Ale with Airline
let g:airline#extensions#bufferline#enabled = 1 " Bufferline with Airline
let g:airline#extensions#branch#enabled = 1 " Fugitive with Airline

" Bufferline
let g:bufferline_echo = 0
let g:bufferline_show_bufnr = 0

" vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

" VimWiki
let wiki = {}
let wiki.path = '~/my_wiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]

" Indent Line
let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Vindent
let g:vindent_motion_OO_prev   = '[=' " jump to prev block of same indent.
let g:vindent_motion_OO_next   = ']=' " jump to next block of same indent.
let g:vindent_motion_more_prev = '[+' " jump to prev line with more indent.
let g:vindent_motion_more_next = ']+' " jump to next line with more indent.
let g:vindent_motion_less_prev = '[-' " jump to prev line with less indent.
let g:vindent_motion_less_next = ']-' " jump to next line with less indent.
let g:vindent_motion_diff_prev = '[;' " jump to prev line with different indent.
let g:vindent_motion_diff_next = '];' " jump to next line with different indent.
let g:vindent_motion_XX_ss     = '[p' " jump to start of the current block scope.
let g:vindent_motion_XX_se     = ']p' " jump to end   of the current block scope.
let g:vindent_object_XX_ii     = 'ii' " select current block.
let g:vindent_object_XX_ai     = 'ai' " select current block + one extra line  at beginning.
let g:vindent_object_XX_aI     = 'aI' " select current block + two extra lines at beginning and end.
let g:vindent_jumps            = 1    " make vindent motion count as a |jump-motion| (works with |jumplist|).


" ALE

" Set linters
let g:ale_linters = {'python': ['jedils', 'flake8']}

let g:ale_python_jedils_use_global = 1
let g:ale_python_flake8_use_global = 1

" Set fixers
let g:ale_fixers = { '*': ['trim_whitespace'], 'javascript': ['eslint'], 'python': ['autopep8', 'isort'] }

" Find virtualenvs for linters
let g:ale_python_auto_virtualenv = 1
" popup, instead of a new split
let g:ale_hover_to_preview = 1
let g:ale_hover_to_floating_preview = 1

set omnifunc=ale#completion#OmniFunc
set signcolumn=yes
nnoremap K <cmd>ALEHover<CR>
nnoremap gd <cmd>ALEGoToDefinition<CR>
nnoremap gr <cmd>ALEFindReferences<CR>
nnoremap <leader>ca <cmd>ALECodeAction<CR>
nnoremap <leader>cf <cmd>ALEFix<CR>

set completeopt=menuone,noselect

" Autohighlight
" set updatetime=500 " wait before activation for 1/2 second.
" highlight CursorAutoHighlight guibg=#585858

" Yank Highlighting
let g:highlightedyank_highlight_duration = 400

" CTRL-P
nnoremap <leader>fv <cmd>CtrlP ~/.vim/init/<CR>

" Use <C-n> and <C-p> instead of <C-j>/<C-k> for navigation
" let g:ctrlp_prompt_mappings = {
"   \ 'PrtSelectMove("j")': ['<c-n>'],
"   \ 'PrtSelectMove("k")': ['<c-p>'],
"   \ }

" Vim-Project
nnoremap <leader>p <cmd>ProjectList<CR>

" Fuzzyy
nnoremap <leader>fw :FuzzyGrep <C-R><C-W><CR>
