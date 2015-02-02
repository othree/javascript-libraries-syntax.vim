" Vim syntax file
" Language:    handlebars for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2015/02/02
" Version:     2.0.0
" URL:         http://handlebarsjs.com/

syntax keyword lsHandlebars Handlebars containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution
" syntax match   lsunderscoredot contained /\./ nextgroup=@ls_Functions
" syntax match   lsunderscoredot contained /([^)]*)\./ nextgroup=@ls_Functions

syntax cluster lsHFunctions contains=lsHmethods,lsHutilityMethod

syntax keyword lsHmethods   contained compile precompile template unregisterPartial registerPartial
syntax keyword lsHmethods   contained registerHelper unregisterHelper SafeString escapeExpression
syntax keyword lsHmethods   contained createFrame create log

syntax keyword lsHutility   contained Utils

syntax keyword lsHutilityMethod   contained isEmpty extend toString isArray isFunction appendContextPath


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_ls_syntax_inits")
  if version < 508
    let did_underscore_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsHandlebars      Constant

  HiLink lsHmethods        PreProc
  HiLink lsHutility        PreProc
  HiLink lsHutilityMethod  PreProc

  delcommand HiLink
endif
