" Vim syntax file
" Language:    JS Lib syntax post process for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     0.5
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster props add=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions
syntax cluster props add=@javascriptpFunctions,@javascriptAFunctions,@javascriptSFunctions,@javascriptJFunctions
syntax cluster props add=@javascriptRaFunctions
syntax cluster props add=@javascriptQAttrs,@javascript_Attrs,@javascriptBAttrs,@javascriptpAttrs,@javascriptAAttrs,@javascriptJAttrs
syntax cluster props add=@javascriptRFunctions,@gavascriptRAttrs
syntax cluster props add=@javascriptVFunctions,javascriptVAttrs

if !exists("javascript_props")
  syntax match javascriptLDot /\./ containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptLineComment,javascriptRegexpString,javascriptString nextgroup=@props
endif
