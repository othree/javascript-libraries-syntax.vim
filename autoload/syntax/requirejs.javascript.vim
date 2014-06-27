" Vim syntax file
" Language:    require.js for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     2.1.4.1
" URL:         http://requirejs.org/


syntax keyword javascriptRequire require requirejs containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptRequiredot
syntax match   javascriptRequiredot contained /\./ nextgroup=javascriptRequireMethods
syntax keyword javascriptRequireMethods contained config

syntax keyword javascriptRdefine define containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString nextgroup=javascriptRdefinedot
syntax match   javascriptRdefinedot contained /\./ nextgroup=javascriptRdefineMethods
syntax keyword javascriptRdefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_javascript_syntax_inits")
  if version < 508
    let did_requirejs_javascript_syntax_inits = 1
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
