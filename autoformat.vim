" ©Lao https://laolilin.com
" File              : autoformat.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 23.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
" Autoformat{
let g:formatprg_scala = "java"
let g:formatprg_args_scala = " -jar ".$VIMFILES."/formatter/scala/scalariform.jar -f -q --encoding=UTF-8 --preferenceFile=".$VIMFILES."/formatter/scala/formatterPreferences.properties --stdin --stdout"
"let g:formatdef_autopep8 = "'C:/Users/lao/virtualenvs/py3.7/Scripts/autopep8 - --range '.a:firstline.' '.a:lastline"
let g:formatters_python = ['autopep8']
