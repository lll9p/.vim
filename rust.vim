            autocmd BufNewFile,BufRead *.rs setlocal filetype=rust foldmethod=syntax
            " 设置Rust{
            "" 关闭rust的自动reformat的功能
            let g:rustfmt_autosave = 0

            "" 编译出来的racer所在的路径
            let g:racer_cmd = "C:\\Users\\lao\\.cargo\\bin\\racer"
            let $RUST_SRC_PATH="D:\\apps\\RUST_SRC\\rustc-1.8.0\\src\\"
            let g:formatdef_rustfmt = '"rustfmt"'
            let g:formatters_rust = ['rustfmt']
            " }
