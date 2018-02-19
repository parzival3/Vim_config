
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('/home/enrico/Git/Vim_config/gvim/vim/plugged')

" Make sure you use single quotes
Plug 'lervag/vimtex'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Initialize plugin system
call plug#end()
