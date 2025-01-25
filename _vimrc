"
" _VIMRC - Common VIM Configuration File for Windows x86 platform
" 20140625, Ing. Ondrej DURAS (dury)
" $VIM\_vimrc  since VIM v7.3.46 bud works on sunOS/vim6x
" for MSYS2 enviroment cp $VIM/_vimrc ~/.vimrc -vi ...to update MSYS2 env as well
" VERSION=2021.040701
" VERSION=2024.020901
" VERSION=2024.022101 ST guifg on HideEncrypted ...last ST version for NTB-OSK2 NTB-ST1 NTB-PB1 ...ST-NMS as well

set noswapfile
set ruler
set nowrap
set showcmd
syntax clear
"language us_US
set noautoindent
set backspace=indent,eol,start
set nocompatible
"redraw
set clipboard=unnamed
set mouse=a
high Underlined ctermfg=brown ctermbg=black
silent! set termguicolors
high Folded cterm=NONE ctermbg=NONE guibg=NONE guifg=#604020
high xfold  cterm=NONE ctermbg=NONE guibg=NONE guifg=#604020
high Visual cterm=reverse ctermbg=white ctermfg=red guibg=#ffffff guifg=#ff0000
let @d="#=vim source \$VIM/itn-dc.vim"
let @e="# --- end ---"

function! TypoEncryptedHide()
if strlen(&key) > 0
 set termguicolors
 "highlight Normal ctermfg=darkblue ctermbg=black
 highlight Normal ctermfg=darkblue ctermbg=NONE guifg=#101050 guibg=NONE
 highlight Terminal ctermfg=darkblue ctermbg=NONE guifg=#101050 guibg=NONE
 set viminfo=
 set nobackup
 set noswapfile
 set cryptmethod=blowfish
else 
 highlight Normal ctermfg=grey ctermbg=NONE guifg=#a0a090 guibg=NONE
 highlight Terminal ctermfg=grey ctermbg=NONE guifg=#a0a090 guibg=NONE
endif
endfunction
autocmd BufReadPost * :call TypoEncryptedHide()


"highlight Normal ctermfg=brown ctermbg=black
nmap <f1> :source $VIM/dury.vim<cr>
"nmap <f1> :source dury.vim<cr>
nmap <f2> :set foldmethod=manual<cr>zE:syntax clear<cr>

" TAB handling
nmap <f8>   :tabnext<cr>
nmap <f7>   :tabprev<cr>
nmap <s-f8> :tabnew<cr>:Explore<cr>
high TabLine     cterm=none ctermfg=grey  ctermbg=darkblue
high TabLineSel  cterm=none ctermfg=white ctermbg=darkcyan
high TabLineFill cterm=none ctermfg=grey  ctermbg=darkblue

" Slovencina, Rustina v GVIM
" :call Utf8()
" ftp://ftp.vim.org/pub/vim/pc/gvim73_46.zip
function! Utf8()
  set enc=utf-8
  set fileencoding=utf-8
  ""pre Rustinu
  "set guifont=Courier_New:h14:cRUSSIAN
  ""pre slovenske texty
  set guifont=Courier_New:h10:cRUSSIAN
  color desert
" !start osk.exe ... zavolanie vizualnej klavesnice
endfunction

if has("gui_running")
  "UTF-8/RU and colorscheme
  call Utf8()
  "no menu, no toolbar & 140x40
  set guioptions-=T
  set guioptions-=m
  set columns=140 lines=40
endif
" --- end ---


