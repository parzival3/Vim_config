nnoremap <F4> :call <SID>Source()<CR>

func! s:Source()
	exec "w"
	exec "source %"
endfunc
