nnoremap <F4> :call <SID>MakeSimpleFunc()<cr>
nnoremap <F3> :call <SID>CountWord()<cr>

function! s:MakeSimpleFunc()
        make!
endfunction 

function! s:CountWord()
	write
	!detex % | wc -w 
endfunction

function! ScountWord()
	return !detex % | wc -w 
endfunction

"set statusline+=%{ScountWord()}
