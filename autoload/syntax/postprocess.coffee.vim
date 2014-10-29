" Vim syntax file
" Language:    JS Lib syntax post process for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/07/01
" Version:     0.5
" URL:         https://github.com/othree/javascript-libraries-syntax.vim
"

" work with https://github.com/kchmck/vim-coffee-script
syntax cluster props add=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
syntax cluster props add=@coffeepFunctions,@coffeeAFunctions,@coffeeSFunctions,@coffeeJFunctions
syntax cluster props add=@coffeeQAttrs,@coffee_Attrs,@coffeeBAttrs,@coffeepAttrs,@coffeeAAttrs,@coffeeJAttrs
syntax cluster props add=@coffeeRProp
" syntax match   coffeeLDot /\./   containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeLibraryFuncs,@coffeeLibraryAttrs
"
syntax region  coffeeString     start=/"/  skip=/\\\\\|\\"/  end=/"/ contains=@coffeeInterpString,@jSelectors
syntax region  coffeeString     start=/'/  skip=/\\\\\|\\'/  end=/'/ contains=@coffeeBasicString,@jSelectors

