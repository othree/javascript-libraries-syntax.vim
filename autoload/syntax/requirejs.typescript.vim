" Vim syntax file
" Language:    require.js for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     2.1.4.1
" URL:         http://requirejs.org/


syntax keyword typescriptRequire require requirejs containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptRequiredot
syntax match   typescriptRequiredot contained /\./ nextgroup=typescriptRequireMethods
syntax keyword typescriptRequireMethods contained config

syntax keyword typescriptRdefine define containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=typescriptRdefinedot
syntax match   typescriptRdefinedot contained /\./ nextgroup=typescriptRdefineMethods
syntax keyword typescriptRdefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_typescript_syntax_inits")
  if version < 508
    let did_requirejs_typescript_syntax_inits = 1
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
