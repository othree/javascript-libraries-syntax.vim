
autocmd BufNewFile,BufRead *.javascript,*.coffee,*.ls
      \ exe('source '.expand('<sfile>:p:h').'/syntax/jquery.vim') |
      \ exe('source '.expand('<sfile>:p:h').'/syntax/underscore.vim') |
      \ exe('source '.expand('<sfile>:p:h').'/syntax/backbone.vim') |
      \ exe('source '.expand('<sfile>:p:h').'/syntax/prelude.vim') |
      \ exe('source '.expand('<sfile>:p:h').'/syntax/postprocess.vim') |

