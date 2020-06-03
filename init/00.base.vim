" ©Lao https://laolilin.com
" File              : 00.base.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
if !exists("g:os")
  if has("win64") || has("win32") || has("win16")
    let g:os = "Windows"
  else
    let g:os = substitute(system('uname'), '\n', '', '')
  endif
endif
if g:os == "Windows"
  set pyxversion=3
  "set pythonthreedll="C:\\Users\\lao\\VirtualEnvs\\venv\\Scripts\\python37.dll"
  let g:python3_host_skip_check=1
  let g:python3_host_prog=expand("C:\\Users\\lao\\VirtualEnvs\\venv38\\Scripts\\python.exe")
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
  let g:is_nvim = has('nvim')
  let g:is_vim8 = v:version >= 800 ? 1 : 0

  " Reuse nvim's runtimepath and packpath in vim
  "if !g:is_nvim && g:is_vim8
  "  set runtimepath-=~/.vim
  "    \ runtimepath^=~/.local/share/nvim/site runtimepath^=~/.vim
  "    \ runtimepath-=~/.vim/after
  "    \ runtimepath+=~/.local/share/nvim/site/after runtimepath+=~/.vim/after
  "  let &packpath = &runtimepath
  "endif

  " ©Lao https://laolilin.com
  " File              : base.vim
  " Author            : lll9p <lll9p.china@gmail.com>
  " Date              : 22.03.2019
  " Last Modified Date: 23.03.2019
  " Last Modified By  : lll9p <lll9p.china@gmail.com>

  " help lang
  set helplang=cn,en

  set nohidden
  " 显示出光标所在坐标{
  set ruler
  " 打字时隐藏鼠标{
  set mousehide
  " 出错时闪烁屏幕{
  set visualbell
  " 是否兼容VI,compatible为兼容，nocompatible为不完全兼容
  " 如果设置为compatible，则tab将不会变成空格{
  set nocompatible
  " 定义退格键行为{
  set backspace=start,indent,eol
  " 自动补全命令时候使用菜单式匹配列表{
  set wildmenu
  " 允许退格键删除{
  set backspace=2

  " 设置可读{
  set modifiable
  " }
  set backup
  " 标尺的右边显示未完成的命令{
  set showcmd
  " }
  " 长行换行{
  set synmaxcol=120
  " }

  " 告诉Vim在使用ex命令时也允许输入法{
  set imcmdline
  " 打开行号{
  set number
  set mousemodel=popup

  " 自动折行{
  set wrap
  " }
  " 所有情况下开启鼠标{
  set mouse=a
  " }
  " 设置折叠模式{{{
  " 折叠层次
  set foldcolumn=2
  " 光标遇到折叠，折叠就打开
  "set foldopen=all
  " 移开折叠时自动关闭折叠
  "set foldclose=all
  " zf zo zc zd zr zm zR zM zn zi zN
  " 依缩进折叠
  "   manual  手工定义折叠
  "   indent  更多的缩进表示更高级别的折叠
  "   expr    用表达式来定义折叠
  "   syntax  用语法高亮来定义折叠
  "   diff    对没有更改的文本进行折叠
  "   marker  对文中的标志折叠
  set foldmethod=marker
  set foldmethod=indent
  "au BufWinLeave * silent mkview  " 保存文件的折叠状态
  "au BufRead * silent loadview    " 恢复文件的折叠状态
  nnoremap <space> za             " 用空格来切换折叠状态
  " 启动时不要自动折叠代码
  set foldlevel=99
  " }}}
  " Search mappings: These will make it so that going to the next one in a
  " search will center on the line it's found in.
  nnoremap n nzzzv
  nnoremap N Nzzzv
  " 用空格代替tab{
  set expandtab
  " }
  " 设置自动缩进{
  set autoindent!
  " }
  " 显示中文引号{
  set ambiwidth=double
  " 开启状态栏信息{
  set laststatus=2
  " 高亮搜索的关键字{
  set hlsearch
  " 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入{
  set showmatch
  " 正确地处理中文字符的折行和拼接{
  set formatoptions+=mM
  " 设定文件浏览器目录为当前目录{
  set browsedir=buffer
  " 自动切换当前目录为当前文件所在的目录{
  set autochdir
  " 文件被别的编辑器修改时自动更新{
  set autoread
  " 保存文件的格式顺序{
  set fileformats=unix,dos,mac
  " 实时搜索{
  set incsearch
  " 开启新行时使用智能自动缩进{
  set smartindent
  " 开启文件类型检测{
  filetype on
  set encoding=utf-8
  let $LANG='zh_CN.UTF-8'
  " 字符编码
  " Vim显示的编码(设置这个不会改变文件的编码)
  if g:os=='Windows'
    set encoding=utf-8
    set termencoding=chinese
    if !has('nvim')
      set renderoptions="type:directx"
    endif
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
