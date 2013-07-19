set autoindent
set hlsearch
set number
set hidden
set background=dark
set incsearch
set ignorecase
set smartcase
set wildmenu
syntax on
set mouse=a
map a :bn<cr>
map <F8> :bprevious<cr>
map <F9> :bnext<cr>
map <F7> :BufExplorer<cr>

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
      if bufwinnr(t:NERDTreeBufName) != -1
          if winnr("$") == 1
            q
          endif
      endif
  endif
endfunction

