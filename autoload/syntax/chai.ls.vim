" Vim syntax file
" Language:    chai.js for ls
" Maintainer:  tkrugg <y.mammar@gmail.com>
" Last Change: 2014/03/25
" Version:     1.9.2
" URL:         http://chaijs.com/

" TDD (assert)
syntax keyword lschai assert
syntax keyword ls_asserter fail ok notOk 
syntax keyword ls_asserter equal notEqual strictEqual notStrictEqual deepEqual notDeepEqual 
syntax keyword ls_asserter isTrue isFalse isNull isNotNull isUndefined isDefined isFunction isNotFunction isObject isNotObject isArray isNotArray isString isNotString isNumber isNotNumber isBoolean isNotBoolean 
syntax keyword ls_asserter typeOf notTypeOf instanceOf notInstanceOf 
syntax keyword ls_asserter include notInclude match notMatch 
syntax keyword ls_asserter property notProperty deepProperty notDeepProperty propertyVal propertyNotVal deepPropertyVal deepPropertyNotVal 
syntax keyword ls_asserter lengthOf 
syntax keyword ls_asserter throws throw Throw doesNotThrow 
syntax keyword ls_asserter operator closeTo 
syntax keyword ls_asserter sameMembers includeMembers

" BDD (expect/should)
syntax keyword lschai expect should
syntax keyword ls_chain to be been is that and has have with at of same
syntax keyword ls_asserter not deep a an include contain
syntax keyword ls_asserter ok true false null undefined exist empty
syntax keyword ls_asserter arguments Arguments equal equals eq eql eqls
syntax keyword ls_asserter above gt greaterThan least gte below lt lessThan most lte within
syntax keyword ls_asserter instanceof instanceOf property ownProperty haveOwnProperty
syntax keyword ls_asserter length lengthOf match string keys key
syntax keyword ls_asserter throw throws Throw respondTo itself satisfy closeTo members

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_chai_ls_syntax_inits")
  if version < 508
    let did_chai_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lschai            Constant

  HiLink ls_chain          Comment
  HiLink ls_asserter       PreProc

  delcommand HiLink
endif
