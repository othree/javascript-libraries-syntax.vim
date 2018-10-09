" Vim syntax file
" Language:    tape for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2018/02/21
" Version:     4.9.0
" URL:         https://github.com/substack/tape


syntax keyword javascriptTape test       containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptRegexpString,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptTdot
syntax match   javascriptTdot            contained /\./ nextgroup=javascriptTMethods
syntax keyword javascriptTMethods        contained skip onfinish onFailure createHarness only createStream

syntax keyword javascriptTapeAssert t    containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptRegexpString,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptTAssertdot
syntax match   javascriptTAssertdot      contained /\./ nextgroup=javascriptTAssertMethods
syntax keyword javascriptTAssertMethods  contained plan end fail pass timeoutAfter skip ok notOk error
syntax keyword javascriptTAssertMethods  contained equal notEqual deepEqual notDeepEqual deepLooseEqual notDeepLooseEqual
syntax keyword javascriptTAssertMethods  contained throws dowsNotThrow test comment

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

  HiLink javascriptTape            Constant
  HiLink javascriptTMethods        PreProc
  HiLink javascriptTapeAssert      Constant
  HiLink javascriptTAssertMethods  PreProc

  delcommand HiLink
endif
