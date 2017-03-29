" Vim syntax file
" Language:    jasmine for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     2.5
" URL:         http://jasmine.github.io/


syntax keyword lsJasmine jasmine containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsJdot
syntax match   lsJdot            contained /\./ nextgroup=lsJMethods
syntax keyword lsJMethods        contained any anything createSpy createSpyObj HtmlReporter clock mockDate getEnv objectContaining arrayContaining stringMatching

syntax keyword lsJMethods        contained tick useMock
syntax keyword lsJMethods        contained addReporter specFilter

syntax cluster lsJFunctions      contains=lsJMethods,lsJEnvMethods,lsJEnvMethods,lsJExpectMethods,lsJSpyMethods,lsJSpyAndMethods,lsJSpyCallsMethods
syntax cluster lsJAttrs          contains=lsJExpectNot,lsJSpyAnd,lsJSpyCalls

syntax keyword lsJGlobalMethod   describe done runs waitsFor it beforeEach afterEach beforeAll afterAll containedin=ALLBUT,lsComment,lsLineComment,lsString nextgroup=@lsAfterIdentifier

syntax keyword lsJGlobalMethod   xdescribe xit containedin=ALLBUT,lsComment,lsLineComment,lsString nextgroup=@lsAfterIdentifier

syntax keyword lsJGlobalMethod   spyOn containedin=ALLBUT,lsComment,lsLineComment,lsString nextgroup=@lsAfterIdentifier

syntax keyword lsJSpyAnd         contained and 
syntax keyword lsJSpyAndMethods  contained callThrough returnValue returnValues callFake throwError stub 
syntax keyword lsJSpyCalls       contained calls 
syntax keyword lsJCallsMethods   contained any count argsFor allArgs all mostRecent first reset 

syntax keyword lsJGlobalMethod   expect fail pending containedin=ALLBUT,lsComment,lsLineComment,lsString nextgroup=@lsAfterIdentifier
syntax keyword lsJExpectNot      contained not contained nextgroup=lsJExpectNotdot

syntax keyword lsJExpectMethods  contained toHaveBeenCalled toHaveBeenCalledTimes toHaveBeenCalledWith toEqual toBe toMatch 
syntax keyword lsJExpectMethods  contained toBeDefined toBeUndefined toBeNull toBeTruthy toBeFalsy 
syntax keyword lsJExpectMethods  contained toContain toBeCloseTo toBeLessThan toBeGreaterThan toThrow 

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_ls_syntax_inits")
  if version < 508
    let did_requirejs_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsJasmine         Constant
  HiLink lsJMethods        PreProc
  HiLink lsJEnvMethods     PreProc
  HiLink lsJClockMethods   PreProc
  HiLink lsJGlobalMethod   PreProc
  HiLink lsJSpyAnd         PreProc
  HiLink lsJSpyAndMethods  PreProc
  HiLink lsJSpyCalls       PreProc
  HiLink lsJSpyMethods     PreProc
  HiLink lsJCallsMethods   PreProc
  HiLink lsJExpectNot      PreProc
  HiLink lsJExpectMethods  PreProc

  delcommand HiLink
endif
