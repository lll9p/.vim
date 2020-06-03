" ©Lao https://laolilin.com
" File              : style.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
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
let g:neosolarized_italic = 0

" Used to enable/disable "bold as bright" in Neovim terminal. If colors of bold
" text output by commands like `ls` aren't what you expect, you might want to
" try disabling this option. Default value:
let g:neosolarized_termBoldAsBright = 1
colorscheme NeoSolarized
set ruler
" statusline{
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
  set statusline+=%{coc#status()}%{get(b:,'coc_current_function','')}
  " set statusline+=%{LinterStatus()}
  set statusline+=%*
  set statusline+=%8*\ %=\ R:%l/%L\ (%03p%%)\              "Rownumber/total (%)
  set statusline+=%9*\ C:%03c\                             "Colnr
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
set background=dark
