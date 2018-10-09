" Vim syntax file
" Language:    tape for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2018/02/21
" Version:     4.9.0
" URL:         https://github.com/substack/tape


syntax keyword coffeeTape test       containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeRegexpString,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeTdot
syntax match   coffeeTdot            contained /\./ nextgroup=coffeeTMethods
syntax keyword coffeeTMethods        contained skip onfinish onFailure createHarness only createStream

syntax keyword coffeeTapeAssert t    containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeRegexpString,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeTAssertdot
syntax match   coffeeTAssertdot      contained /\./ nextgroup=coffeeTAssertMethods
syntax keyword coffeeTAssertMethods  contained plan end fail pass timeoutAfter skip ok notOk error
syntax keyword coffeeTAssertMethods  contained equal notEqual deepEqual notDeepEqual deepLooseEqual notDeepLooseEqual
syntax keyword coffeeTAssertMethods  contained throws dowsNotThrow test comment

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_coffee_syntax_inits")
  if version < 508
    let did_requirejs_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeTape            Constant
  HiLink coffeeTMethods        PreProc
  HiLink coffeeTapeAssert      Constant
  HiLink coffeeTAssertMethods  PreProc

  delcommand HiLink
endif
