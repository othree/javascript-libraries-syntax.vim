" Vim syntax file
" Language:    Flux for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/30
" Version:     2.0.2
" URL:         https://facebook.github.io/flux/docs/dispatcher.html

syntax keyword coffeeFlux Dispatcher containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution

syntax keyword coffeeFDispatcher contained register unregister waitFor dispatch isDispatching

syntax cluster coffeeFFunction      contains=coffeeFDispatcher


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_coffee_syntax_inits")
  if version < 508
    let did_jquery_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeFlux            Constant

  HiLink coffeeFDispatcher     PreProc

  delcommand HiLink
endif
