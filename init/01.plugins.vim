" ©Lao https://laolilin.com
" File              : 01.plugins.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
  " call dein#add('w0rp/ale')
  call dein#add('rust-lang/rust.vim',{'on_ft':['rust']})
  call dein#add('Shougo/denite.nvim')
  call dein#add('tpope/vim-surround')
  call dein#add('godlygeek/tabular')
  call dein#add('qpkorr/vim-renamer')
  call dein#add('Raimondi/delimitMate')
  call dein#add('alpertuna/vim-header')
  call dein#add('FooSoft/vim-argwrap')
  call dein#add('syngan/vim-vimlint')
  " language plugin
  call dein#add('cespare/vim-toml',{'on_ft':['toml']})
  call dein#add('gu-fan/riv.vim', {'on_ft':['rst']})
  call dein#add('Shougo/defx.nvim')
  call dein#add('kristijanhusak/defx-git')
  call dein#add('kristijanhusak/defx-icons')
  call dein#add('drewtempelmeyer/palenight.vim')
  call dein#add('altercation/vim-colors-solarized')
  call dein#add('overcache/NeoSolarized')
  " call dein#add('mhinz/vim-startify')
  " call dein#add('liuchengxu/eleline.vim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
    call dein#add('yianwillis/vimcdoc')
  endif

  call dein#end()
  call denite#custom#var('file_rec', 'command', ['rg', '--files', '--glob', '!.git'])
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
