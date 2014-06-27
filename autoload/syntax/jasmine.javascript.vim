" Vim syntax file
" Language:    jasmine for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/01/31
" Version:     2.0
" URL:         http://jasmine.github.io/


syntax keyword javascriptJasmine jasmine containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptJdot
syntax match   javascriptJdot contained /\./ nextgroup=javascriptJMethods
syntax keyword javascriptJMethods contained any createSpy createSpyObj HtmlReporter Clock getEnv

syntax keyword javascriptJMethods contained tick useMock
syntax keyword javascriptJMethods contained addReporter specFilter

syntax cluster javascriptJFunctions      contains=javascriptJMethods,javascriptJEnvMethods,javascriptJEnvMethods,javascriptJExpectMethods,javascriptJSpyMethods,javascriptJSpyAndMethods,javascriptJSpyCallsMethods
syntax cluster javascriptJAttrs      contains=javascriptJExpectNot,javascriptJSpyAnd,javascriptJSpyCalls

syntax keyword javascriptJGlobalMethod describe done runs waitsFor it beforeEach afterEach containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString

syntax keyword javascriptJGlobalMethod xdescribe xit containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString

syntax keyword javascriptJGlobalMethod spyOn containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString

syntax keyword javascriptJSpyAnd and contained
syntax keyword javascriptJSpyAndMethods returnValue callFake throwError stub contained
syntax keyword javascriptJSpyCalls calls contained
syntax keyword javascriptJSpyMethods andReturn andCallThrough callThrough contained
syntax keyword javascriptJCallsMethods any count argsFor allArgs all mostRecent first reset contained

syntax keyword javascriptJGlobalMethod expect containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString
syntax keyword javascriptJExpectNot not contained nextgroup=javascriptJExpectNotdot

syntax keyword javascriptJExpectMethods toHaveBeenCalled toHaveBeenCalledWith toEqual toBe toMatch contained
syntax keyword javascriptJExpectMethods toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy contained
syntax keyword javascriptJExpectMethods toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow contained


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_javascript_syntax_inits")
  if version < 508
    let did_requirejs_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptJasmine         Constant
  HiLink javascriptJMethods        PreProc
  HiLink javascriptJEnvMethods     PreProc
  HiLink javascriptJClockMethods   PreProc
  HiLink javascriptJGlobalMethod   PreProc
  HiLink javascriptJSpyAnd         PreProc
  HiLink javascriptJSpyAndMethods  PreProc
  HiLink javascriptJSpyCalls       PreProc
  HiLink javascriptJSpyMethods     PreProc
  HiLink javascriptJCallsMethods   PreProc
  HiLink javascriptJExpectNot      PreProc
  HiLink javascriptJExpectMethods  PreProc

  delcommand HiLink
endif
