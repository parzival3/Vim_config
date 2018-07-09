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
set guifont=Roboto\ Mono\ for\ Powerline\ 10

source $HOME/.vim/function.vim
set number
syntax on
filetype on
filetype plugin on
set noruler
set nohlsearch
set modeline
set modelines=5
set background=dark


set wildmode=longest,list,full
set wildmenu
set term=screen-256color
set relativenumber
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
set spelllang=it,en
set list
set listchars=tab:▸-,eol:¬,trail:·

"
"
"
"The local leader
let maplocalleader = "-"
"
"Source local configuration
"
nnoremap <localleader>sv :source .lvimrc<cr>
"
"Settings for 80 character max
set colorcolumn=+1
set textwidth=80
"set expandtab
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
set shiftwidth=4
set tabstop=4
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
nnoremap LA <esc>
inoremap j; <esc>
inoremap jò <esc>
vnoremap j; <esc>

" Commented out for normal peopele
"inoremap <Left> <nop>
"inoremap <Right> <nop>
"inoremap <Up> <nop>
"inoremap <Down> <nop>
" Commented out for normal peopele
"
nnoremap h <nop>
nnoremap l <nop>
nnoremap j <nop>
nnoremap k <nop>
"
"
nnoremap <S-Left>   :vertical resize -5<cr>
nnoremap <S-Right>  :vertical resize +5<cr>
nnoremap <S-Up>     :resize -5<cr>
nnoremap <S-Down>   :resize +5<cr>

nnoremap <leader>tt <c-w>T %


nnoremap <leader>cn :cnext<cr>
nnoremap <leader>cp :cprevious<cr>


" Spelling and dictionary words
nnoremap <silent><LocalLeader>ss :setlocal spell!<cr>
nnoremap <F8> :call SetSpell()<cr>
nnoremap <LocalLeader>ns ]s
nnoremap <LocalLeader>ps [s
nnoremap <LocalLeader>aw zg

nnoremap <silent><LocalLeader>hw :setlocal hlsearch!<cr>

" Status line
set laststatus=2
set statusline=%f
set statusline+=\ -\
set statusline+=FileType:
set statusline+=%y


" Explore the files

nnoremap <silent><Leader>ve :Vexplore<cr>
nnoremap <silent><Leader>se :Sexplore<cr>
nnoremap <silent><Leader>te :Texplore<cr>
"



" Editing hex file
"
augroup Binary
	au!
	au BufReadPre  *.bin let &bin=1
	au BufReadPost *.bin if &bin | %!xxd
	au BufReadPost *.bin set ft=xxd | endif
	au BufWritePre *.bin if &bin | %!xxd -r
	au BufWritePre *.bin endif
	au BufWritePost *.bin if &bin | %!xxd
	au BufWritePost *.bin set nomod | endif
augroup END

"
"
" For Fakevim Qtcreator
nnoremap <F6> :Run<CR>
"
"
" Highlight
augroup Highlight
	au ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
	au BufWinEnter * match ExtraWhitespace /\s\+$/
	au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
	au InsertLeave * match ExtraWhitespace /\s\+$/
	au BufWinLeave * call clearmatches()
augroup END
"
"
" Colorscheme
colorscheme gruvebox
let g:gruvebox_contrast_dark='hard'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	PATHOGEN
execute pathogen#infect()
set statusline+=%{fugitive#statusline()}
nnoremap <F9> :Gstatus <cr>
nnoremap <F10> :Gcommit <cr>
autocmd QuickFixCmdPost *grep* cwindow
