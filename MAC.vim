"MAC.vim
"20200721, Ing. Ondrej DURAS (dury)
"transforms various formats of MAC address between themselves

"Clipboard must contain APname or MAC address in any format
"AP3C41.0EE2.3920 in clipboard <Ctrl+3> => pastes 3c:41:0e:e2:39:20 
"AP3C41.0EE2.3920 in clipboard <Ctrl+4> => pastes 3c-41-0e-e2-39-20
"AP3C41.0EE2.3920 in clipboard <Ctrl+5> => pastes 3c41.0ee2.3920
"AP3C41.0EE2.3920 in clipboard <Ctrl+7> => pastes AP3C41.0EE2.3920

function! Mac2Unix(MAC_IN)
  let l:MAC_IN = tolower(a:MAC_IN)
  let l:MAC_IN = substitute(l:MAC_IN,'^ap','','')
  let l:MAC_IN = substitute(l:MAC_IN,'[-:.]','','g')
  let l:MAC_OUT = l:MAC_IN[0:1] . ":" . l:MAC_IN[2:3] . ":"
  let l:MAC_OUT = l:MAC_OUT . l:MAC_IN[4:5] . ":" . l:MAC_IN[6:7] . ":"
  let l:MAC_OUT = l:MAC_OUT . l:MAC_IN[8:9] . ":" . l:MAC_IN[10:11]
  return l:MAC_OUT
endfunction


function! Mac2Windows(MAC_IN)
  let l:MAC_IN = tolower(a:MAC_IN)
  let l:MAC_IN = substitute(l:MAC_IN,'^ap','','')
  let l:MAC_IN = substitute(l:MAC_IN,'[-:.]','','g')
  let l:MAC_OUT = l:MAC_IN[0:1] . '-' . l:MAC_IN[2:3] . '-'
  let l:MAC_OUT = l:MAC_OUT . l:MAC_IN[4:5] . '-' . l:MAC_IN[6:7] . '-'
  let l:MAC_OUT = l:MAC_OUT . l:MAC_IN[8:9] . '-' . l:MAC_IN[10:11]
  return l:MAC_OUT
endfunction


function! Mac2Cisco(MAC_IN)
  let l:MAC_IN = tolower(a:MAC_IN)
  let l:MAC_IN = substitute(l:MAC_IN,'^ap','','')
  let l:MAC_IN = substitute(l:MAC_IN,'[-:.]','','g')
  let l:MAC_OUT = l:MAC_IN[0:3] . "." . l:MAC_IN[4:7] 
  let l:MAC_OUT = l:MAC_OUT . "." . l:MAC_IN[8:11] 
  return l:MAC_OUT
endfunction


function! Mac2APname(MAC_IN)
  let l:MAC_IN = tolower(a:MAC_IN)
  let l:MAC_IN = substitute(l:MAC_IN,'^ap','','')
  let l:MAC_IN = substitute(l:MAC_IN,'[-:.]','','g')
  let l:MAC_OUT = "AP" . l:MAC_IN[0:3] . "." . l:MAC_IN[4:7] 
  let l:MAC_OUT = toupper (l:MAC_OUT . "." . l:MAC_IN[8:11] )
  return l:MAC_OUT
endfunction

" Mapping MAC address delimiters
set iskeyword+=.
set iskeyword+=:
set iskeyword+=-

" Mapping translations onto keys <Ctrl+3,4,5,7>
" insert mode
imap <c-3> <esc>:let @*=Mac2Unix(@*)<cr>pi
imap <c-4> <esc>:let @*=Mac2Windows(@*)<cr>pi
imap <c-5> <esc>:let @*=Mac2Cisco(@*)<cr>pi
imap <c-7> <esc>:let @*=Mac2APname(@*)<cr>pi
" normal mode
nmap <c-3> <esc>:let @*=Mac2Unix(@*)<cr>pi
nmap <c-4> <esc>:let @*=Mac2Windows(@*)<cr>pi
nmap <c-5> <esc>:let @*=Mac2Cisco(@*)<cr>pi
nmap <c-7> <esc>:let @*=Mac2APname(@*)<cr>pi
" <Ctrl+1> takes word from under the cursor into the clipboard
imap <c-1> <esc>viwyi
nmap <c-1> viwy
" --- end ---


