" Colorscheme
set termguicolors
colorscheme gruvbox
set background=light
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h9

" Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#ale#enabled = 1  " Ale with Airline
let g:airline#extensions#bufferline#enabled = 1 " Bufferline with Airline
let g:airline#extensions#branch#enabled = 1 " Fugitive with Airline


" Get Project name
function! GetProjectInfo()
  if exists('g:vim_project') && !empty(g:vim_project)
     let name = g:vim_project.name
     let branch = g:vim_project.branch
     if empty(branch)
       return ''.name.'' . '  '
     else
       return ''.name.', '.branch.''
     endif
   else
     return ''
  endif
endfunction

function! GetPythonVersionFile() abort
  let l:filepath = getcwd() . '/.python-version'
  if filereadable(l:filepath)
    let l:lines = readfile(l:filepath)
    " Return the first line (usually the version string)
    return len(l:lines) > 0 ? '🐍 ' . l:lines[0] . '  ' : ''
  else
    return ''
  endif
endfunction

function! AirlineInit()
  let g:airline_section_c = airline#section#create(['%{GetProjectInfo()}'])
  " let g:airline_section_c = airline#section#create_right(['%{getcwd()}'])
  " let g:airline_section_x = airline#section#create(['%{GetPythonVersionFile()}', 'filetype'])
  " let g:airline_section_x = airline#section#create(['%{GetPythonVersionFile()}', '%{WebDevIconsGetFileTypeSymbol()}'])
  let g:airline_section_x = airline#section#create(['%{GetPythonVersionFile()}'])
  let g:airline_section_y = airline#section#create(['filetype'])
  " let g:airline_section_z = airline#section#create(['%P'])
endfunction
autocmd VimEnter * call AirlineInit()

" vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup
let g:auto_save_silent = 1  " do not display the auto-save notification

" VimWiki
let wiki = {}
let wiki.path = '~/my_wiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]
highlight link VimwikiHeader1 ModeMsg
highlight link VimwikiHeader2 Question
highlight link VimwikiHeader3 Title
nnoremap <silent> <leader>nl :call vimwiki#base#linkify()<cr>

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
let g:ale_linters = {'python': ['jedils', 'pylint', 'flake8']}

let g:ale_python_flake8_use_global = 1
let g:ale_python_autopep8_use_global = 1

let g:ale_python_pylint_change_directory = 1
" Set .pylintrc file location
" let g:ale_python_pylint_options = '--rcfile ~/Projects/.pylintrc'

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
nnoremap <leader>cf <cmd>ALEFix<CR><cmd>echo 'ALEFix'<CR>

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
nnoremap <leader>o <cmd>ProjectList<CR>

" FuzzBox
let g:fuzzbox_enable_mappings = 0
nnoremap <silent> <leader>fb :FuzzyBuffers<CR>
nnoremap <silent> <leader>fc :FuzzyCommands<CR>
nnoremap <silent> <leader><leader> :FuzzyFiles<CR>
nnoremap <silent> <leader>/ :FuzzyGrep<CR>
nnoremap <silent> <leader>fh :FuzzyHelp<CR>
nnoremap <silent> <leader>fi :FuzzyInBuffer<CR>
nnoremap <silent> <leader>fm :FuzzyMru<CR>
nnoremap <silent> <leader>fp :FuzzyPrevious<CR>
nnoremap <silent> <leader>fr :FuzzyMruCwd<CR>

" Git Gutter
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>ghs <Plug>(GitGutterStageHunk)
nmap <leader>ghu <Plug>(GitGutterUndoHunk)
nmap <leader>ghp <Plug>(GitGutterPreviewHunk)
omap ih <Plug>(GitGutterTextObjectInnerPending)
omap ah <Plug>(GitGutterTextObjectOuterPending)
xmap ih <Plug>(GitGutterTextObjectInnerVisual)
xmap ah <Plug>(GitGutterTextObjectOuterVisual)
let g:gitgutter_close_preview_on_escape=1

" NERDTree
nmap <leader>e <cmd>NERDTreeToggle<CR>
