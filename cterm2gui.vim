"CTERm2GUI
"20211014, Ing. Ondrej DURAS (dury)
" ... within the customized texts,
" usually terminal colors are used only
" But using UTF-8 and Windows together the GVIM must be used.
" ... cterm highlighting colors need to be copied into gui
" That's what foloowing procedure does.


" =~# case sensitive =~? case-insensitive =~ depends on ic variable
function! CTerm2Gui()

  "cterm numeric color replacements
  let ct={}
  let ct['0']="Black"
  let ct['1']="DarkBlue"
  let ct['2']="DarkGreen"
  let ct['3']="DarkCyan"
  let ct['4']="DarkRed"
  let ct['5']="DarkMagenta"
  let ct['6']="Brown"
  let ct['7']="LightGrey"
  let ct['8']="DarkGrey"
  let ct['9']="Blue"
  let ct['10']="Green"
  let ct['11']="Cyan"
  let ct['12']="Red"
  let ct['13']="Magenta"
  let ct['14']="Yellow"
  let ct['15']="White"

  " get highlighting setup
  redir => HIGHSETUP
  silent high
  redir END

  let TERM2GUI = ""
  let CT=0
  let MULTILINE = split(HIGHSETUP,"\n")
  for LINE in MULTILINE
    " contains aline a terminal-color definition ?
    " if not => not interesting for fix
    if LINE !~ "="
      continue
    endif
    if LINE =~ "gui[fb]g"
      continue
    endif
    if LINE !~ "cterm[fb]g"
      continue
    endif

    " output line to command
    let NLINE = substitute(LINE,"xxx","","")
    let NLINE = substitute(NLINE,"^","high ","")

    "isolate the fix
    let UPDATE=""
    if LINE =~ "ctermfg="
      let FG=substitute(LINE,"^.*ctermfg=","","")
      let FG=substitute(FG,'\s.*$',"","")
      if has_key(ct,FG)
        let FG=ct[FG]
      endif
      let UPDATE=UPDATE . " guifg=" . FG
    endif
    if LINE =~ "ctermbg="
      let BG=substitute(LINE,"^.*ctermbg=","","")
      let BG=substitute(BG,'\s.*$',"","")
      if has_key(ct,BG)
        let BG=ct[BG]
      endif
      let UPDATE=UPDATE . " guibg=" . BG
    endif

    " finalize
    let TERM2GUI = TERM2GUI . NLINE . UPDATE ."\n"
    let CT = CT + 1
  endfor  
  echo CT . " highlights"
  return TERM2GUI
endfunction 

" map <c-a>,c 
"=vim syntax match Xx /\<xxx\>/
"=vim high Xx ctermfg=green

