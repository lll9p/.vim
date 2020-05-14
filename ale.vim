" ©Lao https://laolilin.com
" File              : ale.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>

"ale
"始终开启标志列
let g:ale_sign_column_always = 1
let g:ale_set_highlights = 0
"自定义error和warning图标
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '⚡'
"在vim自带的状态栏中整合ale
let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
"显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
nmap <Leader>a :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
nmap <Leader>d :ALEDetail<CR>
nmap <Leader>f :ALEFix<CR>
"文件内容发生变化时不进行检查
"let g:ale_lint_on_text_changed = 'never'
"打开文件时进行检查
let g:ale_lint_on_enter = 1
let g:ale_fix_on_save=1
let g:ale_linters={
            \ 'c++':['clang','gcc'],
            \ 'c':['clang','gcc'],
            \ 'python':['pycodestyle','flake8'],
            \ 'javascript': ['eslint', 'flow'],
            \ 'html':['tidy'],
            \ 'vim':['vlint']
            \}

let g:ale_fixers={
            \ '*': ['remove_trailing_lines', 'trim_whitespace'],
            \ 'python':['isort','autopep8'],
            \  'ruby': ['rubocop'],
            \  'javascript': ['prettier','eslint', 'remove_trailing_lines'],
            \  'json': ['prettier'],
            \  'css': ['prettier'],
            \  'markdown': ['prettier'],
            \  'html': ['tidy','prettier'],
            \}
let g:ale_python_autopep8_options = '--aggressive'
let g:javascript_prettier_options = '--tab-width 4 --single_quote true --trailing-comma es6 --no-bracket-spacing true --jsx-bracket-same-line false'
" vim: set ft=vim :
