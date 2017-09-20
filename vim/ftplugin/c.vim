nnoremap <F4> :call <SID>CompileC()<CR>
nnoremap <F5> :call <SID>DebugC()<CR>

func! s:CompileC()
        exec "w"
        exec "!make"
endfunc

func! s:DebugC()
        exec "w"
        exec "!make debug"
endfunc


