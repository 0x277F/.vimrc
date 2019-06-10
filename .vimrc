set pyx=3
filetype plugin indent on
set termguicolors
" tab spacing
set tabstop=4
set shiftwidth=4
set expandtab

" splits
set splitright
set splitbelow

set number

" lightline
set laststatus=2
set noshowmode
let g:lightline = { }

" ale
set omnifunc=ale#completion#OmniFunc
" let g:ale_completion_enabled = 1 " handled by deoplete
highlight SpellCap guibg=LightSalmon

" deoplete
let g:deoplete#enable_at_startup = 1

" ale lightline
let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'left',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'left',
      \ }
let g:lightline.active = { 'right': 
            \[[ 'lineinfo' ], 
            \[ 'percent' ], 
            \[ 'fileformat', 'fileencoding', 'filetype' ], 
            \[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]]
            \}

syntax enable

colorscheme space-vim-dark

packloadall
silent! helptags ALL

" ale keybindings
map <C-b> :ALEGoToDefinitionInTab<CR>
map <C-r> :ALEFindReferences<CR>

" tab navigation
nnoremap <M-Left> :tabprevious<CR>
nmap <M-j> :tabprevious<CR>
nnoremap <M-Right> :tabnext<CR>
nmap <M-l> :tabnext<CR>


