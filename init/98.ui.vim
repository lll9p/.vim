" ©Lao https://laolilin.com
" File              : 98.ui.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 04.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>

if has('gui_running')
  " 设定菜单的语言为英文菜单{
  set langmenu=en_US.utf-8
  " }
  " 删去菜单{
  aunmenu *
  tlunmenu *
  " 隐藏菜单栏{
  set guioptions-=m
  " 隐藏工具栏
  set guioptions-=T
  " 隐藏左侧滚动条
  set guioptions-=L
  " 隐藏右侧滚动条
  set guioptions-=r
  " 隐藏底部滚动条
  set guioptions-=b
  " 隐藏GUI Tab栏
  "set guioptions-=e
  set guifontwide=等距更纱黑体_SC:h12:cDEFAULT
  set guifont=等距更纱黑体_SC:h12:cANSI
  set linespace=0
  if g:os=="Windows"
    set renderoptions=type:directx,renmode:5,level:0.50,gamma:1.0,contrast:0.0,geom:1,renmode:5,taamode:1
    " gamma = float ('1.8 - this one really depends on your monitor')
    " contrast = float ('.5 - good for black on white (may work less well for, say, white on black)')
    " level (cleartype!) = float (' .5 - not grayscale, but not TOO fruit salad colorful, for those who are sensitive to fringing')
    " geom = int (0 - FLAT, 1 - RGB, 2 - BGR)
    " renmode = int (0 - DEFAULT, 1 - ALIASED, 2 - GDI_CLASSIC, 3 - GDI_NATURAL, 4 - NATURAL, 5 - NATURAL_SYMMETRIC, 6 - OUTLINE)
    " taamode = int (0 - DEFAULT, 1 - CLEARTYPE, 2 - GRAYSCALE, 3 - ALIASED) (
  endif
endif
" Tabline/Buffer line
set showtabline=2
set tabline="%1T"
if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

" Default value is "normal", Setting this option to "high" or "low" does use the
" same Solarized palette but simply shifts some values up or down in order to
" expand or compress the tonal range displayed.
let g:neosolarized_contrast = "high"

" Special characters such as trailing whitespace, tabs, newlines, when displayed
" using ":set list" can be set to one of three levels depending on your needs.
" Default value is "normal". Provide "high" and "low" options.
let g:neosolarized_visibility = "high"

" I make vertSplitBar a transparent background color. If you like the origin
" solarized vertSplitBar style more, set this value to 0.
let g:neosolarized_vertSplitBgTrans = 1

" If you wish to enable/disable NeoSolarized from displaying bold, underlined
" or italicized" typefaces, simply assign 1 or 0 to the appropriate variable.
" Default values:
let g:neosolarized_bold = 1
let g:neosolarized_underline = 1
let g:neosolarized_italic = 1

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 1
colorscheme NeoSolarized
set ruler
" statusline
function! Statusline()
  set statusline=
  set statusline+=%7*\[%n]                                  "buffernr
  set statusline+=%1*\ %<%f\                                "File+path
  set statusline+=%2*\ %y\                                  "FileType
  set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
  set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
  set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..)
  set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
  set statusline+=%#warningmsg#
  set statusline+=%0*%{get(g:,'coc_git_status','')}
  set statusline+=%3*%{coc#status()}%{get(b:,'coc_current_function','')}
  set statusline+=%*
  set statusline+=%8*\ %=\ %l/%L\ (%03p%%)\              "Rownumber/total (%)
  set statusline+=%9*\ %03c\                             "Colnr
  set statusline+=%0*\ \ %m%r%w\ %P\ \                     "Modified? Readonly? Top/bot.
endfunction
call Statusline()
function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction
function! StatuslineHighlights() abort
  highlight User0 guifg=#ffffff  guibg=#094afe
  highlight User1 guifg=#ffdad8  guibg=#880c0e
  highlight User2 guifg=#000000  guibg=#F4905C
  highlight User3 guifg=#292b00  guibg=#f4f597
  highlight User4 guifg=#112605  guibg=#aefe7B
  highlight User5 guifg=#051d00  guibg=#7dcc7d
  highlight User7 guifg=#ffffff  guibg=#880c0e gui=bold
  highlight User8 guifg=#ffffff  guibg=#5b7fbb
  highlight User9 guifg=#ffffff  guibg=#810085
endfunction
augroup StatuslineHighlights
  autocmd!
  autocmd VimEnter * call StatuslineHighlights()
augroup END
"You may need the same hack to make vim work well in tmux.
set t_8f=[38;2;%lu;%lu;%lum
set t_8b=[48;2;%lu;%lu;%lum

set colorcolumn=80
if has('gui_running')
  set background=light
else
  set background=dark
endif
set ambiwidth=double
