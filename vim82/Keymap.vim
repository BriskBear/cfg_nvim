
" ================================= Braces & Brackets =================

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
  inoremap "s <esc>lmh`>a"<c-o>`h"
  inoremap 's <esc>lmh`>a'<c-o>`h'
  inoremap `s <esc>lmh`>a`<c-o>`h`
  inoremap "e <esc>ea"<c-o>2b"<c-o>3e
  inoremap 'e <esc>ea'<c-o>2b'<c-o>3e
  inoremap `e <esc>ea`<c-o>2b`<c-o>3e
  nnoremap <Leader>" mh/"<cr>x?"<cr>x`h
  nnoremap <Leader>' mh/'<cr>x?'<cr>x`h
  nnoremap <Leader>` mh/`<cr>x?`<cr>x`h

 ================================= Comments ==========================

   nnoremap <Leader># mrI# <esc>`r
   nnoremap <Leader><A-#> mr^d2l`r
   vnoremap # <c-v>I# <esc>
   vnoremap <A-#> I<Del><Del><esc>

 ================================= Completion ========================

  inoremap </ </<c-x><c-o>
  inoremap "<Space>=== " ==================================<c-o>mn===================================<CR>

" ================================= EasyAlign =========================

  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  vmap <M-A> gaip*<c-X>

" ================================= Insert Movement ===================

  inoremap <c-h> <c-o>h
  inoremap <c-j> <c-o>j
  inoremap <c-k> <c-o>k
  inoremap <c-l> <esc>la

" ================================= Select All ========================

  inoremap <A-a> <esc>mpggVG
  nnoremap <A-a> mpggVG
  vnoremap <A-a> mpggVG

" ================================= Tabs / unTabs =====================

  nnoremap <Leader><Tab> mp^<c-v>'ii  <esc>`p
  nnoremap <Leader><A-Tab> mp<home><c-v>'ihx`p 
  nnoremap <A-Tab> vip<c-v>lx
  vnoremap <A-Tab> <c-v>lxv
  nnoremap <Tab> mpvip<c-v>I  <esc>`p


" ================================ Utility ============================

  nnoremap ~ :r! 
  inoremap kj <esc>
  inoremap KJ <esc>
  vnoremap KJ <esc>
  vnoremap kj <esc>
  nnoremap <c-s> :w<CR>
  nnoremap <c-x> :q<CR>
  nnoremap <Leader>r :source $MYVIMRC<CR>
  nnoremap <Leader>R :set nu relativenumber!<CR>
  nnoremap <Leader>q :q!<CR>
  nnoremap <Leader>% :! ./%<CR>
  nnoremap <Leader>t :tabnew 
  nnoremap <A-f> :sfind 
  nnoremap <A-r> :resize 
  nnoremap <Leader>key :sfind $VIMRUNTIME/Keymap.vim<CR>
  nnoremap <Leader>init :sfind $VIMRUNTIME/init.vim<CR>
  nnoremap <Leader>col :sfind $VIMRUNTIME/Color.vim<CR>
  vnoremap s' <esc>`>a'<c-o>`<'<esc>vf'
  vnoremap s" <esc>`>a"<c-o>`<"<esc>vf"
  vnoremap s( <esc>`>a)<c-o>`<(<esc>vf)
  vnoremap s[ <esc>`>a]<c-o>`<[<esc>vf]
  vnoremap s{ <esc>`>a}<c-o>`<{<esc>vf}
  vnoremap s< <esc>`>a><c-o>`<<<esc>vf>

" ================================= Whitespace Toggle =================

  nnoremap <A-p> :set list!<CR>
  vnoremap <A-p> :set list!<CR>
