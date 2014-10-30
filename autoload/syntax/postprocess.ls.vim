" Vim syntax file
" Language:    JS Lib syntax post process for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster lsLibraryFuncs contains=@lsQFunctions,@ls_Functions,@lsBFunctions,@lspFunctions,@lsAFunctions
syntax cluster lsLibraryFuncs contains=@lsSFunctions,@lsJFunctions,@lsRProp
syntax cluster lsLibraryAttrs contains=@lsQAttrs,@ls_Attrs,@lsBAttrs,@lspAttrs,@lsAAttrs,@lsSAttrs,@lsJAttrs
" ).fun!
" ).fun()
" fun0!fun!
" fun0!fun()
" obj.fun!
" obj.fun()
" ).fun arg
" !fun arg
" obj.fun arg
syntax match   lsLDot /\./   containedin=ALLBUT,lsComment,lsLineComment,lsString contains=@lsLibraryFuncs,@lsLibraryAttrs
syntax match   lsLExp /!/   containedin=ALLBUT,lsComment,lsLineComment,lsString contains=@lsLibraryFuncs,@lsLibraryAttrs

syntax match   lsLPipe /|>/ containedin=ALLBUT,lsComment,lsLineComment,lsString skipwhite nextgroup=@lspFunctions
syntax match   lsLCompose />>/ containedin=ALLBUT,lsComment,lsLineComment,lsString skipwhite nextgroup=@lspFunctions

syntax region  lsString start=/"/ skip=/\\\\\|\\"/ end=/"/ contains=@lsInterpString,@jSelectors
syntax region  lsString start=/'/ skip=/\\\\\|\\'/ end=/'/ contains=@lsSimpleString,@jSelectors
