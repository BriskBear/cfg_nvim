" ================================= Insert Shortcuts ==================

  inoremap {<cr> {<cr>}<c-o><s-o>  
  inoremap [<cr> [<cr>]<c-o><s-o>  
  inoremap (<cr> (<cr>)<c-o><s-o>  
  inoremap ((<space> (  )<c-o>F 
  inoremap [[<space> [  ]<c-o>F 
  inoremap {{<space> {  }<c-o>F 
  inoremap <<<space> <  ><c-o>F 
  inoremap "" ""<c-o>F"
  inoremap '' ''<c-o>F'
  inoremap `` ``<c-o>F`
  inoremap ('( ('')<c-o>F'
  inoremap (( ()<c-o>F)
  inoremap [[ []<c-o>F]
  inoremap {{ {}<c-o>F}
  inoremap << <><c-o>F>
  inoremap <%= <%=<space><space>%><c-o>F 
  inoremap <%<space> <%<space><space>%><c-o>F 
  inoremap \"\"  \"\"<c-o>F 
  inoremap "s <esc>lmh`>a"<c-o>`h"
  inoremap 's <esc>lmh`>a'<c-o>`h'
  inoremap `s <esc>lmh`>a`<c-o>`h`
  inoremap {s <esc>lmh`>a}<c-o>`h{
  inoremap (s <esc>lmh`>a)<c-o>`h(
  inoremap [s <esc>lmh`>a]<c-o>`h[
  inoremap <s <esc>lmh`>a><c-o>`h<
  nnoremap <Leader>" mh/"<CR>x?"<CR>x`hh
  nnoremap <Leader>' mh/'<CR>x?'<CR>x`hh
  nnoremap <Leader>` mh/`<CR>x?`<CR>x`hh
  nnoremap <Leader>( mh/)<CR>x?(<CR>x`hh
  nnoremap <Leader>{ mh/}<CR>x?{<CR>x`hh
  nnoremap <Leader>[ mh/]<CR>x?[<CR>x`hh
  nnoremap <Leader>< mh/><CR>x?<<CR>x`hh

" ================================= Visual Wrappers ==================

  vnoremap s' <esc>`>a'<c-o>`<'<esc>v`>l
