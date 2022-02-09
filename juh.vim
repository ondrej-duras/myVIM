" JUH - HUmanized Json file syntax file
" 20220209, Ing. Ondrej DURAS
" JSON files have comments removed by standard as to prevent
" metacommands within json files. It could be fine for machine-to-machine,
" but it's really unconfortable for human-to-machine communication.
" That's why ... I have allowed comments within my JSON files back.
" And before the file content is passed to machine, the comments are removed.
" These files are called .juh becose .huj is peiorative in east Slovak dialect.

syntax match juh_marker  /[:,\{\}\[\]]/
syntax match juh_comment /^\s\+#.*$/
syntax match juh_comment /#[^"]\+$/
syntax match juh_value   /".*",\?$/  contains=juh_marker


syntax match juh_first   /^"\S\+"\s*:/  contains=juh_marker
syntax match juh_second  /^ \+"\S\+"\s*:/

high Normal      ctermfg=grey
high juh_marker  ctermfg=red
high juh_comment ctermfg=green
high juh_first   ctermfg=cyan
high juh_second  ctermfg=darkcyan
high juh_value   ctermfg=brown
" --- end ---
