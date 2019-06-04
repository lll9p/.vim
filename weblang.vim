" ©Lao https://laolilin.com
" File              : weblang.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 23.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
autocmd FileType php setlocal foldmethod=syntax
autocmd BufRead,BufNewFile *.php setlocal filetype=php.html
autocmd BufRead,BufNewFile *.html setlocal foldmethod=indent filetype=html
autocmd FileType js setlocal foldmethod=indent
