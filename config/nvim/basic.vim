colorscheme brogrammer

set number
set relativenumber
set cursorline
set undofile
set autoread
set expandtab
set smartindent
set nocompatible

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript setlocal ts=2 sts=2 sw=2
autocmd FileType typescript.tsx setlocal ts=2 sts=2 sw=2
autocmd FileType ruby setlocal ts=2 sts=2 sw=2
autocmd FileType php setlocal ts=4 sts=4 sw=4

inoremap jk <Esc>
tnoremap <Esc> <C-\><C-n>

set clipboard+=unnamedplus

set completeopt=noinsert
let g:ale_completion_enabled = 1

" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

let g:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['prettier'],
\ 'typescript': ['prettier'],
\ 'typescript.jsx': ['prettier'],
\ 'cpp': ['clang-format'],
\ 'sh': ['shfmt'],
\ 'ruby': ['standardrb']
\}

let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver', 'typecheck'],
\ 'typescript.tsx': ['tslint', 'tsserver', 'typecheck'],
\ 'ruby': ['standardrb', 'rails_best_practices', 'brakeman', 'reek']
\ }

let g:ale_fix_on_save = 1

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.erb,*.jsx,*.tsx"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.erb,*.tsx'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

if isdirectory('.git')
    let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
endif
