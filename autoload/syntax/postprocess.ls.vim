" Vim syntax file
" Language:    JS Lib syntax post process for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster lsLibraryFuncs contains=@lsQFunctions,@ls_Functions,@lsBFunctions,@lspFunctions
syntax cluster lsLibraryAttrs contains=@lsQAttrs,@ls_Attrs,@lsBAttrs,@lspAttrs
" ).fun!
" ).fun()
" fun0!fun!
" fun0!fun()
" obj.fun!
" obj.fun()
syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\h\w*[(!]\@=/   containedin=ALLBUT,lsComment contains=@lsLibraryFuncs transparent
" ).fun arg
" !fun arg
" obj.fun arg
syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\h\w* \+[0-9A-Za-z_$([{\'"]\@=/ containedin=ALLBUT,lsComment contains=@lsLibraryFuncs transparent
" ).fun funarg
" !fun funarg
" obj.fun funarg
syntax match   lsLMethods /\([0-9A-Za-z_$][.!]\|)\.\)\h\w* \(!\?[~-]>\)\@=/ containedin=ALLBUT,lsComment contains=@lsLibraryFuncs transparent
syntax match   lsLPipe /|>/ containedin=ALLBUT,lsComment skipwhite nextgroup=@lspFunctions
syntax match   lsLCompose />>/ containedin=ALLBUT,lsComment skipwhite nextgroup=@lspFunctions
syntax match   lsLAttrs /\([0-9A-Za-z_$][.!]\|)\.\)\h\w*/   containedin=ALL contains=@lsLibraryAttrs transparent
