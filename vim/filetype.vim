augroup filetypedetect
    autocmd BufRead,BufNewFile *.wiki setfiletype Wikipedia
    autocmd BufRead,BufNewFile *.wikipedia.org.* setfiletype Wikipedia
    autocmd BufRead,BufNewFile *w.*.com* setfiletype Wikipedia
    autocmd BufRead,BufNewFile *.j setfiletype objj
augroup END

