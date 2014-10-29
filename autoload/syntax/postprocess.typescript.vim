" Vim syntax file
" Language:    JS Lib syntax post process for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster typescriptLibraryFuncs contains=@typescriptQFunctions,@typescript_Functions,@typescriptBFunctions,@typescriptpFunctions,@typescriptAFunctions,typescriptSFunctions,typescriptJFunctions,@typescriptRProp
syntax cluster typescriptLibraryAttrs contains=@typescriptQAttrs,@typescript_Attrs,@typescriptBAttrs,@typescriptpAttrs,@typescriptAAttrs,@typescriptSAttrs,@typescriptJAttrs
syntax match   typescriptLDot /\./ containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptLibraryFuncs,@typescriptLibraryAttrs
