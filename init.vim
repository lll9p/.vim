" ©Lao https://laolilin.com
" File              : init.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
if has('nvim')
  let config_path=stdpath('config')
else
  let config_path = fnamemodify(resolve(expand('<sfile>:p')), ':p:h')
endif
set runtimepath+=config_path
set runtimepath+=$HOME/.vim
let _files = globpath(config_path.'/init','*.vim',0,1)
for _file in _files
  execute "source "._file
endfor
let _files = globpath(config_path.'/plugin.rc','*.vim',0,1)
for _file in _files
  execute "source "._file
endfor


