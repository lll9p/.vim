" ©Lao https://laolilin.com
" File              : dein.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 22.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
if &compatible
    set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
    call dein#begin('~/.cache/dein')

    call dein#add('Shougo/dein.vim')
    call dein#add('Shougo/deoplete.nvim',{'on_ft':['python',
                \ 'go','javascript','html','rst','c','cpp']})
    call dein#add('Shougo/deol.nvim')
    call dein#add('deoplete-plugins/deoplete-jedi',{'on_ft':['python']})
    call dein#add('Shougo/neosnippet.vim')
    call dein#add('Shougo/neosnippet-snippets')
    call dein#add('vim-scripts/TaskList.vim')
    call dein#add('Raimondi/delimitMate')
    call dein#add('mg979/vim-visual-multi')
    call dein#add('drewtempelmeyer/palenight.vim')
    call dein#add('altercation/vim-colors-solarized')
    call dein#add('Rykka/riv.vim', {'on_ft':['rst']})
    call dein#add('dterei/VimBookmarking')
    call dein#add('Shougo/denite.nvim')
    "{Unite and its plugins
    call dein#add('Shougo/neomru.vim')
    "}
    call dein#add('mattn/calendar-vim')
    call dein#add('ynkdir/vim-paint')
    call dein#add('Lokaltog/vim-easymotion')
    " Better undo tree tool
    call dein#add('mbbill/undotree')
    call dein#add('majutsushi/tagbar')
    call dein#add('Yggdroot/indentLine')

    call dein#add('scrooloose/nerdcommenter')
    call dein#add('scrooloose/nerdtree')
    call dein#add('kovisoft/slimv')
    "Rust{
    call dein#add('racer-rust/vim-racer', {'on_ft':['rust']})
    call dein#add('rust-lang/rust.vim', {'on_ft':['rust']})
    "}
    "call dein#add('mhinz/vim-startify')
    "call dein#add('derekwyatt/vim-scala')

    call dein#add('tpope/vim-surround')
    call dein#add('godlygeek/tabular')
    call dein#add('othree/xml.vim')
    "call dein#add('ryanoasis/vim-devicons')
    call dein#add('mattn/emmet-vim')
    "call dein#add('tpope/vim-fugitive')
    call dein#add('Chiel92/vim-autoformat')
    call dein#add('w0rp/ale')
    " Syntax package
    call dein#add('sheerun/vim-polyglot')
    "Python{
    call dein#add('plytophogy/vim-virtualenv')
    call dein#add('hdima/python-syntax', {'on_ft':['python']})
    call dein#add('raimon49/requirements.txt.vim', {'on_ft': 'requirements'})
    call dein#add('hynek/vim-python-pep8-indent', {'on_ft':['python']})
    call dein#add('Glench/Vim-Jinja2-Syntax', {'on_ft':['python']})
    "}
    call dein#add('vim-latex/vim-latex',{'on_ft':['latex','tex']})
    call dein#add('alpertuna/vim-header')

    if !has('nvim')
        call dein#add('roxma/nvim-yarp')
        call dein#add('roxma/vim-hug-neovim-rpc')
    endif

    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable
" vim: set ft=vim :

