" ©Lao https://laolilin.com
" File              : base.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>

" Vimfiles路径,可以放置插件{
let $VIMFILES = $HOME.$SLASH.'.vimfiles'
" }
" 编辑时的备份所在文件夹{
let $BACKUPDIR = $HOME.$SLASH.'.vimtmp'.$SLASH.'tmp'
if !isdirectory($BACKUPDIR)
    call mkdir($BACKUPDIR,'p')
endif
" }
" 交换文件夹{
let $SWAPDIR = $HOME.$SLASH.'.vimtmp'.$SLASH.'swp//'
if !isdirectory($SWAPDIR)
    call mkdir($SWAPDIR,'p')
endif

" }
" 撤销文件夹{
let $UNDODIR = $HOME.$SLASH.'.vimtmp'.$SLASH.'undodir'
if !isdirectory($UNDODIR)
    call mkdir($UNDODIR,'p')
endif
"}
" view的路径{
let $VIEWDIR=$HOME.$SLASH.'.vimtmp'.$SLASH.'view'
if !isdirectory($VIEWDIR)
    call mkdir($VIEWDIR,'p')
endif
" }
" 本配置文件路径{
let $VIMRC = $HOME.$SLASH.'.vimrc'
" }
" 创建必要的目录{{{
if isdirectory($UNDODIR)==0
    call mkdir($UNDODIR,'p')
endif
if isdirectory($BACKUPDIR)==0
    call mkdir($BACKUPDIR,'p')
endif
if isdirectory($SWAPDIR)==0
    call mkdir($SWAPDIR,'p')
endif
if isdirectory($VIEWDIR)==0
    call mkdir($VIEWDIR,'p')
endif
set runtimepath+=$VIMFILES
" set{{{
" help lang{
set helplang=cn,en
" }
" view的路径{
set viewdir=$VIEWDIR
" }
set nohidden
" 显示出光标所在坐标{
set ruler
" }
" 打字时隐藏鼠标{
set mousehide
" }
" 出错时闪烁屏幕{
set visualbell
" }
" 是否兼容VI,compatible为兼容，nocompatible为不完全兼容
" 如果设置为compatible，则tab将不会变成空格{
set nocompatible
" }
" 定义退格键行为{
set backspace=start,indent,eol
" }
" 自动补全命令时候使用菜单式匹配列表{
set wildmenu
" }
" 允许退格键删除{
set backspace=2
" }
" 设置可读{
set modifiable
" }
" 开启备份{
set backup
" }
" 设置备份文件路径,不然会保存在所编辑文件的同文件夹中{
set backupdir=$BACKUPDIR
" }
" 设置交换文件路径,不然会保存在所编辑文件的同文件夹中{
set directory=$SWAPDIR
" }
" 标尺的右边显示未完成的命令{
set showcmd
" }
" 长行换行{
set synmaxcol=120
" }

" 告诉Vim在使用ex命令时也允许输入法{
set imcmdline
" }
" *nix输入法设置,需要gui xim{
"if has('linux') || has('unix')
" 用来设置桌面系统控制输入法开关所使用的快捷键。
" fcitx的激活键是Ctrl-space，Ctrl则是中英切换键。如果将imak设为Ctrl-space，则每次进入插入模式都是中文输入。
" 将imak设为Ctrl则可以保留上一次退出插入模式时的输入状态。@http://blah.blogsome.com/2007/08/23/vim_cn_faq
"set imactivatekey = C
" 告诉Vim在搜索时使用输入法
"set iminsert =2
" 告诉Vim在搜索时使用输入法
"set imsearch =2
"endif
" }
" 重启后撤销历史可用 persistent undo {
set undofile
" }
" undo保存文件夹{
set undodir=$UNDODIR
" }
" 最大undo数{
set undolevels=1000
" }
" 打开行号{
set number
set mousemodel=popup
" }

