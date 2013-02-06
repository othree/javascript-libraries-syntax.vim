" Vim plugin file
" Language:    JS Lib syntax loader
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/06
" Version:     0.1
" URL:         https://github.com/othree/javascript-libraries-syntax.vim

autocmd FileType javascript call LoadLibs(expand('<sfile>:p:h'))
autocmd FileType coffee call LoadLibs(expand('<sfile>:p:h'))
autocmd FileType ls call LoadLibs(expand('<sfile>:p:h'))

function LoadLibs(path)
    exe('source '.a:path.'/syntax/jquery.vim')
    exe('source '.a:path.'/syntax/underscore.vim')
    exe('source '.a:path.'/syntax/backbone.vim')
    exe('source '.a:path.'/syntax/prelude.vim')
    exe('source '.a:path.'/syntax/postprocess.vim')
endfunction

