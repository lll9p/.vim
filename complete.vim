" ©Lao https://laolilin.com
" File              : complete.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 23.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>

" Deoplete config
let g:deoplete#enable_at_startup = 1
let g:deoplete#disable_auto_complete = 1
let g:deoplete#auto_complete_start_length = 1
let g:deoplete#sources#jedi#show_docstring = 1
let g:deoplete#sources = {}
let g:deoplete#sources.python = ['jedi', 'neosnippet']
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd FileType python setlocal foldmethod=indent completeopt=longest,menuone,preview,noinsert
augroup omnifuncs
    autocmd!
    autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
    autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
    autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
    autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
    autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end

" Neosnippet config
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)


" Deoplete and neosnippet combine setting
function! s:check_back_space() abort "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
imap <expr><TAB>
            \ pumvisible() ? "\<C-n>" :
            \ (neosnippet#expandable_or_jumpable() ?
            \    "\<Plug>(neosnippet_expand_or_jump)" :
            \    (<SID>check_back_space() ?
            \        "\<TAB>" :
            \        (deoplete#mappings#manual_complete())
            \    )
            \ )
imap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
            \ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
    set conceallevel=2 concealcursor=niv
endif

