" Vim syntax file
" Language:    JS Lib syntax post process for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster javascriptLibraryFuncs contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions,@javascriptpFunctions,@javascriptAFunctions
syntax cluster javascriptLibraryAttrs contains=@javascriptQAttrs,@javascript_Attrs,@javascriptBAttrs,@javascriptpAttrs,@javascriptAAttrs
syntax match   javascriptLMethods /[0-9A-Za-z_$)]\.\h\w*(\@=/ containedin=ALLBUT,javascriptComment contains=@javascriptLibraryFuncs transparent
syntax match   javascriptLAttrs /[0-9A-Za-z_$)]\.\h\w*/ containedin=ALLBUT,javascriptComment contains=@javascriptLibraryAttrs transparent
