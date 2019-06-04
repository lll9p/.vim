" ©Lao https://laolilin.com
" File              : c.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 23.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>

if $ISWIN
    let $TLIST_C_TAGS = 'D:\apps\MinGW\include\tags'
elseif $ISLINUX
    let $TLIST_C_TAGS = '/usr/share/include/tags'
endif
" 高亮C语言注释中的代码{
let $c_comment_strings=1
" vim: set ft=vim :
