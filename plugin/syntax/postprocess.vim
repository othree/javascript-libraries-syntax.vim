
if &filetype == 'javascript'
  syntax match   javascriptQFunc /\.\w\+(\@=/ containedin=ALL contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions
endif

if &filetype == 'coffee'
  syntax match   coffeeQFunc /\.\w\+(\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
  syntax match   coffeeQFunc /\.\w\+ [0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
endif

if &filetype == 'ls'
  syntax match   coffeeQFunc /[\.!]\w\+[(!]\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
  syntax match   coffeeQFunc /[\.!]\w\+ [0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
endif
