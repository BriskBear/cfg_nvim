" ================================= Insert Shortcuts ==================

  inoremap {<cr> {<cr>}<c-o><s-o>  
  inoremap [<cr> [<cr>]<c-o><s-o>  
  inoremap (<cr> (<cr>)<c-o><s-o>  
  inoremap ((<space> (  )<c-o>h
  inoremap [[<space> [  ]<c-o>h
  inoremap {{<space> {  }<c-o>h
  inoremap <<<space> <  ><c-o>h
  inoremap "" ""<c-o>i
  inoremap '' ''<c-o>i
  inoremap `` ``<c-o>i
  inoremap ('( ('')<c-o>i
  inoremap (( ()<c-o>i
  inoremap [[ []<c-o>i
  inoremap {{ {}<c-o>i
  inoremap << <><c-o>i
  inoremap <%= <%=<space><space>%><c-o>2h
  inoremap <%<space> <%<space><space>%><c-o>2h
  inoremap \"\" \"\"<c-o>h
  inoremap (s (<c-o>A)
  inoremap {s {<c-o>A}
  inoremap [s [<c-o>A]
  inoremap "s "<c-o>A"
  inoremap 's '<c-o>A'
  inoremap `s `<c-o>A`

" ================================= Visual Wrappers ==================

  vnoremap s' <esc>`>a'<c-o>`<'<esc>v`>l
