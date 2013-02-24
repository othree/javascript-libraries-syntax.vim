" Vim syntax file
" Language:    require.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/24
" Version:     2.1.4
" URL:         http://requirejs.org/


syntax keyword javascriptRequire require requirejs containedin=ALLBUT,javascriptComment
syntax match   javascriptRequiredot containedin=ALLBUT,javascriptComment /\(\<require\.\|requirejs\.\)\@<=\h\w*/ contains=javascriptRequireMethods
syntax keyword javascriptRequireMethods contained config

syntax keyword javascriptRdefine define containedin=ALLBUT,javascriptComment
syntax match   javascriptRdefinedot containedin=ALLBUT,javascriptComment /\(\<define\.\)\@<=\h\w*/ contains=javascriptRdefineMethods
syntax keyword javascriptRdefineMethods contained amd


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

  HiLink javascriptRequire         PreProc
  HiLink javascriptRequireMethods  PreProc
  HiLink javascriptRdefine         PreProc
  HiLink javascriptRdefineMethods  PreProc


  delcommand HiLink
endif
