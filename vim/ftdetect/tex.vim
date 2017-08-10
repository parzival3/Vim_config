augroup textgroup
        autocmd FileType tex setlocal nocursorline
        autocmd FileType tex :NoMatchParen
        autocmd FileType tex setlocal norelativenumber
        autocmd FileType tex :echom "Hello I'm in the autogrup of tex"
augroup END
