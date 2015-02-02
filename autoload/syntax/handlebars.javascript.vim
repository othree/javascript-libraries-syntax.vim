" Vim syntax file
" Language:    handlebars for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2015/02/02
" Version:     2.0.0
" URL:         http://handlebarsjs.com/

syntax keyword javascriptHandlebars Handlebars containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
" syntax match   javascriptunderscoredot contained /\./ nextgroup=@javascript_Functions
" syntax match   javascriptunderscoredot contained /([^)]*)\./ nextgroup=@javascript_Functions

syntax cluster javascriptHFunctions contains=javascriptHmethods,javascriptHutilityMethod

syntax keyword javascriptHmethods   contained compile precompile template unregisterPartial registerPartial
syntax keyword javascriptHmethods   contained registerHelper unregisterHelper SafeString escapeExpression
syntax keyword javascriptHmethods   contained createFrame create log

syntax keyword javascriptHutility   contained Utils

syntax keyword javascriptHutilityMethod   contained isEmpty extend toString isArray isFunction appendContextPath


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_javascript_syntax_inits")
  if version < 508
    let did_underscore_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptHandlebars      Constant

  HiLink javascriptHmethods        PreProc
  HiLink javascriptHutility        PreProc
  HiLink javascriptHutilityMethod  PreProc

  delcommand HiLink
endif
