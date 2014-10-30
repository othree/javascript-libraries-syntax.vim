" Vim syntax file
" Language:    chai.js for javascript
" Maintainer:  tkrugg <y.mammar@gmail.com>
" Last Change: 2014/03/25
" Version:     1.9.2
" URL:         http://chaijs.com/

" TDD (assert)
syntax keyword javascriptchai assert
syntax keyword javascript_asserter fail ok notOk 
syntax keyword javascript_asserter equal notEqual strictEqual notStrictEqual deepEqual notDeepEqual 
syntax keyword javascript_asserter isTrue isFalse isNull isNotNull isUndefined isDefined isFunction isNotFunction isObject isNotObject isArray isNotArray isString isNotString isNumber isNotNumber isBoolean isNotBoolean 
syntax keyword javascript_asserter typeOf notTypeOf instanceOf notInstanceOf 
syntax keyword javascript_asserter include notInclude match notMatch 
syntax keyword javascript_asserter property notProperty deepProperty notDeepProperty propertyVal propertyNotVal deepPropertyVal deepPropertyNotVal 
syntax keyword javascript_asserter lengthOf 
syntax keyword javascript_asserter throws throw Throw doesNotThrow 
syntax keyword javascript_asserter operator closeTo 
syntax keyword javascript_asserter sameMembers includeMembers

" BDD (expect/should)
syntax keyword javascriptchai expect should
syntax keyword javascript_chain to be been is that and has have with at of same
syntax keyword javascript_asserter not deep a an include contain
syntax keyword javascript_asserter ok true false null undefined exist empty
syntax keyword javascript_asserter arguments Arguments equal equals eq eql eqls
syntax keyword javascript_asserter above gt greaterThan least gte below lt lessThan most lte within
syntax keyword javascript_asserter instanceof instanceOf property ownProperty haveOwnProperty
syntax keyword javascript_asserter length lengthOf match string keys key
syntax keyword javascript_asserter throw throws Throw respondTo itself satisfy closeTo members

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_chai_javascript_syntax_inits")
  if version < 508
    let did_chai_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptchai            Constant

  HiLink javascript_chain          Comment
  HiLink javascript_asserter       PreProc

  delcommand HiLink
endif
