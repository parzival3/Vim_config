nnoremap <F4> :call <SID>CompileC()<CR>

func! s:CompileC()
        exec "w"
        exec "!make"
endfunc

nnoremap <F3> :call <SID>Screen()<CR>

func! s:Screen()
        exec "!make screen"
endfunc

nnoremap <F2> :call <SID>Filesystem()<CR>

func! s:Filesystem()
        exec "!make fs"
endfunc
