" Vim syntax file
" Language:    require.js for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/24
" Version:     2.1.4
" URL:         http://requirejs.org/


syntax keyword typescriptRequire require requirejs containedin=ALLBUT,typescriptComment
syntax match   typescriptRequiredot containedin=ALLBUT,typescriptComment /\(\<require\.\|requirejs\.\)\@<=\h\w*/ contains=typescriptRequireMethods
syntax keyword typescriptRequireMethods contained config

syntax keyword typescriptRdefine define containedin=ALLBUT,typescriptComment
syntax match   typescriptRdefinedot containedin=ALLBUT,typescriptComment /\(\<define\.\)\@<=\h\w*/ contains=typescriptRdefineMethods
syntax keyword typescriptRdefineMethods contained amd


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

  HiLink typescriptRequire         PreProc
  HiLink typescriptRequireMethods  PreProc
  HiLink typescriptRdefine         PreProc
  HiLink typescriptRdefineMethods  PreProc


  delcommand HiLink
endif
