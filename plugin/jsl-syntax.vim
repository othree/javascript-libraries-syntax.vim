
autocmd FileType javascript exe('source '.expand('<sfile>:p:h').'/syntax/jquery.vim')
autocmd FileType javascript exe('setlocal dict+='.expand('<sfile>:p:h').'/syntax/jquery.vim')

autocmd FileType javascript exe('source '.expand('<sfile>:p:h').'/syntax/underscore.vim')
autocmd FileType javascript exe('setlocal dict+='.expand('<sfile>:p:h').'/syntax/underscore.vim')
