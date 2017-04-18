" Vim plugin file
" Language:    
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/04/18
" Version:     0.4.2
" URL:         https://github.com/othree/javascript-libraries-syntax.vim

if exists('b:current_syntax') && b:current_syntax == 'typescript'
  call jslibsyntax#load()
endif
