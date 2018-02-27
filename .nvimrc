set runtimepath+=/Users/isaac/.vim/dein/repos/github.com/Shougo/dein.vim

" Tempfix
let g:ale_emit_conflict_warnings = 0

let g:python2_host_prog = '/usr/local/bin/python'
let g:python3_host_prog = '/usr/local/bin/python3'

"dein Scripts-----------------------------
if dein#load_state('/Users/isaac/.vim/dein')
  call dein#begin('/Users/isaac/.vim/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/isaac/.vim/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#add('w0rp/ale')

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  " Required:
  call dein#end()
  call dein#save_state()
endif

"End dein Scripts-------------------------
"

filetype plugin indent on
syntax enable

source ~/.vimrc

let g:deoplete#enable_at_startup = 1
let g:syntastic_mode_map = { 'mode': 'passive' }

let g:ale_linters = { 'python': ['flake8'], }


