
" autocmd FileType javascript syntax include @jquery syntax/jquery.vim
autocmd FileType javascript exe('setl dict+='.expand('<sfile>:p:h').'/../after/syntax/javascript/jquery.vim')

" autocmd FileType javascript syntax include @underscore plugin/syntax/underscore.vim
autocmd FileType javascript exe('setl dict+='.expand('<sfile>:p:h').'/../after/syntax/javascript/underscore.vim')
