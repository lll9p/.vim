" ©Lao https://laolilin.com
" File              : 02.options.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
" Show line numbers.
set number

" Always expand tabs to spaces.
set expandtab

" By default, use two space indents and don't wrap automatically.
set textwidth=0
runtime! include/spacing/two.vim

" Keep a buffer around even when abandoned.
" Without this, jump-to-definition in LSP clients seems to complain if the
" file hasn't been saved. In other words, let us go to other buffers even if
" the current one isn't saved.
set hidden

if has('nvim')
  " This causes neovim to use the system clipboard for all yanking operations,
  " instead of needing to use the '+' or '*' registers explicitly.
  set clipboard+=unnamedplus

  " Prefer xsel over xclip. With xclip, pasting into gmail/gdocs results in
  " stripping all newlines. But with xsel, it works correctly.
  " See: https://github.com/neovim/neovim/issues/5853
  if executable('xsel')
    " This is copied directly from runtime/autoload/provider/clipboard.vim.
    let g:clipboard = {
          \   'name': 'myxsel',
          \   'copy': {
          \      '+': 'xsel --nodetach --input --clipboard',
          \      '*': 'xsel --nodetach --input --primary',
          \    },
          \   'paste': {
          \      '+': 'xsel --output --clipboard',
          \      '*': 'xsel --output --primary',
          \   },
          \   'cache_enabled': 1,
          \ }
  endif
endif

" There's no need to do syntax highlighting past this many columns. The default
" of 3000 is a bit and degrades performance.
set synmaxcol=200

" While typing a search, start highlighting results.
set incsearch

" When scrolling, always keep the cursor N lines from the edges.
set scrolloff=10

" Convenience for automatic formatting.
"   t - auto-wrap text by respecting textwidth
"   c - auto-wrap comments by respecting textwidth
"   r - auto-insert comment leading after <CR> in insert mode
"   o - auto-insert comment leading after O in normal mode
set formatoptions=tcro

" Don't switch window focus when using HTTP client.
let g:http_client_focus_output_window=0

" Don't conceal things in markup languages.
let g:pandoc#syntax#conceal#use = 0

" When there's more than one match, complete the longest common prefix among
" them and show the rest of the options.
set wildmode=list:longest,full

" Strip trailing whitespace on every save.
fun! StripTrailingWhitespace()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call StripTrailingWhitespace()

autocmd FileType rust runtime! include/lang/rust.vim

autocmd FileType go runtime! include/lang/go.vim


autocmd FileType ledger
      \ let b:Comment=";"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/four.vim

autocmd FileType wini
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim

autocmd FileType conf
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim
      \ | set indentexpr=
      \ | set smartindent

autocmd FileType toml
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim
      \ | set indentexpr=
      \ | set smartindent

autocmd FileType yaml
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim
      \ | set indentexpr=
      \ | set smartindent

autocmd FileType java
      \ let b:Comment="//"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/four.vim

autocmd FileType javascript
      \ let b:Comment="/*"
      \ | let b:EndComment="*/"
      \ | runtime! include/spacing/two.vim

autocmd FileType c
      \ let b:Comment="/*"
      \ | let b:EndComment="*/"
      \ | runtime! include/spacing/four.vim

autocmd FileType cpp
      \ let b:Comment="//"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/four.vim

autocmd FileType nginx
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/four.vim
      \ | set smartindent

autocmd FileType tex
      \ let &mp="clear; pdflatex %"
      \ | let b:Comment="%"
      \ | let b:EndComment=""

autocmd FileType lua
      \ let &mp="clear; lua %"
      \ | let &efm="lua: %f:%l:%m,%-G%.%#"
      \ | let b:Comment="--"
      \ | let b:EndComment=""

autocmd FileType python
      \ let &mp="clear; python3 %"
      \ | let &efm='%A %#File "%f"\, line %l\,%.%#,%-GTrace%.%#,%C %.%#,%Z%m,%-G%.%#'
      \ | let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/four.vim

autocmd FileType php
      \ let b:Comment="//"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim

" Make PHP use smartindent dammit!
" (This is so HTML indenting is sane.)
autocmd BufRead,BufNewFile *.html set smartindent
autocmd BufRead,BufNewFile *.php set smartindent
autocmd BufRead,BufNewFile *.jgr set smartindent

autocmd FileType haskell
      \ let &mp="clear; ghc --make %"
      \ | let &efm='%f:%l:%c:'
      \ | let b:Comment="--"
      \ | let b:EndComment=""
      \ | set smartindent

autocmd FileType cabal
      \ let b:Comment="--"
      \ | let b:EndComment=""
      \ | set smartindent

autocmd FileType sml
      \ let &mp="ledit -x -h ~/.ledit/mosml mosml -P full %"
      \ | let b:Comment="(*"
      \ | let b:EndComment="*)"

autocmd FileType lisp
      \ let b:Comment=";"
      \ | let b:EndComment=""

autocmd FileType sh
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim

autocmd FileType zsh
      \ let b:Comment="#"
      \ | let b:EndComment=""
      \ | runtime! include/spacing/two.vim

autocmd FileType utln
      \ let &mp="clear; validate-utlnx %"
      \ | let &efm='%f\, line %#%l:%m'
      \ | let b:Comment="(X:"
      \ | let b:EndComment=")"
      \ | set smartindent

autocmd FileType mako
      \ let b:Comment="<%doc>"
      \ | let b:EndComment="</%doc>"
      \ | set smartindent

autocmd FileType crontab
      \ let b:Comment="#"
      \ | let b:EndComment=""

autocmd FileType conf
      \ let b:Comment="#"
      \ | let b:EndComment=""

autocmd FileType make
      \ let b:Comment="#"
      \ | let b:EndComment=""

autocmd FileType html
      \ let b:Comment="<!--"
      \ | let b:EndComment="-->"

autocmd BufEnter *.html setlocal smartindent
autocmd BufEnter *.tpl setlocal smartindent

autocmd FileType htmldjango
      \ let b:Comment="{% comment %}"
      \ | let b:EndComment="{% endcomment %}"

autocmd FileType css
      \ let b:Comment="/*"
      \ | let b:EndComment="*/"

autocmd FileType vim
      \ let b:Comment='"'
      \ | let b:EndComment=""
      \ | set smartindent
      \ | runtime! include/spacing/two.vim

set mouse=a
if has('nvim')
  nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
  inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
  vnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
endif
