        " 插件配置{{{
        " Vim-Tex{
        let g:Tex_CompileRule_pdf='xelatex --synctex=-1 -src-specials -interaction=nonstopmode $*'
        let g:Tex_DefaultTargetFormat='pdf'
        let g:Tex_ViewRule_pdf='SumatraPDF -reuse-instance -inverse-search "gvim -c \":RemoteOpen +\%l \%f\""'
        let g:Tex_MultipleCompileFormats='pdf'

