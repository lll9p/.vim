        " 打印{{{
        if $ISLINUX
            set printencoding=utf-8
            set printmbcharset=iso10646
            set printfont=Microsoft_YaHei_Mono
            "要先在linux中安装相应的字体，并在ghostscript中配置好，如何配置见后文
            set printmbfont=r:Microsoft_YaHei_Mono
            "要先在linux中安装相应的字体，并在ghostscript中配置好，如何配置见后文
        elseif g:os=='Windows'
            " very dirty, but works
            map <Leader>p :let @m=&mod<CR>ggvG$"+yggvG$x:set enc=cp936<CR>:lang mes zh_CN<CR>"+P:ha<CR>ggvG$"+yggvG$x:set enc=utf-8<CR>:lang mes zh_CN.UTF-8<CR>"+P:if !@m<CR>w<CR>en<CR><CR>
        endif
