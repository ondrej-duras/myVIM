"
" _VIMRC - Common VIM Configuration File for Linux platform
" 20140625, Ing. Ondrej DURAS (dury)
" $HOME/.vimrc
"

set ruler
set nowrap
set tw=0
syntax clear
language en_US
set noautoindent
set backspace=indent,eol,start
set nocompatible
redraw
set clipboard=unnamed


function! TypoEncryptedHide()
if strlen(&key) > 0
 "highlight Normal ctermfg=darkblue ctermbg=black
 set viminfo=
 set nobackup
 set noswapfile
 "set cryptmethod=blowfish
else 
 highlight Normal ctermfg=grey ctermbg=black
endif
endfunction
autocmd BufReadPost * :call TypoEncryptedHide()


"highlight Normal ctermfg=brown ctermbg=black
nmap <f1> :source $HOME/.ssh/dury.vim<cr>
"nmap <f1> :source $VIM/dury.vim<cr>
"nmap <f1> :source dury.vim<cr>
nmap <f2> :set foldmethod=manual<cr>zE:syntax clear<cr>

" TAB handling
nmap <f8>   :tabnext<cr>
nmap <f7>   :tabprev<cr>
nmap <s-f8> :tabnew<cr>:Explore<cr>
high TabLine     cterm=none ctermfg=grey  ctermbg=darkblue
high TabLineSel  cterm=none ctermfg=white ctermbg=darkcyan
high TabLineFill cterm=none ctermfg=grey  ctermbg=darkblue

" --- end ---


