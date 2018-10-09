" Vim syntax file
" Language:    tape for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2018/02/21
" Version:     4.9.0
" URL:         https://github.com/substack/tape


syntax keyword lsTape test       containedin=ALLBUT,lsComment,lsLineComment,lsRegexpString,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsTdot
syntax match   lsTdot            contained /\./ nextgroup=lsTMethods
syntax keyword lsTMethods        contained skip onfinish onFailure createHarness only createStream

syntax keyword lsTapeAssert t    containedin=ALLBUT,lsComment,lsLineComment,lsRegexpString,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsTAssertdot
syntax match   lsTAssertdot      contained /\./ nextgroup=lsTAssertMethods
syntax keyword lsTAssertMethods  contained plan end fail pass timeoutAfter skip ok notOk error
syntax keyword lsTAssertMethods  contained equal notEqual deepEqual notDeepEqual deepLooseEqual notDeepLooseEqual
syntax keyword lsTAssertMethods  contained throws dowsNotThrow test comment

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

  HiLink lsTape            Constant
  HiLink lsTMethods        PreProc
  HiLink lsTapeAssert      Constant
  HiLink lsTAssertMethods  PreProc

  delcommand HiLink
endif
