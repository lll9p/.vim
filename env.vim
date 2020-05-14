" ©Lao https://laolilin.com
" File              : env.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 22.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
if !exists("g:os")
    if has("win64") || has("win32") || has("win16")
        let g:os = "Windows"
    else
        let g:os = substitute(system('uname'), '\n', '', '')
    endif
endif
if g:os == "Darwin"
    let $SLASH='/'
elseif g:os == "Linux"
    let $SLASH='/'
    set mouse=
elseif g:os == "Windows"
    let $SLASH='\'
endif
if g:os == "Windows"
    set pyxversion=3
    "set pythonthreedll="C:\\Users\\lao\\VirtualEnvs\\venv\\Scripts\\python37.dll"
    let g:python3_host_prog = "C:\\Users\\lao\\VirtualEnvs\\venv38\\Scripts\\python.exe"
    let g:virtualenv_directory = "C:\\Users\\lao\\VirtualEnvs"
    set encoding=utf-8
"Setting python venv
python3 << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'python-venv-scripts/activate_this.py')
    with open(activate_this) as f:
        exec(f.read(), dict(__file__=activate_this))
EOF
endif
"VirtualEnvActivate sci
