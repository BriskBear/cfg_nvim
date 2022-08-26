" ================================= Insert Shortcuts ==================

  inoremap {<cr> {<cr>}<c-o><s-o>  
  inoremap [<cr> [<cr>]<c-o><s-o>  
  inoremap (<cr> (<cr>)<c-o><s-o>  
  inoremap ((<space> (  )<c-o>F 
  inoremap [[<space> [[  ]]<c-o>F 
  inoremap {{<space> {  }<c-o>F 
  inoremap <<<space> <  ><c-o>F 
  inoremap "" ""<esc>F"a
  inoremap '' ''<esc>F'a
  inoremap `` ``<esc>F`a
  inoremap ('( ('')<c-o>F'
  inoremap ("( ("")<c-o>F"
  inoremap (( ()<esc>F(a
  inoremap [[ []<esc>F[a
  inoremap {{ {}<esc>F{a
  inoremap << <><esc>F<a
  inoremap <%= <%=<space><space>%><c-o>F 
  inoremap <%<space> <%<space><space>%><c-o>F 
  inoremap \" \"\"<esc>F"a
  inoremap (s (<c-o>A)
  inoremap {s {<c-o>A}
  inoremap [s [<c-o>A]
  inoremap "s "<c-o>A"
  inoremap 's '<c-o>A'
  inoremap `s `<c-o>A`

" ================================= Visual Wrappers ==================

  vnoremap s' <esc>`>a'<c-o>`<'<esc>v`>l
  vnoremap s" <esc>`>a"<c-o>`<"<esc>v`>l
  vnoremap s` <esc>`>a`<c-o>`<`<esc>v`>l
  vnoremap s[ <esc>`>a]<c-o>`<[<esc>v`>l
  vnoremap s( <esc>`>a)<c-o>`<(<esc>v`>l
  vnoremap s{ <esc>`>a}<c-o>`<{<esc>v`>l
