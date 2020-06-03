" ©Lao https://laolilin.com
" File              : 03.keybinds.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
" Convenience for inserting a newline from normal mode.
noremap Q :put=''<CR>

" Hitting escape twice should clear any search highlights.
nnoremap <ESC><ESC> :nohlsearch<CR>

" CTRL-S saves current buffer. Muscle memory from Windows years ago.
noremap <C-s> :w<CR>
inoremap <C-s> <ESC>l:w<CR>

" Keybindings for invoking 'par' to reflow text.
" 'f' is for reflowing to shorter lines, usually for commit messages.
" 'g' is for standard 79 columns with 4 space tabs.
" 'h' is like 'g', except it's for 8 space tabs. (e.g., Go.)
" vnoremap <Leader>f !par T4 'B=.,?_A_a' 71qr<CR>
" nmap <Leader>f <S-v><Leader>f
" vnoremap <Leader>g !par T4 'B=.,?_A_a' 79qr<CR>
" nmap <Leader>g <S-v><Leader>g
" vnoremap <Leader>h !par T8 'B=.,?_A_a' 79qr<CR>
" nmap <Leader>h <S-v><Leader>h

" Convenience keybinding for writing the current date.
noremap <Leader>d :read !date +"\%B \%-d, \%Y"<CR>

" Writer dividers equivalence to the length of the previous line.
fun! Divider(char)
  let len = strlen(getline('.'))
  call append('.', repeat(a:char, len))
  normal j
endfun
noremap <Leader>= :call Divider('=')<CR>
noremap <Leader>- :call Divider('-')<CR>
noremap <Leader>~ :call Divider('~')<CR>

" Shortcut for reloading neovim config.
noremap <F2> :source ~/.vimrc<CR>
" Apparently this is necessary to fix broken syntax highlighting sometimes.
noremap <F10> :syntax sync fromstart<CR>
" Shortcut for enabling text mode.
noremap <F12> :source ~/.vim/text.vim<CR>

" Shortcut for writing current file with 'sudo'.
command! W w !sudo tee % > /dev/null

" fzf entrypoint.
nmap <Leader>e :Files<CR>
" ripgrep entrypoint.
" nmap <Leader>r :Rg<CR>

" resize window size
map <C-left>  :wincmd <<cr>
map <C-right> :wincmd ><cr>
map <C-up>    :wincmd +<cr>
map <C-down>  :wincmd -<cr>

imap <A-h> <Left>
imap <A-l> <Right>
imap <A-k> <Up>
imap <A-j> <Down>
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

"
noremap <F6> :Defx -toggle<CR>
