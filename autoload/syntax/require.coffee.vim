" Vim syntax file
" Language:    require.js for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/24
" Version:     2.1.4
" URL:         http://requirejs.org/


syntax keyword coffeeRequire require requirejs containedin=ALLBUT,coffeeComment
syntax match   coffeeRequiredot containedin=ALLBUT,coffeeComment /\(\<require\.\|requirejs\.\)\@<=\h\w*/ contains=coffeeRequireMethods
syntax keyword coffeeRequireMethods contained config

syntax keyword coffeeRdefine define containedin=ALLBUT,coffeeComment
syntax match   coffeeRdefinedot containedin=ALLBUT,coffeeComment /\(\<define\.\)\@<=\h\w*/ contains=coffeeRdefineMethods
syntax keyword coffeeRdefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
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
