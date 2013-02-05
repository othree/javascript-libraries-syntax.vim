
if &filetype == 'javascript'
  syntax match   javascriptQFunc /\.\w\+(\@=/ containedin=ALL contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions
endif

if &filetype == 'coffee'
  syntax match   coffeeQFuncA /\.\w\+(\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
  syntax match   coffeeQFuncB /\.\w\+ \w\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
endif

if &filetype == 'ls'
endif
