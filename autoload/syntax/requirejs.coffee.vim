" Vim syntax file
" Language:    require.js for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     2.1.4.1
" URL:         http://requirejs.org/


syntax keyword coffeeRequire require requirejs containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeRequiredot
syntax match   coffeeRequiredot contained /\./ nextgroup=coffeeRequireMethods
syntax keyword coffeeRequireMethods contained config

syntax keyword coffeeRdefine define containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=coffeeRdefinedot
syntax match   coffeeRdefinedot contained /\./ nextgroup=coffeeRdefineMethods
syntax keyword coffeeRdefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_coffee_syntax_inits")
  if version < 508
    let did_requirejs_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeRequire         PreProc
  HiLink coffeeRequireMethods  PreProc
  HiLink coffeeRdefine         PreProc
  HiLink coffeeRdefineMethods  PreProc


  delcommand HiLink
endif
