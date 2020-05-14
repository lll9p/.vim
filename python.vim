"=============================================================================
"     FileName: python.vim
"         Desc:
"       Author: lll9p
"        Email: lll9p.china@gmail.com
"     HomePage: http://imtho.com
"      Version: 0.0.1
"   LastChange: 2019-03-14 12:01:57
"      History:
"=============================================================================
autocmd BufNewFile,BufRead *.py,*.pyw setlocal filetype=python
" python
autocmd FileType python let $PYTHONIOENCODING = "utf-8"
" vim-python
augroup vimrc-python
    autocmd!
    autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8 colorcolumn=79
                \ formatoptions+=croq softtabstop=4
                \ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
augroup END

" vim: set ft=vim :
