" Vim syntax file
" Language:    JS Lib syntax post process for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster javascriptLibraryFuncs contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions,@javascriptpFunctions,@javascriptAFunctions,@javascriptSFunctions
syntax cluster javascriptLibraryAttrs contains=@javascriptQAttrs,@javascript_Attrs,@javascriptBAttrs,@javascriptpAttrs,@javascriptAAttrs
syntax match   javascriptLDot /\./ containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptLineComment,javascriptString nextgroup=@javascriptLibraryFuncs,@javascriptLibraryAttrs
