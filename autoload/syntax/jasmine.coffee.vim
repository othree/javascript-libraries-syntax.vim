" Vim syntax file
" Language:    jasmine for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     2.5
" URL:         http://jasmine.github.io/


syntax keyword coffeeJasmine jasmine containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeJdot
syntax match   coffeeJdot            contained /\./ nextgroup=coffeeJMethods
syntax keyword coffeeJMethods        contained any anything createSpy createSpyObj HtmlReporter clock mockDate getEnv objectContaining arrayContaining stringMatching

syntax keyword coffeeJMethods        contained tick useMock
syntax keyword coffeeJMethods        contained addReporter specFilter

syntax cluster coffeeJFunctions      contains=coffeeJMethods,coffeeJEnvMethods,coffeeJEnvMethods,coffeeJExpectMethods,coffeeJSpyMethods,coffeeJSpyAndMethods,coffeeJSpyCallsMethods
syntax cluster coffeeJAttrs          contains=coffeeJExpectNot,coffeeJSpyAnd,coffeeJSpyCalls

syntax keyword coffeeJGlobalMethod   describe done runs waitsFor it beforeEach afterEach beforeAll afterAll containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeAfterIdentifier

syntax keyword coffeeJGlobalMethod   xdescribe xit containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeAfterIdentifier

syntax keyword coffeeJGlobalMethod   spyOn containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeAfterIdentifier

syntax keyword coffeeJSpyAnd         contained and 
syntax keyword coffeeJSpyAndMethods  contained callThrough returnValue returnValues callFake throwError stub 
syntax keyword coffeeJSpyCalls       contained calls 
syntax keyword coffeeJCallsMethods   contained any count argsFor allArgs all mostRecent first reset 

syntax keyword coffeeJGlobalMethod   expect fail pending containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString nextgroup=@coffeeAfterIdentifier
syntax keyword coffeeJExpectNot      contained not contained nextgroup=coffeeJExpectNotdot

syntax keyword coffeeJExpectMethods  contained toHaveBeenCalled toHaveBeenCalledTimes toHaveBeenCalledWith toEqual toBe toMatch 
syntax keyword coffeeJExpectMethods  contained toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy 
syntax keyword coffeeJExpectMethods  contained toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow 

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
