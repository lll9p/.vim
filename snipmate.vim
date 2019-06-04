" ©Lao https://laolilin.com
" File              : snipmate.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 22.03.2019
" Last Modified Date: 22.03.2019
" Last Modified By  : lll9p <lll9p.china@gmail.com>
"=============================================================================
"     FileName: snipmate.vim
"         Desc:
"       Author: lll9p
"        Email: lll9p.china@gmail.com
"     HomePage: http://imtho.com
"      Version: 0.0.1
"   LastChange: 2019-03-21 10:03:00
"      History:
"=============================================================================
" Next menu item, expand snippet, jump to next placeholder or insert literal tab
"ultisnips设置{
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
"let g:UltiSnipsJumpForwardTrigger="<NOP>"
"let g:ulti_expand_or_jump_res=0
"function! ExpandSnippetOrJumpForwardOrReturnTab()
"    let snippet = UltiSnips#ExpandSnippetOrJump()
"    if g:ulti_expand_or_jump_res>0
"        return snippet
"    else
"        return "\<TAB>"
"    endif
"endfunction
"inoremap <expr> <TAB>
"            \ pumvisible() ? "\<C-n>" :
"            \ "<C-R>=ExpandSnippetOrJumpForwardOrReturnTab()<CR>"
"            \ <SID>check_back_space() ? "\<TAB>" :
"            \ deoplete#mappings#manual_complete()
"
" }
