" ©Lao https://laolilin.com
" File              : denite.vim
" Author            : lll9p <lll9p.china@gmail.com>
" Date              : 03.06.2020
" Last Modified Date: 03.06.2020
" Last Modified By  : lll9p <lll9p.china@gmail.com>
nnoremap <leader>uc :<C-u>Denite colorscheme -auto-preview<CR>
nnoremap <leader>ub :<C-u>Denite buffer<CR>
nnoremap <leader>uf :<C-u>Denite file<CR>
nnoremap <leader>uF :<C-u>Denite file_rec<CR>
nnoremap <leader>uu :<C-u>Denite buffer file_old<CR>
nnoremap <leader>uo :<C-u>Denite outline -no-quit -mode=normal<CR>
nnoremap <leader>uh :<C-u>Denite help<CR>
nnoremap <leader>ur :<C-u>Denite register<CR>
nnoremap <leader>ug :<C-u>Denite grep -no-empty<CR>
nnoremap <leader>u/ :<C-u>Denite line<CR>
nnoremap <leader>uR :<C-u>Denite -resume<CR>
noremap <leader>ul :<C-u>Denite command_history<CR>
" Most Recent Use MRU
noremap <leader>m :Denite file_mru<CR>
" Change file_rec command.
call denite#custom#var('file_rec', 'command',
      \ ['ag', '--depth', '5', '--max-count', '500', '--follow', '--nocolor', '--nogroup', '-g', ''])
" Ag command on grep source
call denite#custom#var('grep', 'command', ['ag'])
call denite#custom#var('grep', 'default_opts',
      \ ['-i', '--vimgrep'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', [])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])
call denite#custom#option('default', 'empty', 0)
call denite#custom#option('default', 'auto_resize', 1)
" Change ignore_globs
call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
      \ [ '.git/', '.ropeproject/', '__pycache__/',
      \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
" Default options.
call denite#custom#option('default', {
      \ 'prompt': '»',
      \ 'cursor_wrap': v:true,
      \ 'auto_resize': v:true,
      \ 'highlight_mode_insert': 'WildMenu'
      \ })
if executable('jvgrep')
  " jvgrep command on grep source
  call denite#custom#var('grep', 'command', ['jvgrep'])
  call denite#custom#var('grep', 'default_opts', [])
  call denite#custom#var('grep', 'recursive_opts', ['-R'])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', [])
  call denite#custom#var('grep', 'final_opts', [])
elseif executable('rg')
  " Ripgrep command on grep source
  call denite#custom#var('grep', 'command', ['rg'])
  call denite#custom#var('grep', 'default_opts',
        \ ['--vimgrep', '--no-heading'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
elseif executable('pt')
  " Pt command on grep source
  call denite#custom#var('grep', 'command', ['pt'])
  call denite#custom#var('grep', 'default_opts',
        \ ['--nogroup', '--nocolor', '--smart-case'])
  call denite#custom#var('grep', 'recursive_opts', [])
  call denite#custom#var('grep', 'pattern_opt', [])
  call denite#custom#var('grep', 'separator', ['--'])
  call denite#custom#var('grep', 'final_opts', [])
endif
" custom mappings.
call denite#custom#map('insert', '<C-n>', '<denite:move_to_next_line>', 'noremap')
call denite#custom#map('insert', '<C-p>', '<denite:move_to_previous_line>', 'noremap')
call denite#custom#map('insert', '<C-[>', '<denite:enter_mode:normal>', 'noremap')
call denite#custom#map('normal', '<C-[>', '<denite:quit>', 'noremap')
" vim: set ft=vim :

