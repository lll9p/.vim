        " Add pelican hearders {
        function! Pelican_header() 
            "let line_num = line(".")
            let line_num = 0
            call append(line_num+0,"")
            call append(line_num+1,"###")
            call append(line_num+2,":date: ".strftime("%Y-%m-%d %I:%M")) 
            call append(line_num+3,":modified: ".strftime("%Y-%m-%d %I:%M")) 
            call append(line_num+4,":status: draft") 
            call append(line_num+5,":category: ") 
            call append(line_num+6,":tags: ") 
            call append(line_num+7,":series: ") 
            call append(line_num+8,":slug: ") 
            call append(line_num+9,":authors: ") 
        endfunction
        map <leader>ii <Esc>:call Pelican_header()<CR><Esc>

