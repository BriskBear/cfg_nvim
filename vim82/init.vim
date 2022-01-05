  set nocompatible

" =================== General Configuration ===========================

  set shell=powershell
  set shellcmdflag=-command
  set autoread               " reload changes from outside of vim
  set colorcolumn=80,100     " Line Ending Indicator
  set number                 " #s 'relative' to cursor
  set history=10000          " much cmdline history
  set ignorecase             " ignore case
  set lcs+=space:▓           " Use column to indicate spaces when enabled
  set mouse=c                " Mouse Enabled
  set showcmd                " show commands, even if incomplete?
  set showmode               " default, display mode at bottom line
  set smartcase              " Unless includes capital
  set cursorline             " Locate the cursor vertically
  set path+=**               " search everywhere for files
  set omnifunc=htmlcomplete#CompleteTags
  set encoding=utf8
  set fileencoding=utf8
  autocmd FileType ruby setl omnifunc=syntaxcomplete#Complete

  " update leader key to space
  let mapleader=" "
  set timeout timeoutlen=1500

  " syntax highlighting
  syntax on

  " Auto-Numbers
  augroup numbertoggle
    autocmd BufEnter,FocusGained,InsertLeave * if expand('%:t') == "-MINIMAP-"|echom "NoNum!"|else|set relativenumber|echom 'relSet'|endif
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
  augroup END
  autocmd BufWritePre * :Minimap

" =================== Swap Files Off ==================================

  set noswapfile
  set nobackup
  set nowb

" =================== Persistent Undo ==================================

  silent !mkdir 'v:\backups' >> V:\build_bak.txt
  set undodir='v:\backups'
  set undofile

" =================== Folds ============================================

  set foldmethod=indent " Fold based upon indent
  set foldnestmax=3     " Depth max of 3 nested folds`
  set nofoldenable      " Disable default folding

" =================== Keys =============================================

  source $VIMRUNTIME/Keymap.vim 

" =================== Indentation ======================================

  set autoindent
  set smartindent
  set smarttab
  set shiftwidth=2
  set softtabstop=2
  set tabstop=2
  set expandtab

  filetype  plugin  on
  filetype  indent  on

  set nowrap    " Don't Wrap lines
  set linebreak " Wrap lines at a convenient point

" =================== Window Pane Resizing ============================

  nnoremap <silent> <Leader>[ :exe "resize" . (winheight(0) * 3/2)<CR>
  nnoremap <silent> <Leader>] :exe "resize" . (winheight(0) * 2/3)<CR>

" =================== Seeing Is Beliving ==============================

  nmap <Leader>b :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk<CR>;
  nmap <Leader>n :%.!seeing_is_believing --timeout 12 --line-length 500 --number-of-captures 300 --alignment-strategy chunk --xmpfilter-style<CR>;
  nmap <Leader>c  :%.!seeing_is_believing --clean<CR>
  nmap mA # => <esc>
  vmap <leader>m :norm A # => <esc>

" =================== Plugins Load =====================================

  set runtimepath+=$VIMRUNTIME/kien/ctrlp.vim
  set runtimepath+=$VIMRUNTIME/tpope/vim-endwise
  set runtimepath+=$VIMRUNTIME/ervandew/vim-supertab
  set runtimepath+=$VIMRUNTIME/junegunn/vim-easy-align
  set runtimepath+=$VIMRUNTIME/wfxr/minimap

  let g:minimap_width=10
  let g:minimap_auto_start=1
  let g:minimap_auto_start_win_enter=1

" =================== Colors ==========================================

  source $VIMRUNTIME/Color.vim

" =================== Status Line =====================================

  set statusline=
  set statusline+=%#LineNr#
  " set statusline+=%=
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\ %f
  set statusline+=\ \ \ \ \ \ 
  set statusline+=\|%c
  set statusline+=\|
  set statusline+=-%l-
  set statusline+=\ \ \ \ \ \ 
  set statusline+=%{&fileencoding?&fileenconding:&encoding}
  set statusline+=\:%{&fileformat}
