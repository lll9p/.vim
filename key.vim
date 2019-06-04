        " {
        imap <A-h> <Left>
        imap <A-l> <Right>
        imap <A-k> <Up>
        imap <A-j> <Down>
        " }
                " F12更新高亮
        noremap <F12> <Esc>:syntax sync fromstart<CR>
        inoremap <F12> <C-o>:syntax sync fromstart<CR>
        map <S-Insert> <MiddleMouse>
        map! <S-Insert> <MiddleMouse>
        " }
        " 打开和关闭标签{
        map tn :tabnew 
        map td :tabclose
        " }
        " 窗口分割设置{
        map <c-j> <c-w>j
        map <c-k> <c-w>k
        map <c-l> <c-w>l
        map <c-h> <c-w>h
        " }
        " Add time to the file {
        nmap <F2> a<C-R>=strftime("%Y-%m-%d %H:%M")<CR><Esc>
        imap <F2> <C-R>=strftime("%Y-%m-%d %H:%M")<CR>
                " 让编辑模式可以中文输入法下按：转到命令模式{
        nnoremap ： :
" The"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

