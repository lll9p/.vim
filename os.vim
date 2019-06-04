"=============================================================================
"     FileName: os.vim
"         Desc:
"       Author: lll9p
"        Email: lll9p.china@gmail.com
"     HomePage: http://imtho.com
"      Version: 0.0.1
"   LastChange: 2019-03-14 12:00:48
"      History:
"=============================================================================
if has('win32') || has('win64')
    let $ISWIN=1
    let $SLASH='\'
    " *nix{
elseif has('linux') || has('unix')
    let $ISLINUX=1
    let $SLASH='/'
endif

