
if &filetype == 'javascript'
  syntax match   javascriptQFunc /\.\h\w\*(\@=/ containedin=ALL contains=@javascriptQFunctions,@javascript_Functions,@javascriptBFunctions
endif

if &filetype == 'coffee'
  syntax match   coffeeQFunc /\.\h\w\*(\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
  syntax match   coffeeQFunc /\.\h\w\* [0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
endif

if &filetype == 'ls'
  syntax match   coffeeQFunc /[\.!]\h\w\*[(!]\@=/   containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
  syntax match   coffeeQFunc /[\.!]\h\w\* [0-9A-Za-z_(\[{]\@=/ containedin=ALL contains=@coffeeQFunctions,@coffee_Functions,@coffeeBFunctions
endif
