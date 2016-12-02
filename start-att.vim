" 
" START.VIM - Starts predefined commands <Ctrl+A>
" 20150204, Ing. Ondrej DURAS Capt (Ret.)
" $VIM/start.vim
"

" #=vim source start.vim
" #=vim source $VIM/start.vim
" #=vim source c:/usr/dury/start.vim

" #=start a7 !start putty -load _bhxpla07
" #=start a5 !start putty -load _bhxpla05
" #=start s1 !start putty -load _bhxsuat01

function! StartCmd()
 echohl XVimSepar 
 echo "List of Predefined Commands"
 echohl XVimGood
 for LNUM in range(1,line("$"))
   let LINE =  getline(LNUM)
   if  LINE =~ "^#=start "
      echo LINE 
   endif 
 endfor 
 echohl XVimSepar
 let NAME=input("name> ")
 echohl Normal
 if  strlen(NAME)==0
     return
 endif
 for LNUM in range(1,line("$"))
   let LINE=getline(LNUM)
   if  LINE =~ "^#=start "
      let items=split(LINE,' \+')
      let command=substitute(LINE,'^#=start \+[a-zA-Z0-9]\+ \+','','')
      if NAME==items[1]
         redraw! 
         execute command
         echohl XVimSepar
         echo command
         echohl Normal
      endif   
   endif 
 endfor 
endfunction

nmap <c-a> :call StartCmd()<cr>



