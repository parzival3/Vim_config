"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"	This is my vimrc config made with passion end painful 
"	hours of work I hop you'll apriciete it
"@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
"
"
"
"
"GENERAL SETTINGS
"
set number
syntax on
filetype on
filetype plugin on
set nohlsearch
set wildmode=longest,list,full
set wildmenu
"colorscheme solarized
let g:solarized_termcolors=256
set relativenumber
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set spelllang=it,en
"
"
"
"
"The local leader
let maploclleader = "-"
"
"Settings for 80 character max
set colorcolumn=+1
set textwidth=80
set expandtab
"
"Backup folder
set backupdir=~/.cache/vim/backup
set directory=~/.cache/vim/backup
"
"
"Searcing commands
nnoremap <silent><localleader>h :nohlsearch<cr>
"
"Settings for tabspace as 8 character like you want
set shiftwidth=8
set tabstop=8
"
"
"Indent current file
nnoremap <F7> mzgg=G`z
"
"
"REMAPED  KEYS
"
"Clipbord integration with xclip
vnoremap <silent> <Leader>c :!xclip -f -sel clip<CR>
nnoremap <silent> <Leader>v :r!xclip -o -sel clip<CR>
"
"
"
"Reload vim config
nnoremap <silent> <Leader>sv :source $MYVIMRC <CR>
nnoremap <silent> <Leader>ev :split $MYVIMRC <CR>
"
"
"
"Navigation Command
nnoremap L A <esc>
inoremap jò <esc>
vnoremap j; <esc>

inoremap <Left> <nop>
inoremap <Right> <nop>
inoremap <Up> <nop>
inoremap <Down> <nop>

"
"
"Navigazione tra le schede
nnoremap <silent> <c-k> :wincmd k<cr>
nnoremap <silent> <c-l> :wincmd l<cr>
nnoremap <silent> <c-h> :wincmd h<cr>
nnoremap <silent> <c-j> :wincmd j<cr>

nnoremap <silent> <Left>   :vertical resize -5<cr>
nnoremap <silent> <Right>  :vertical resize +5<cr>
nnoremap <silent> <Up>     :resize -5<cr>
nnoremap <silent> <Down>   :resize +5<cr>

nnoremap <leader>tt <c-w>T %


nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cp :cprevious<cr>
"
"
"
"
"
"
