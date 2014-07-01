" Vim syntax file
" Language:    JS Lib syntax post process for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/07/01
" Version:     0.5
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

" work with https://github.com/kchmck/vim-coffee-script
syntax cluster coffeeIdentifier add=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions,@coffeeSFunctions
syntax cluster coffeeIdentifier add=@coffeeQAttrs,@coffee_Attrs,@coffeeBAttrs,@coffeepAttrs
" syntax match   coffeeLDot /\./   containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeLibraryFuncs,@coffeeLibraryAttrs
