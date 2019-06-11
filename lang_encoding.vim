"=============================================================================
"     FileName: lang.vim
"         Desc:
"       Author: lll9p
"        Email: lll9p.china@gmail.com
"     HomePage: http://imtho.com
"      Version: 0.0.1
"   LastChange: 2019-03-14 12:42:09
"      History:
"=============================================================================
let $LANG='zh_CN.UTF-8'
" 字符编码
" Vim显示的编码(设置这个不会改变文件的编码)
if g:os=='Windows'
set encoding=utf-8
set termencoding=chinese
set renderoptions=type:directx
endif
set bomb
        set binary
        set ttyfast
         "当使用vim-plug更新的时候，会出现乱码，设置以自动更改filetype
        "autocmd FileType vim-plug setlocal encoding=cp936 
        " }
        " 编辑已存在的文件时的参考文件编码.需要注意顺序,前面的字符集应该比后面的字符集大{
        set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
        if g:os=='Windows'
            " 解决consle输出乱码{
            language messages zh_CN.utf-8
            " }
        endif
        " vim: set ft=vim :

