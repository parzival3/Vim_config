nnoremap <F2> :call <SID>Run()<CR>


func! s:Run()
	exec "w"
	exec "!chmod +x %"
	exec "!./%"
endfunc
