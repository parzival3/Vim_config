function! SetSpell()
        execute "setlocal spell!"
        if &spell ==# "nospell"
                echom "Spell disabled"
        else
                echom "Spell enabled"
        endif
endfunction
        
