" Vim syntax file
" Language:    jasmine for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/01/31
" Version:     2.0
" URL:         http://jasmine.github.io/


syntax keyword coffeeJasmine jasmine containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeJdot
syntax match   coffeeJdot contained /\./ nextgroup=coffeeJMethods
syntax keyword coffeeJMethods contained any createSpy createSpyObj HtmlReporter Clock getEnv

syntax keyword coffeeJMethods contained tick useMock
syntax keyword coffeeJMethods contained addReporter specFilter

syntax cluster coffeeJFunctions      contains=coffeeJMethods,coffeeJEnvMethods,coffeeJEnvMethods,coffeeJExpectMethods,coffeeJSpyMethods,coffeeJSpyAndMethods,coffeeJSpyCallsMethods
syntax cluster coffeeJAttrs      contains=coffeeJExpectNot,coffeeJSpyAnd,coffeeJSpyCalls

syntax keyword coffeeJGlobalMethod describe done runs waitsFor it beforeEach afterEach containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString

syntax keyword coffeeJGlobalMethod xdescribe xit containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString

syntax keyword coffeeJGlobalMethod spyOn containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString

syntax keyword coffeeJSpyAnd and contained
syntax keyword coffeeJSpyAndMethods returnValue callFake throwError stub contained
syntax keyword coffeeJSpyCalls calls contained
syntax keyword coffeeJSpyMethods andReturn andCallThrough callThrough contained
syntax keyword coffeeJCallsMethods any count argsFor allArgs all mostRecent first reset contained

syntax keyword coffeeJGlobalMethod expect containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString
syntax keyword coffeeJExpectNot not contained nextgroup=coffeeJExpectNotdot

syntax keyword coffeeJExpectMethods toHaveBeenCalled toHaveBeenCalledWith toEqual toBe toMatch contained
syntax keyword coffeeJExpectMethods toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy contained
syntax keyword coffeeJExpectMethods toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow contained


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

  HiLink coffeeJasmine         Constant
  HiLink coffeeJMethods        PreProc
  HiLink coffeeJEnvMethods     PreProc
  HiLink coffeeJClockMethods   PreProc
  HiLink coffeeJGlobalMethod   PreProc
  HiLink coffeeJSpyAnd         PreProc
  HiLink coffeeJSpyAndMethods  PreProc
  HiLink coffeeJSpyCalls       PreProc
  HiLink coffeeJSpyMethods     PreProc
  HiLink coffeeJCallsMethods   PreProc
  HiLink coffeeJExpectNot      PreProc
  HiLink coffeeJExpectMethods  PreProc

  delcommand HiLink
endif
