" Vim syntax file
" Language:    JS Lib syntax post process for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster coffeeLibraryFuncs contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions
syntax cluster coffeeLibraryAttrs contains=@coffeeQAttrs,@coffee_Attrs,@coffeeBAttrs,@coffeepAttrs
syntax match   coffeeLMethods /[0-9A-Za-z_$)]\.\h\w*(\@=/   containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs transparent
syntax match   coffeeLMethods /[0-9A-Za-z_$)]\.\h\w* \+[0-9A-Za-z_$([{'"]\@=/ containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs transparent
syntax match   coffeeLMethods /[0-9A-Za-z_$)]\.\h\w* \([-=]>\)\@=/ containedin=ALLBUT,coffeeComment contains=@coffeeLibraryFuncs transparent
syntax match   coffeeLAttrs /[0-9A-Za-z_$)]\.\h\w*/   containedin=ALLBUT,coffeeComment contains=@coffeeLibraryAttrs transparent
