:set nocompatible
:set runtimepath+=~/.vim
execute pathogen#infect()

:set t_Co=256
":set ff=unix
:set nu

:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set expandtab
:set backspace=2

:set autoindent
:set gdefault
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:SuperTabDefaultCompletionType = "context"

:color wombat256mod
:syntax on
:set guifont=Source_Code_Pro_Semibold:h10:cANSI
:set guioptions-=T
:set guioptions-=L
:set cursorline
:let &colorcolumn="80"
:highlight colorcolumn guibg=gray20
:set nowrap
:set incsearch
:set ruler

au VimEnter * NERDTree
au BufWinEnter * NERDTreeMirror
let NERDTreeShowHidden=1

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitright

nnoremap th  :tabfirst<CR>
nnoremap tk  :tabnext<CR>
nnoremap tj  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<CR>
nnoremap tn  :tabnext<CR>
nnoremap tm  :tabm<CR>
nnoremap td  :tabclose<CR>

nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

nnoremap <A-F1> 1gt
nnoremap <A-F2> 2gt
nnoremap <A-F3> 3gt
nnoremap <A-F4> 4gt
nnoremap <A-F5> 5gt
nnoremap <A-F6> 6gt
nnoremap <A-F7> 7gt
nnoremap <A-F8> 8gt
nnoremap <A-F9> 9gt
nnoremap <A-F0> 10gt

set nobackup
set swapfile

let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

set statusline+=%#warningmsg#
set statusline+=%*

