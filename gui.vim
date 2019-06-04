" ©Lao https://laolilin.com
" File              : gui.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 22.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
"if has("gui_running")
"     if has("gui_gtk2")
"         set guifont=Luxi\ Mono\ 12
"     elseif has("x11")
"         " Also for GTK 1
"         set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
"     elseif has("gui_win32")
"         "set guifontwide=Microsoft\ YaHei:h13
"         set guifontwide=SimSun_simple:h12
"         set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
"     endif
" endif

" GUI设置{{{
if has('gui_running')
    " 设定菜单的语言为英文菜单{
    set langmenu=en_US.utf-8
    " }
    " 删去菜单{
    source $VIMRUNTIME$SLASH\delmenu.vim
    " }
    " 重建菜单{
    source $VIMRUNTIME$SLASH\menu.vim
    " }
    " 隐藏菜单栏{
    "set guioptions-=m
    " }
    " 隐藏工具栏{
    set guioptions-=T
    " }
    " 隐藏左侧滚动条{
    set guioptions-=L
    " }
    " 隐藏右侧滚动条{
    set guioptions-=r
    " }
    " 隐藏底部滚动条{
    set guioptions-=b
    " }
    " 隐藏GUI Tab栏  {
    "set guioptions-=e
    " }
    "set guifont=Consolas:h10:cANSI
    "set guifontwide=Microsoft\ Yahei\ Mono:h10
    set guifont=Fira_Code:h10:cANSI:qDRAFT
    set guifontwide=等距更纱黑体_SC:h10:cGB2312:qDRAFT
endif
" }}}
" 显示CMD tab栏{
"set showtabline=1
" }
