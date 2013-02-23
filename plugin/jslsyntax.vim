" Vim plugin file
" Language:    JS Lib syntax loader
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/20
" Version:     0.2
" URL:         https://github.com/othree/javascript-libraries-syntax.vim

autocmd FileType javascript call LoadLibs(expand('<sfile>:p:h'))
autocmd FileType coffee call LoadLibs(expand('<sfile>:p:h'))
autocmd FileType ls call LoadLibs(expand('<sfile>:p:h'))

function! LoadLibs(path)
  if exists('b:javascript_libraries_syntax')
    return
  endif
  let b:javascript_libraries_syntax = 1

  let libs = ['jquery', 'underscore', 'backbone', 'prelude', 'angularjs']
  if !exists('g:used_javascript_libs') 
    let g:used_javascript_libs = join(libs, ',')
  endif

  let index = 0
  let loaded = 0
  while index < len(libs)
    let lib = libs[index]
    if g:used_javascript_libs =~ lib
      let fn = a:path.'/../autoload/syntax/'.lib.'.vim'
      if filereadable(fn)
        exe('source '.fn)
        let loaded = loaded + 1
      endif
    endif
    let index = index + 1
  endwhile
  if loaded > 0
    exe('source '.a:path.'/../autoload/syntax/postprocess.vim')
  endif
endfunction

