" Vim syntax file
" Language:    underscore.js for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/01/18
" Version:     1.7.0
" URL:         http://underscorejs.org/
" LoDash:      4.0.0
" URL:         http://lodash.com/

syntax keyword lsunderscore _ containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution
" syntax match   lsunderscoredot contained /\./ nextgroup=@ls_Functions
" syntax match   lsunderscoredot contained /([^)]*)\./ nextgroup=@ls_Functions

syntax cluster ls_Functions contains=ls_collections,ls_strings,ls_arrays,ls_functions,ls_objects,ls_chaining,ls_utility,ls_lodash,ls_math,ls_number

syntax match   ls_collections contained /contains/
syntax keyword ls_collections contained include
syntax keyword ls_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword ls_collections contained reject every some invoke pluck max min sortBy
syntax keyword ls_collections contained groupBy indexBy countBy shuffle toArray size
syntax keyword ls_collections contained partition iteratee
" lodash 3.0.0
syntax keyword ls_collections contained partition sortByAll includes callback
" lodash 4.0.0
syntax keyword ls_collections contained flatMap commit next plant reverse toJSON valueOf
syntax keyword ls_collections contained forEachRight invokeMap keyBy orderBy sample sampleSize

" lodash 3.0.0
syntax keyword ls_strings contained camelCase capitalize deburr endsWith escapeRegExp
syntax keyword ls_strings contained kebabCase pad padLeft padRight repeat snakeCase
syntax keyword ls_strings contained startsWith trim trimLeft trimRight trunc words
" lodash 4.0.0
syntax keyword ls_strings contained lowerCase lowerFirst padEnd padStart replace startCase
syntax keyword ls_strings contained startWith toLower toUpper trimEnd trimStart truncate upperCase
syntax keyword ls_strings contained upperFirst

syntax keyword ls_arrays contained first initial last rest compact flatten without union
syntax keyword ls_arrays contained intersection difference uniq zip object indextOf
syntax keyword ls_arrays contained lastIndexOf sortedIndex range
" lodash 3.0.0
syntax keyword ls_arrays contained chunk dropRight dropRightWhile dropWhile flattenDeep
syntax keyword ls_arrays contained pullAt slice sortedLastIndex takeRight takeRightWhile
syntax keyword ls_arrays contained takeWhile
" lodash 4.0.0
syntax keyword ls_arrays contained concat differenceBy differenceWith drop fill findLastIndex
syntax keyword ls_arrays contained fromPairs head indexOf intersection intersectionBy intersectionWith
syntax keyword ls_arrays contained join pull pullAll pullAllBy remove slice sortedIndexBy sortedIndexOf
syntax keyword ls_arrays contained sortedLastIndexBy sortedLastIndexOf sortedUniq sortedUniqBy tail
syntax keyword ls_arrays contained take takeRightWhile unionBy unionWith uniqBy uniqWith unzipWith
syntax keyword ls_arrays contained xorBy xorWith zipObject zipWith

syntax keyword ls_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword ls_functions contained once after before wrap negate compose flow flowRight
" lodash 3.0.0
syntax keyword ls_functions contained ary before curryRight negate rearg
syntax keyword ls_functions contained backflow compose partial cancel
" lodash 4.0.0
syntax keyword ls_functions contained curry defer eachRight findLast flip negate overArgs rest spread unary 

syntax keyword ls_objects contained keys values pairs invert functions extend pick omit
syntax keyword ls_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword ls_objects contained isObject isArguments isFunction isString isNumber
syntax keyword ls_objects contained isFinite isBoolean isDate isRegExp isNaN isNull
syntax keyword ls_objects contained isUndefined property matches
" lodash 3.0.0
syntax keyword ls_objects contained keysIn valuesIn assign get set
syntax keyword ls_objects contained mapKeys
" lodash 4.0.0
syntax keyword ls_objects contained assignIn assignInWith assignWith defaultsDeep extendWith
syntax keyword ls_objects contained findKey findLastKey forIn forInRight forOwn forOwnRight
syntax keyword ls_objects contained functionsIn hasIn mergeWith omitBy pickBy setWith toPairs
syntax keyword ls_objects contained toPairsIn transform unset
"
syntax keyword ls_utility contained noConflict identify times random mixin uniqueId
syntax keyword ls_utility contained escape unescape result template iteratee noop
" lodash 3.0.0
syntax keyword ls_utility contained attempt matches matchesProperty propertyOf constant now
" lodash 4.0.0
syntax keyword ls_utility contained cond conforms flow identity matches method methodOf nthArg
syntax keyword ls_utility contained over overEvery overSome rangeRight times toPath uniqueId

syntax keyword ls_chaining contained chain value thru

syntax keyword ls_lodash contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword ls_lodash contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword ls_lodash contained partialRight runInContext support unzip where
syntax keyword ls_lodash contained capitalize match slice trim trimLeft trimRight
syntax keyword ls_lodash contained constant mapValues now property xor
syntax keyword ls_lodash contained create noop transform
" lodash 3.0.0
syntax keyword ls_lodash contained isError isMatch isNative isTypedArray toPlainObject
" lodash 4.0.0
syntax keyword ls_lodash contained clone cloneDeepWith cloneWith eq gt gte isArrayLike isArrayLikeObject
syntax keyword ls_lodash contained isEqualWith isInteger isLength isMatchWith isNil isObjectLike isSafeInteger
syntax keyword ls_lodash contained isSymbol lt lte toInteger toLength toNumber toSafeInteger toString
syntax keyword ls_lodash contained templateSettings evaluate imports interpolate varible 
syntax keyword ls_lodash contained VERSION

" lodash 4.0.0
syntax keyword ls_math contained add ceil floor max maxBy mean min minBy round subtract sum sumBy
syntax keyword ls_number contained clamp inRange

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_ls_syntax_inits")
  if version < 508
    let did_underscore_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsunderscore      Constant

  HiLink ls_collections    PreProc
  HiLink ls_strings        PreProc
  HiLink ls_arrays         PreProc
  HiLink ls_functions      PreProc
  HiLink ls_objects        PreProc
  HiLink ls_utility        PreProc
  HiLink ls_chaining       PreProc
  HiLink ls_lodash         PreProc
  HiLink ls_math           PreProc
  HiLink ls_number         PreProc

  delcommand HiLink
endif
