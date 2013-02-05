" Vim syntax file
" Language:    Backbone.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     0.1
" URL:         https://github.com/othree/javascript-libries-syntax.vim
"
syntax cluster   javascriptLibraryFuncs contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions,@javascriptpFunctions
syntax cluster   coffeeLibraryFuncs contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions
syntax cluster   lsLibraryFuncs contains=@lsQFunctions,@ls_Functions,@lsBFunctions,@lspFunctions

if &filetype == 'javascript'
  syntax match   javascriptMethods /\.\h\w*(\@=/ containedin=ALL contains=@javascriptLibraryFuncs
endif

if &filetype == 'coffee'
  syntax match   coffeeMethods /\.\h\w*(\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions
  syntax match   coffeeMethods /\.\h\w* +[0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions,@coffeepFunctions
endif

if &filetype == 'ls'
  syntax match   lsMethods /[\.!]\h\w*[(!]\@=/   containedin=ALL contains=@lsLibraryFuncs
  syntax match   lsMethods /[\.!]\h\w* +[0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@lsLibraryFuncs
  syntax match   lsPipe /|>/ containedin=ALL skipwhite nextgroup=@lspFunctions
  syntax match   lsCompose />>/ containedin=ALL skipwhite nextgroup=@lspFunctions
endif
