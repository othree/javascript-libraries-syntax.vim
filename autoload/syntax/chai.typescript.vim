" Vim syntax file
" Language:    chai.js for typescript
" Maintainer:  tkrugg <y.mammar@gmail.com>
" Last Change: 2014/03/25
" Version:     1.9.2
" URL:         http://chaijs.com/

" TDD (assert)
syntax keyword typescriptchai assert
syntax keyword typescript_asserter fail ok notOk 
syntax keyword typescript_asserter equal notEqual strictEqual notStrictEqual deepEqual notDeepEqual 
syntax keyword typescript_asserter isTrue isFalse isNull isNotNull isUndefined isDefined isFunction isNotFunction isObject isNotObject isArray isNotArray isString isNotString isNumber isNotNumber isBoolean isNotBoolean 
syntax keyword typescript_asserter typeOf notTypeOf instanceOf notInstanceOf 
syntax keyword typescript_asserter include notInclude match notMatch 
syntax keyword typescript_asserter property notProperty deepProperty notDeepProperty propertyVal propertyNotVal deepPropertyVal deepPropertyNotVal 
syntax keyword typescript_asserter lengthOf 
syntax keyword typescript_asserter throws throw Throw doesNotThrow 
syntax keyword typescript_asserter operator closeTo 
syntax keyword typescript_asserter sameMembers includeMembers

" BDD (expect/should)
syntax keyword typescriptchai expect should
syntax keyword typescript_chain to be been is that and has have with at of same
syntax keyword typescript_asserter not deep a an include contain
syntax keyword typescript_asserter ok true false null undefined exist empty
syntax keyword typescript_asserter arguments Arguments equal equals eq eql eqls
syntax keyword typescript_asserter above gt greaterThan least gte below lt lessThan most lte within
syntax keyword typescript_asserter instanceof instanceOf property ownProperty haveOwnProperty
syntax keyword typescript_asserter length lengthOf match string keys key
syntax keyword typescript_asserter throw throws Throw respondTo itself satisfy closeTo members

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_chai_typescript_syntax_inits")
  if version < 508
    let did_chai_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptchai            Constant

  HiLink typescript_chain          Comment
  HiLink typescript_asserter       PreProc

  delcommand HiLink
endif
