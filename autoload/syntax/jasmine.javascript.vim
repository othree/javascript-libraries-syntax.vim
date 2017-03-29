" Vim syntax file
" Language:    jasmine for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     2.5
" URL:         http://jasmine.github.io/


syntax keyword javascriptJasmine jasmine containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptJdot
syntax match   javascriptJdot            contained /\./ nextgroup=javascriptJMethods
syntax keyword javascriptJMethods        contained any anything createSpy createSpyObj HtmlReporter clock mockDate getEnv objectContaining arrayContaining stringMatching

syntax keyword javascriptJMethods        contained tick useMock
syntax keyword javascriptJMethods        contained addReporter specFilter

syntax cluster javascriptJFunctions      contains=javascriptJMethods,javascriptJEnvMethods,javascriptJEnvMethods,javascriptJExpectMethods,javascriptJSpyMethods,javascriptJSpyAndMethods,javascriptJSpyCallsMethods
syntax cluster javascriptJAttrs          contains=javascriptJExpectNot,javascriptJSpyAnd,javascriptJSpyCalls

syntax keyword javascriptJGlobalMethod   describe done runs waitsFor it beforeEach afterEach beforeAll afterAll containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString nextgroup=@javascriptAfterIdentifier

syntax keyword javascriptJGlobalMethod   xdescribe xit containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString nextgroup=@javascriptAfterIdentifier

syntax keyword javascriptJGlobalMethod   spyOn containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString nextgroup=@javascriptAfterIdentifier

syntax keyword javascriptJSpyAnd         contained and 
syntax keyword javascriptJSpyAndMethods  contained callThrough returnValue returnValues callFake throwError stub 
syntax keyword javascriptJSpyCalls       contained calls 
syntax keyword javascriptJCallsMethods   contained any count argsFor allArgs all mostRecent first reset 

syntax keyword javascriptJGlobalMethod   expect fail pending containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString nextgroup=@javascriptAfterIdentifier
syntax keyword javascriptJExpectNot      contained not contained nextgroup=javascriptJExpectNotdot

syntax keyword javascriptJExpectMethods  contained toHaveBeenCalled toHaveBeenCalledTimes toHaveBeenCalledWith toEqual toBe toMatch 
syntax keyword javascriptJExpectMethods  contained toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy 
syntax keyword javascriptJExpectMethods  contained toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow 

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
