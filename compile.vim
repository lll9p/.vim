" make命令调用{
set makeprg=mingw32-make
" }
" 快速编译、运行{
" 改进自http://blog.csdn.net/erazy0/article/details/5448850
noremap <F8> :call CompileCode(1)<CR>
noremap <leader>cp :call CompileCode(2)<CR>
noremap <F9> :call RunResult()<CR>
noremap <F10> :call CompileRun()<CR>
"{{{
function! CompileFunc(compiler)
    execute "w"

    " 使用GCC还是G++{{{
    if a:compiler == 0
        if has('win32') || has('win64')
            set makeprg=gcc\ -o\ \"%<.exe\"\ \"%\"
        else
            set makeprg=gcc\ -o\ \"%<\"\ \"%\"
        endif
    elseif a:compiler == 1
        if has('win32') || has('win64')
            set makeprg=g++\ -o\ \"%<.exe\"\ \"%\"
        else
            set makeprg=g++\ -o\ \"%<\"\ \"%\"
        endif
    elseif a:compiler == 2
        if has('win32') || has('win64')
            set makeprg=arm-linux-gnueabihf-gcc\ -o\ \"%<\"\ \"%\"
        else
            set makeprg=arm-linux-gnueabihf-gcc\ -o\ \"%<\"\ \"%\"
        endif
    endif
    "}}}
    if search("glut\.h") != 0
        set makeprg+=\ -lglut -lGLU -lGL\
    endif
    if search("cv\.h") != 0
        set makeprg+=\ -lcv -lhighgui -lcvaux\
    endif
    if search("omp\.h") != 0
        set makeprg+=\ -fopenmp\
    endif
    if search("math\.h") != 0
        set makeprg+=\ -lm\
    endif
    if search("wiringPi\.h") != 0
        set makeprg+=\ -lwiringPi\
    endif
    if has('win32') || has('win64') && a:compiler != 2
        set makeprg+=\ -fexec-charset=gb18030\
    endif
    execute "silent make"
    execute "normal :"
    execute "cwindow"
endfunction

func! RunPython()
    execute "silent !python \"%\""
endfunction
func! RunScheme()
    exec "! mit-scheme --library \"D:\\apps\\MIT-GNU Scheme\\lib\" --load ".expand("%:p")
endfunction
func! CompileJava()
    execute "silent !javac \"%\""
    execute "cwindow"
endfunction
func! CompileScala()
    execute "silent !scalac \"%\""
    execute "cwindow"
endfunction
func! RunScala()
    execute "silent !scala \"%\""
endfunction
function! CompileCode(compiler)
    exec "w"
    if a:compiler == 2
        execute "call CompileFunc(2)"
    elseif &filetype == "cpp"
        execute "call CompileFunc(1)"
    elseif &filetype == "c"
        execute "call CompileFunc(0)"
    elseif &filetype == "python"
        execute "call RunPython()"
    elseif &filetype == "java"
        execute "call CompileJava()"
    elseif &filetype == "scala"
        execute "call CompileScala()"
    endif
endfunction

function! RunResult()
    execute "w"
    if &filetype == "cpp"
        if has('win32') || has('win64')
            execute "silent ! \"%:p:r.exe\""
        else
            execute "silent ! \"./%<\""
        endif
    elseif &filetype == "c"
        if has('win32') || has('win64')
            set encoding=cp936
            execute "silent ! \"%:p:r.exe\""
            set encoding=utf8
        else
            execute "silent ! \"./%<\""
        endif
    elseif &filetype == "python"
        execute "call RunPython()"
    elseif &filetype == "rust"
        execute "RustRun"
    elseif &filetype == "scala"
        execute "call RunScala()"
    elseif &filetype == "java"
        execute "silent !java \"%<\""
    elseif &filetype=='scheme'
        execute "call RunScheme()"
    endif
    execute "normal :"
endfunction
function! CompileRun()
    execute "call CompileCode(1)"
    execute "call RunResult()"
endfunction

"map <F5> :call CompileCode()<CR>
"imap <F5> <ESC>:call CompileCode()<CR>
"vmap <F5> <ESC>:call CompileCode()<CR>
"map <F6> :call RunResult()<CR>

