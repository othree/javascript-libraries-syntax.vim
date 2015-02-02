" Vim syntax file
" Language:    handlebars for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2015/02/02
" Version:     2.0.0
" URL:         http://handlebarsjs.com/

syntax keyword coffeeHandlebars Handlebars containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution
" syntax match   coffeeunderscoredot contained /\./ nextgroup=@coffee_Functions
" syntax match   coffeeunderscoredot contained /([^)]*)\./ nextgroup=@coffee_Functions

syntax cluster coffeeHFunctions contains=coffeeHmethods,coffeeHutilityMethod

syntax keyword coffeeHmethods   contained compile precompile template unregisterPartial registerPartial
syntax keyword coffeeHmethods   contained registerHelper unregisterHelper SafeString escapeExpression
syntax keyword coffeeHmethods   contained createFrame create log

syntax keyword coffeeHutility   contained Utils

syntax keyword coffeeHutilityMethod   contained isEmpty extend toString isArray isFunction appendContextPath


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_coffee_syntax_inits")
  if version < 508
    let did_underscore_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeHandlebars      Constant

  HiLink coffeeHmethods        PreProc
  HiLink coffeeHutility        PreProc
  HiLink coffeeHutilityMethod  PreProc

  delcommand HiLink
endif
