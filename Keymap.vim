
" ================================= Braces & Brackets =================

  exe "source " expand(prefix) . "Brackets.vim"

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

" ================================ Shebang ============================

  nnoremap 3r mhggI#!/usr/bin/env ruby<esc>`h
  nnoremap 3b mhggI#!/bin/bash<esc>`h:w<CR>:e<CR>o<CR>

" ================================ Utility ============================

  nnoremap ~ :r! 
  nnoremap X :bd1<cr>
  inoremap kj <esc>l
  inoremap KJ <esc>l
  vnoremap kj <esc>l
  vnoremap KJ <esc>l
  nnoremap <c-s> :w<CR>
  nnoremap <c-x> :q<CR>
  nnoremap <Leader>r :source $MYVIMRC<CR>
  nnoremap <Leader>R :set nu relativenumber!<CR>
  nnoremap <Leader>q :qa!<CR>
  nnoremap <Leader>% :! ./%<CR>
  nnoremap <Leader>t :tabnew 
  nnoremap <Leader>N :new 
  nnoremap <A-t> :tabfind 
  nnoremap <Leader>col :exe "tabfind " expand(color_file)<CR>
  nnoremap <Leader>key :tabfind ~/.config/nvim/Keymap.vim<CR>
  nnoremap <Leader>init :tabfind ~/.config/nvim/init.vim<CR>
  nnoremap <Leader>s :w 
  nnoremap <Leader>S :w 

" ================================= Whitespace Toggle =================

  nnoremap <A-p> :set list!<CR>
  vnoremap <A-p> :set list!<CR>

