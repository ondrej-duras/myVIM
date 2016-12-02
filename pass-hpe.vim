" 
" PASS.VIM - Handling Passwords
" 20150204, Ing. Ondrej DURAS Capt (Ret.)
" $VIM/pass.vim
"

" #=vim source pass.vim
" #=vim source $VIM/pass.vim
" #=vim source c:/usr/dury/pass.vim

" #=secret aa ssh shadmin h3ll  //all shadmin in att env
" #=secret qq sql root mysll    //komentar len tak 
" #=secret vv sql view spo      //vsetkych predbehli

function! PwdList()
 echohl XVimSepar 
 echo "List of Psswords"
 echohl XVimGood
 for LNUM in range(1,line("$"))
   let LINE =  getline(LNUM)
   if  LINE =~ "^#=secret "
      let items=split(LINE,' \+')
      let comment=substitute(LINE,'^.* \/\/','','')
      "echo items[1]." type=".items[2]." user=".items[3]." pass=".items[4]." comments=".comment
      echo items[1]." type=".items[2]." user=".items[3]." pass=xxx comments=\"".comment."\""
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
   if  LINE =~ "^#=secret "
      let items=split(LINE,' \+')
      let comment=substitute(LINE,'^.* \/\/','','')
      "echo items[1]." type=".items[2]." user=".items[3]." pass=".items[4]." comments=".comment
      if NAME==items[1]
         redraw! 
         call setreg("*",items[4])
         echohl XVimSepar
         echo "Password \"".items[1]."\" for user=\"".items[3]."\" has been put into clipboard #".comment
         echohl Normal
      endif   
   endif 
 endfor 
endfunction

nmap <c-q> :call PwdList()<cr>



