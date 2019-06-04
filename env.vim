" ©Lao https://laolilin.com
" File              : env.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 22.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
"Setting python venv
"if has('python3') && $ISWIN
"python3 << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"    print(100)
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(0, project_base_dir)
"    activate_this = os.path.join(project_base_dir, 'python-venv-scripts/activate_this.py')
"    with open(activate_this) as f:
"        exec(f.read(), dict(__file__=activate_this))
"EOF
"endif
let g:python3_host_prog = "C:\\Users\\lao\\AppData\\Local\\Programs\\Python\\Python37\\python.exe"
let g:virtualenv_directory = "C:\\Users\\lao\\virtualenvs"
"VirtualEnvActivate py3.7