" auto complete{
set completeopt=menuone,longest,preview
" }
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
" 一个tab是4个字符{
set tabstop=4
" }
" 按一次tab前进4个字符{
set softtabstop=4
" }
" 用空格代替tab{
set expandtab
" }
" 设置自动缩进{
set autoindent!
" }
" 缩进的字符个数{
set shiftwidth=4
" }
" 显示中文引号{
set ambiwidth=double
" }
" 行高亮{
"set cursorline
" }
" 列高亮，与函数列表有冲突{
"set cursorcolumn
" }
" 设置命令行的高度{
"set cmdheight=2
" }
" 开启状态栏信息{
set laststatus=2
" }
" 高亮搜索的关键字{
set hlsearch
" }
" 在输入括号时光标会短暂地跳到与之相匹配的括号处，不影响输入{
set showmatch
" }
" 正确地处理中文字符的折行和拼接{
set formatoptions+=mM
" }
" 设定文件浏览器目录为当前目录{
set browsedir=buffer
" }
" 自动切换当前目录为当前文件所在的目录{
set autochdir
" }
" 文件被别的编辑器修改时自动更新{
set autoread
" }
" 保存文件的格式顺序{
set fileformats=unix,dos,mac
" }
" 实时搜索{
set incsearch
" }
" 开启新行时使用智能自动缩进{
set smartindent
" }
" 记录文件状态(包括独立于该文件的键盘映射、代码折叠状态等){
"autocmd BufWinLeave * if expand('%') != '' && &buftype == '' | mkview | endif
"autocmd BufRead     * if expand('%') != '' && &buftype == '' | silent loadview | syntax on | endif
" }
" 开启文件类型检测{
filetype on
" }
" 针对不同的文件类型采用不同的缩进格式{
filetype indent on
" }
" 针对不同的文件类型加载对应的插件{
filetype plugin on
" }
" 启用自动补全{
filetype plugin indent on
" 把下面放到autocmdgroup中,以便删除{
augroup vimrcEx
    autocmd!
    " 文本文件从左起到78个字符时自动折行{
    autocmd FileType text setlocal textwidth=78
    " }
    " 编辑时跳到上一次光标位{
    autocmd BufReadPost *
                \ if line("'\"") > 1 && line("'\"") <= line("$") |
                \   exe "normal! g`\"" |
                \ endif
    " }
augroup END
"*****************************************************************************
"" Functions
"*****************************************************************************
if !exists('*s:setupWrapping')
    function s:setupWrapping()
        set wrap
        set wm=2
        set textwidth=79
    endfunction
endif

"*****************************************************************************
"" Autocmd Rules
"*****************************************************************************
"" The PC is fast enough, do syntax highlight syncing from start unless 200 lines
augroup vimrc-sync-fromstart
    autocmd!
    autocmd BufEnter * :syntax sync maxlines=200
augroup END

"" Remember cursor position
augroup vimrc-remember-cursor-position
    autocmd!
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

"" txt
augroup vimrc-wrapping
    autocmd!
    autocmd BufRead,BufNewFile *.txt call s:setupWrapping()
augroup END

"" make/cmake
augroup vimrc-make-cmake
    autocmd!
    autocmd FileType make setlocal noexpandtab
    autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
augroup END

"" Copy/Paste/Cut
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif
if &lines > 25
    set laststatus=2
endif
au GUIEnter * if &lines > 25 | set laststatus=2 | endif
" When running the GUI, the number of lines
" isn't known until the GUI is opened.
if exists("##VimResized")
    " 'laststatus' may have been set to 2 by ctags plugin.  Don't set it back
    " to 1 or set it to 2 if already 2 (or 0).
    au VimResized * if &lines > 25 && &laststatus == 1 | set laststatus=2 | endif
endif
cd $HOME$SLASH".vimtmp"
autocmd BufNewFile,BufRead *.vim setlocal filetype=vim

" vim: set ft=vim :
