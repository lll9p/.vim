function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? 'OK' : printf(
    \   '%dW %dE',
    \   all_non_errors,
    \   all_errors
    \)
endfunction
        set ruler 
        " statusline{
        set statusline=
        set statusline+=%7*\[%n]                                  "buffernr
        set statusline+=%1*\ %<%F\                                "File+path
        set statusline+=%2*\ %y\                                  "FileType
        set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
        set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
        set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
        set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
        set statusline+=%#warningmsg#
        set statusline+=%{LinterStatus()}
        set statusline+=%*
        set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
        set statusline+=%9*\ col:%03c\                            "Colnr
        set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
        function! HighlightSearch()
          if &hls
            return 'H'
          else
            return ''
          endif
        endfunction
       hi User1 guifg=#ffdad8  guibg=#880c0e
       hi User2 guifg=#000000  guibg=#F4905C
       hi User3 guifg=#292b00  guibg=#f4f597
       hi User4 guifg=#112605  guibg=#aefe7B
       hi User5 guifg=#051d00  guibg=#7dcc7d
       hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
       hi User8 guifg=#ffffff  guibg=#5b7fbb
       hi User9 guifg=#ffffff  guibg=#810085
       hi User0 guifg=#ffffff  guibg=#094afe
