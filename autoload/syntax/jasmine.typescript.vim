" Vim syntax file
" Language:    jasmine for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     2.5
" URL:         http://jasmine.github.io/


syntax keyword typescriptJasmine jasmine containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptJdot
syntax match   typescriptJdot            contained /\./ nextgroup=typescriptJMethods
syntax keyword typescriptJMethods        contained any anything createSpy createSpyObj HtmlReporter clock mockDate getEnv objectContaining arrayContaining stringMatching

syntax keyword typescriptJMethods        contained tick useMock
syntax keyword typescriptJMethods        contained addReporter specFilter

syntax cluster typescriptJFunctions      contains=typescriptJMethods,typescriptJEnvMethods,typescriptJEnvMethods,typescriptJExpectMethods,typescriptJSpyMethods,typescriptJSpyAndMethods,typescriptJSpyCallsMethods
syntax cluster typescriptJAttrs          contains=typescriptJExpectNot,typescriptJSpyAnd,typescriptJSpyCalls

syntax keyword typescriptJGlobalMethod   describe done runs waitsFor it beforeEach afterEach beforeAll afterAll containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJGlobalMethod   xdescribe xit containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJGlobalMethod   spyOn containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier

syntax keyword typescriptJSpyAnd         contained and 
syntax keyword typescriptJSpyAndMethods  contained callThrough returnValue returnValues callFake throwError stub 
syntax keyword typescriptJSpyCalls       contained calls 
syntax keyword typescriptJCallsMethods   contained any count argsFor allArgs all mostRecent first reset 

syntax keyword typescriptJGlobalMethod   expect fail pending containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString nextgroup=@typescriptAfterIdentifier
syntax keyword typescriptJExpectNot      contained not contained nextgroup=typescriptJExpectNotdot

syntax keyword typescriptJExpectMethods  contained toHaveBeenCalled toHaveBeenCalledTimes toHaveBeenCalledWith toEqual toBe toMatch 
syntax keyword typescriptJExpectMethods  contained toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy 
syntax keyword typescriptJExpectMethods  contained toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow 

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
