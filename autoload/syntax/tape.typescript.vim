" Vim syntax file
" Language:    tape for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2018/02/21
" Version:     4.9.0
" URL:         https://github.com/substack/tape


syntax keyword typescriptTape test       containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptTdot
syntax match   typescriptTdot            contained /\./ nextgroup=typescriptTMethods
syntax keyword typescriptTMethods        contained skip onfinish onFailure createHarness only createStream

syntax keyword typescriptTapeAssert t    containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptTAssertdot
syntax match   typescriptTAssertdot      contained /\./ nextgroup=typescriptTAssertMethods
syntax keyword typescriptTAssertMethods  contained plan end fail pass timeoutAfter skip ok notOk error
syntax keyword typescriptTAssertMethods  contained equal notEqual deepEqual notDeepEqual deepLooseEqual notDeepLooseEqual
syntax keyword typescriptTAssertMethods  contained throws dowsNotThrow test comment

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

  HiLink typescriptTape            Constant
  HiLink typescriptTMethods        PreProc
  HiLink typescriptTapeAssert      Constant
  HiLink typescriptTAssertMethods  PreProc

  delcommand HiLink
endif
