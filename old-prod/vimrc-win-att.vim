"
" _VIMRC - Common VIM Configuration File for Windows x86 platform
" 20140625, Ing. Ondrej DURAS (dury)
" $VIM\_vimrc
"

set ruler
set nowrap
syntax clear
language us_US
set noautoindent
set backspace=indent,eol,start
set nocompatible
redraw
set clipboard=unnamed


function! TypoEncryptedHide()
if strlen(&key) > 0
 highlight Normal ctermfg=darkblue ctermbg=black
 set viminfo=
 set nobackup
 set noswapfile
 set cryptmethod=blowfish
else 
 highlight Normal ctermfg=grey ctermbg=black
endif
endfunction
autocmd BufReadPost * :call TypoEncryptedHide()


"highlight Normal ctermfg=brown ctermbg=black
nmap <f1> :source $VIM/dury.vim<cr>
"nmap <f1> :source dury.vim<cr>
nmap <f2> :set foldmethod=manual<cr>zE:syntax clear<cr>

" --- end ---


