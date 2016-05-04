" Vim plugin file
" Language:    JS Lib syntax loader
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/30
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim

let s:libs = [
  \ 'jquery',
  \ 'underscore',
  \ 'backbone',
  \ 'prelude',
  \ 'angularjs',
  \ 'angularui',
  \ 'angularuirouter',
  \ 'requirejs',
  \ 'sugar',
  \ 'jasmine',
  \ 'chai',
  \ 'ramda',
  \ 'react',
  \ 'flux',
  \ 'handlebars'
  \ ]

let s:default_libs = [
  \ 'jquery',
  \ 'underscore',
  \ 'backbone',
  \ 'react'
  \ ]

let s:path = expand('<sfile>:p:h')

function! jslibsyntax#load()
  if !exists('g:used_javascript_libs') 
    let g:used_javascript_libs = join(s:default_libs, ',')
  endif

  let index = 0
  let loaded = 0
  while index < len(s:libs)
    let lib = s:libs[index]
    let use = g:used_javascript_libs =~ lib
    if exists('b:javascript_lib_use_'.lib)
      exec('let use = b:javascript_lib_use_'.lib)
    endif
    if use
      let fn = s:path.'/syntax/'.lib.'.'.b:current_syntax.'.vim'
      if filereadable(fn)
        exe('source '.fnameescape(fn))
        let loaded = loaded + 1
      endif
    endif
    let index = index + 1
  endwhile
  let fn = s:path.'/syntax/postprocess.'.b:current_syntax.'.vim'
  if loaded > 0 && filereadable(fn)
    exe('source '.fnameescape(fn))
  endif
endfunction

