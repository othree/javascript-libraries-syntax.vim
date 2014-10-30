" Vim syntax file
" Language:    Flux for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/30
" Version:     2.0.2
" URL:         https://facebook.github.io/flux/docs/dispatcher.html

syntax keyword typescriptFlux Dispatcher containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution

syntax keyword typescriptFDispatcher contained register unregister waitFor dispatch isDispatching

syntax cluster typescriptFFunction      contains=typescriptFDispatcher


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_typescript_syntax_inits")
  if version < 508
    let did_jquery_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptFlux            Constant

  HiLink typescriptFDispatcher     PreProc

  delcommand HiLink
endif
