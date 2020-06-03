" ©Lao https://laolilin.com
" File              : 98.ui.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
"if has("gui_running")
"     if has("gui_gtk2")
"         set guifont=Luxi\ Mono\ 12
"     elseif has("x11")
"         " Also for GTK 1
"         set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
"     elseif has("gui_win32")
"         "set guifontwide=Microsoft\ YaHei:h13
"         set guifontwide=SimSun_simple:h12
"         set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h13
"     endif
" endif

" GUI设置{{{
if has('gui_running')
  " 设定菜单的语言为英文菜单{
  set langmenu=en_US.utf-8
  " }
  " 删去菜单{
  aunmenu *
  tlunmenu *

  unlet! g:did_install_default_menus
  unlet! g:did_install_syntax_menu

  if exists('g:did_menu_trans')
    menutrans clear
    unlet g:did_menu_trans
  endif

  unlet! g:find_help_dialog

  unlet! g:menutrans_fileformat_choices
  unlet! g:menutrans_fileformat_dialog
  unlet! g:menutrans_help_dialog
  unlet! g:menutrans_no_file
  unlet! g:menutrans_path_dialog
  unlet! g:menutrans_set_lang_to
  unlet! g:menutrans_spell_add_ARG_to_word_list
  unlet! g:menutrans_spell_change_ARG_to
  unlet! g:menutrans_spell_ignore_ARG
  unlet! g:menutrans_tags_dialog
  unlet! g:menutrans_textwidth_dialog
  " }
  " 重建菜单{
  "source $VIMRUNTIME."/menu.vim"
  " }
  " 隐藏菜单栏{
  "set guioptions-=m
  " }
  " 隐藏工具栏{
  set guioptions-=T
  " }
  " 隐藏左侧滚动条{
  set guioptions-=L
  " }
  " 隐藏右侧滚动条{
  set guioptions-=r
  " }
  " 隐藏底部滚动条{
  set guioptions-=b
  " }
  " 隐藏GUI Tab栏  {
  "set guioptions-=e
  " }
  "FiraCode_Nerd_Font_Mono
  "set guifont=Fira_Code:h12:cANSI:qDRAFT
  set guifontwide=等距更纱黑体_SC:h10:qDRAFT
  set guifont=等距更纱黑体_SC:h10:qDRAFT
  if g:os=="Windows"
    set renderoptions=type:directx
  endif
endif
" }}}
" 显示CMD tab栏{
"set showtabline=1
" }
" ©Lao https://laolilin.com
" File              : colorscheme.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 23.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>

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
