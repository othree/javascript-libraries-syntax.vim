" Vim syntax file
" Language:    handlebars for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2015/02/02
" Version:     2.0.0
" URL:         http://handlebarsjs.com/

syntax keyword typescriptHandlebars Handlebars containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution
" syntax match   typescriptunderscoredot contained /\./ nextgroup=@typescript_Functions
" syntax match   typescriptunderscoredot contained /([^)]*)\./ nextgroup=@typescript_Functions

syntax cluster typescriptHFunctions contains=typescriptHmethods,typescriptHutilityMethod

syntax keyword typescriptHmethods   contained compile precompile template unregisterPartial registerPartial
syntax keyword typescriptHmethods   contained registerHelper unregisterHelper SafeString escapeExpression
syntax keyword typescriptHmethods   contained createFrame create log

syntax keyword typescriptHutility   contained Utils

syntax keyword typescriptHutilityMethod   contained isEmpty extend toString isArray isFunction appendContextPath


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_typescript_syntax_inits")
  if version < 508
    let did_underscore_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptHandlebars      Constant

  HiLink typescriptHmethods        PreProc
  HiLink typescriptHutility        PreProc
  HiLink typescriptHutilityMethod  PreProc

  delcommand HiLink
endif
