if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/isaac/code/dotfiles/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/isaac/.vim/dein'
let g:dein#_runtime_path = '/Users/isaac/.vim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/isaac/.vim/dein/.cache/init.vim'
let &runtimepath = '/Users/isaac/.config/nvim,/etc/xdg/nvim,/Users/isaac/.local/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/isaac/.vim/dein/repos/github.com/Shougo/dein.vim,/Users/isaac/.vim/dein/.cache/init.vim/.dein,/usr/local/Cellar/neovim/0.2.1/share/nvim/runtime,/Users/isaac/.vim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/Users/isaac/.local/share/nvim/site/after,/etc/xdg/nvim/after,/Users/isaac/.config/nvim/after'
filetype off
