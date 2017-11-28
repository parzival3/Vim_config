noremap <F4> :call <SID>CompileC()<CR>
nnoremap <F5> :call <SID>DebugC()<CR>
nnoremap <F3> :call <SID>Screen()<CR>
nnoremap <F10> :call <SID>Run()<CR>

func! s:CompileC()
        exec "w"
        exec "!make"
endfunc

func! s:DebugC()
        exec "w"
        exec "!make debug"
endfunc

func! s:Screen()
        exec "w"
        exec "!make screen"
endfunc

func! s:Run()
	exec "w"
	exec "!make run"
endfunc


