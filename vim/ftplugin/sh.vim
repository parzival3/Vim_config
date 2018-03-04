nnoremap <F2> :call <SID>Run()<CR>


func! s:Run()
	exec "w"
	exec "! if ! [  -x % ] ; then  chmod +x %; fi"
	exec "!%"
endfunc
