
" ================================= Braces & Brackets =================

  source $HOME/.config/nvim/Brackets.vim

" ================================= YAML ==============================

  nnoremap <Leader>yml ggI--- #<esc>:r!date -u +\%s<CR>kJx2o<esc>I...<esc>kms

" ================================= Comments ==========================

   nnoremap <Leader># mrI# <esc>`r
   nnoremap <Leader><A-#> mr^d2l`r
   vnoremap # <c-v>I# <esc>
   vnoremap <A-#> I<Del><Del><esc>

" ================================= Completion ========================

  inoremap </ </<c-x><c-o>
  inoremap "<Space>=== " ==================================<c-o>mn===================================<CR>

" ================================= EasyAlign =========================

  xmap ga <Plug>(EasyAlign)
  nmap ga <Plug>(EasyAlign)
  vmap <M-A> gaip*<c-X>

" ================================= Functions =========================

  function SplitMap()
    :r!lsdev
    :normal vip
    :sort
    :g/\/$/put!=''
    /Rakefile
    n
    :normal VG
    :normal xgg2jp
    :normal vip
    :exec sort
  endfunction

" ================================= Insert Movement ===================

  inoremap <c-h> <c-o>h
  inoremap <c-j> <c-o>j
  inoremap <c-k> <c-o>k
  inoremap <c-l> <esc>la

" ================================= select all ========================

  inoremap <a-a> <esc>mpggvg
  nnoremap <A-a> mpggVG
  vnoremap <A-a> mpggVG

" ================================= Tabs / unTabs =====================

  nnoremap <Leader><Tab> mp^<c-v>'ii  <esc>`p
  nnoremap <Leader><A-Tab> mp<home><c-v>'ihx`p 
  nnoremap <A-Tab> vip<c-v>lx
  vnoremap <A-Tab> <c-v>lxv
  nnoremap <Tab> mpvip<c-v>I  <esc>`p
  vnoremap <Tab> <c-v>I<Tab><esc>

" ================================ Utility ============================

  nnoremap ~ :r!
  nnoremap X :bd1<cr>
  inoremap kj <esc>l
  inoremap KJ <esc>l
  vnoremap KJ <esc>l
  vnoremap kj <esc>l
  nnoremap X :bd!1<CR>
  nnoremap D ggI--- #<esc>:r!date -u +\%s<CR>kJx
  nnoremap <c-n> :set number!<CR>
  nnoremap <c-s> :w<CR>
  nnoremap <c-x> :q<CR>
  nnoremap <Leader>r :source $MYVIMRC<CR>
  nnoremap <Leader>q :q!<CR>
  nnoremap <Leader>% :! ./%<CR>
  nnoremap <Leader>t :tabnew 
  nnoremap <Leader>N :new<CR>
  nnoremap <A-t> :tabfind 
  nnoremap <A-f> :sfind 
  nnoremap <A-r> :resize 
  nnoremap <A-R> :resize line('.')
  nnoremap <Leader>col :sfind ~/.config/nvim/Color.vim<CR>
  nnoremap <Leader>key :sfind ~/.config/nvim/Keymap.vim<CR>
  nnoremap <Leader>init :sfind ~/.config/nvim/init.vim<CR>
  nnoremap <Leader>s :w 
  nnoremap <Leader>S :w 

" ================================= Whitespace Toggle =================

  nnoremap <A-p> :set list!<CR>
  vnoremap <A-p> :set list!<CR>
