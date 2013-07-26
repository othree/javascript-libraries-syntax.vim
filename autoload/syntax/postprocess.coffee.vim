" Vim syntax file
" Language:    JS Lib syntax post process for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/25
" Version:     0.4
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

syntax cluster coffeeLibraryFuncs contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions,@coffeeSFunctions
syntax cluster coffeeLibraryAttrs contains=@coffeeQAttrs,@coffee_Attrs,@coffeeBAttrs,@coffeepAttrs
syntax match   coffeeLDot /\./   containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeLibraryFuncs,@coffeeLibraryAttrs
