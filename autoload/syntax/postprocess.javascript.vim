" Vim syntax file
" Language:    JS Lib syntax post process for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/29
" Version:     0.5
" URL:         https://github.com/othree/javascript-libraries-syntax.vim

syntax cluster stringcomment          contains=javascriptString,javascriptComment

syntax cluster javascriptLibraryFuncs contains=@jqueryFunctions,@underscoreFunctions,@backboneFunctions,@preludeFunctions,@angularjsFunctions
syntax cluster javascriptLibraryAttrs contains=@jqueryAttrs,@underscoreAttrs,@backboneAttrs,@preludeAttrs,@angularjsAttrs
syntax match   javascriptLDot /\./    containedin=ALLBUT,javascriptComment,javascriptString contains=@javascriptLibraryFuncs,@javascriptLibraryAttrs
