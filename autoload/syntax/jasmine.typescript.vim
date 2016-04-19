" Vim syntax file
" Language:    jasmine for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/04/19
" Version:     2.0
" URL:         http://jasmine.github.io/


syntax keyword typescriptJasmine jasmine containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptJdot
syntax match   typescriptJdot contained /\./ nextgroup=typescriptJMethods
syntax keyword typescriptJMethods contained any createSpy createSpyObj HtmlReporter Clock getEnv

syntax keyword typescriptJMethods contained tick useMock
syntax keyword typescriptJMethods contained addReporter specFilter

syntax cluster typescriptJFunctions      contains=typescriptJMethods,typescriptJEnvMethods,typescriptJEnvMethods,typescriptJExpectMethods,typescriptJSpyMethods,typescriptJSpyAndMethods,typescriptJSpyCallsMethods
syntax cluster typescriptJAttrs      contains=typescriptJExpectNot,typescriptJSpyAnd,typescriptJSpyCalls

syntax keyword typescriptJGlobalMethod describe done runs waitsFor it beforeEach afterEach containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJGlobalMethod xdescribe xit containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJGlobalMethod spyOn containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJSpyAnd and contained
syntax keyword typescriptJSpyAndMethods returnValue callFake throwError stub contained
syntax keyword typescriptJSpyCalls calls contained
syntax keyword typescriptJSpyMethods andReturn andCallThrough callThrough contained
syntax keyword typescriptJCallsMethods any count argsFor allArgs all mostRecent first reset contained

syntax keyword typescriptJGlobalMethod expect containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier
syntax keyword typescriptJExpectNot not contained nextgroup=typescriptJExpectNotdot

syntax keyword typescriptJExpectMethods toHaveBeenCalled toHaveBeenCalledWith toEqual toBe toMatch contained
syntax keyword typescriptJExpectMethods toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy contained
syntax keyword typescriptJExpectMethods toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow contained


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_typescript_syntax_inits")
  if version < 508
    let did_requirejs_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptJasmine         Constant
  HiLink typescriptJMethods        PreProc
  HiLink typescriptJEnvMethods     PreProc
  HiLink typescriptJClockMethods   PreProc
  HiLink typescriptJGlobalMethod   PreProc
  HiLink typescriptJSpyAnd         PreProc
  HiLink typescriptJSpyAndMethods  PreProc
  HiLink typescriptJSpyCalls       PreProc
  HiLink typescriptJSpyMethods     PreProc
  HiLink typescriptJCallsMethods   PreProc
  HiLink typescriptJExpectNot      PreProc
  HiLink typescriptJExpectMethods  PreProc

  delcommand HiLink
endif
