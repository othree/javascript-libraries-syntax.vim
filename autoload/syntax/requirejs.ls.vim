" Vim syntax file
" Language:    require.js for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/24
" Version:     2.1.4
" URL:         http://requirejs.org/


syntax keyword lsRequire require requirejs containedin=ALLBUT,lsComment
syntax match   lsRequiredot containedin=ALLBUT,lsComment /\(\<require\.\|requirejs\.\)\@<=\h\w*/ contains=lsRequireMethods
syntax keyword lsRequireMethods contained config

syntax keyword lsRdefine define containedin=ALLBUT,lsComment
syntax match   lsRdefinedot containedin=ALLBUT,lsComment /\(\<define\.\)\@<=\h\w*/ contains=lsRdefineMethods
syntax keyword lsRdefineMethods contained amd


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

  HiLink lsRequire         PreProc
  HiLink lsRequireMethods  PreProc
  HiLink lsRdefine         PreProc
  HiLink lsRdefineMethods  PreProc


  delcommand HiLink
endif
