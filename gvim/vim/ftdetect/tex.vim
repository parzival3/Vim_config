augroup textgroup
        autocmd FileType tex setlocal nocursorline
        autocmd FileType tex :NoMatchParen
        autocmd FileType tex setlocal norelativenumber
        autocmd FileType tex nnoremap <F4> :call MakeSimpleFunc()<cr> 
augroup END
