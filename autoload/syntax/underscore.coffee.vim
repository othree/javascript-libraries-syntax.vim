" Vim syntax file
" Language:    underscore.js for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/01/18
" Version:     1.7.0
" URL:         http://underscorejs.org/
" LoDash:      4.0.0
" URL:         http://lodash.com/

syntax keyword coffeeunderscore _ containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution
" syntax match   coffeeunderscoredot contained /\./ nextgroup=@coffee_Functions
" syntax match   coffeeunderscoredot contained /([^)]*)\./ nextgroup=@coffee_Functions

syntax cluster coffee_Functions contains=coffee_collections,coffee_strings,coffee_arrays,coffee_functions,coffee_objects,coffee_chaining,coffee_utility,coffee_lodash,coffee_math,coffee_number

syntax match   coffee_collections contained /contains/
syntax keyword coffee_collections contained include
syntax keyword coffee_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword coffee_collections contained reject every some invoke pluck max min sortBy
syntax keyword coffee_collections contained groupBy indexBy countBy shuffle toArray size
syntax keyword coffee_collections contained partition iteratee
" lodash 3.0.0
syntax keyword coffee_collections contained partition sortByAll includes callback
" lodash 4.0.0
syntax keyword coffee_collections contained flatMap commit next plant reverse toJSON valueOf
syntax keyword coffee_collections contained forEachRight invokeMap keyBy orderBy sample sampleSize

" lodash 3.0.0
syntax keyword coffee_strings contained camelCase capitalize deburr endsWith escapeRegExp
syntax keyword coffee_strings contained kebabCase pad padLeft padRight repeat snakeCase
syntax keyword coffee_strings contained startsWith trim trimLeft trimRight trunc words
" lodash 4.0.0
syntax keyword coffee_strings contained lowerCase lowerFirst padEnd padStart replace startCase
syntax keyword coffee_strings contained startWith toLower toUpper trimEnd trimStart truncate upperCase
syntax keyword coffee_strings contained upperFirst

syntax keyword coffee_arrays contained first initial last rest compact flatten without union
syntax keyword coffee_arrays contained intersection difference uniq zip object indextOf
syntax keyword coffee_arrays contained lastIndexOf sortedIndex range
" lodash 3.0.0
syntax keyword coffee_arrays contained chunk dropRight dropRightWhile dropWhile flattenDeep
syntax keyword coffee_arrays contained pullAt slice sortedLastIndex takeRight takeRightWhile
syntax keyword coffee_arrays contained takeWhile
" lodash 4.0.0
syntax keyword coffee_arrays contained concat differenceBy differenceWith drop fill findLastIndex
syntax keyword coffee_arrays contained fromPairs head indexOf intersection intersectionBy intersectionWith
syntax keyword coffee_arrays contained join pull pullAll pullAllBy remove slice sortedIndexBy sortedIndexOf
syntax keyword coffee_arrays contained sortedLastIndexBy sortedLastIndexOf sortedUniq sortedUniqBy tail
syntax keyword coffee_arrays contained take takeRightWhile unionBy unionWith uniqBy uniqWith unzipWith
syntax keyword coffee_arrays contained xorBy xorWith zipObject zipWith

syntax keyword coffee_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword coffee_functions contained once after before wrap negate compose flow flowRight
" lodash 3.0.0
syntax keyword coffee_functions contained ary before curryRight negate rearg
syntax keyword coffee_functions contained backflow compose partial cancel
" lodash 4.0.0
syntax keyword coffee_functions contained curry defer eachRight findLast flip negate overArgs rest spread unary 

syntax keyword coffee_objects contained keys values pairs invert functions extend pick omit
syntax keyword coffee_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword coffee_objects contained isObject isArguments isFunction isString isNumber
syntax keyword coffee_objects contained isFinite isBoolean isDate isRegExp isNaN isNull
syntax keyword coffee_objects contained isUndefined property matches
" lodash 3.0.0
syntax keyword coffee_objects contained keysIn valuesIn assign get set
syntax keyword coffee_objects contained mapKeys
" lodash 4.0.0
syntax keyword coffee_objects contained assignIn assignInWith assignWith defaultsDeep extendWith
syntax keyword coffee_objects contained findKey findLastKey forIn forInRight forOwn forOwnRight
syntax keyword coffee_objects contained functionsIn hasIn mergeWith omitBy pickBy setWith toPairs
syntax keyword coffee_objects contained toPairsIn transform unset
"
syntax keyword coffee_utility contained noConflict identify times random mixin uniqueId
syntax keyword coffee_utility contained escape unescape result template iteratee noop
" lodash 3.0.0
syntax keyword coffee_utility contained attempt matches matchesProperty propertyOf constant now
" lodash 4.0.0
syntax keyword coffee_utility contained cond conforms flow identity matches method methodOf nthArg
syntax keyword coffee_utility contained over overEvery overSome rangeRight times toPath uniqueId

syntax keyword coffee_chaining contained chain value thru

syntax keyword coffee_lodash contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword coffee_lodash contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword coffee_lodash contained partialRight runInContext support unzip where
syntax keyword coffee_lodash contained capitalize match slice trim trimLeft trimRight
syntax keyword coffee_lodash contained constant mapValues now property xor
syntax keyword coffee_lodash contained create noop transform
" lodash 3.0.0
syntax keyword coffee_lodash contained isError isMatch isNative isTypedArray toPlainObject
" lodash 4.0.0
syntax keyword coffee_lodash contained clone cloneDeepWith cloneWith eq gt gte isArrayLike isArrayLikeObject
syntax keyword coffee_lodash contained isEqualWith isInteger isLength isMatchWith isNil isObjectLike isSafeInteger
syntax keyword coffee_lodash contained isSymbol lt lte toInteger toLength toNumber toSafeInteger toString
syntax keyword coffee_lodash contained templateSettings evaluate imports interpolate varible 
syntax keyword coffee_lodash contained VERSION

" lodash 4.0.0
syntax keyword coffee_math contained add ceil floor max maxBy mean min minBy round subtract sum sumBy
syntax keyword coffee_number contained clamp inRange

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_coffee_syntax_inits")
  if version < 508
    let did_underscore_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeunderscore      Constant

  HiLink coffee_collections    PreProc
  HiLink coffee_strings        PreProc
  HiLink coffee_arrays         PreProc
  HiLink coffee_functions      PreProc
  HiLink coffee_objects        PreProc
  HiLink coffee_utility        PreProc
  HiLink coffee_chaining       PreProc
  HiLink coffee_lodash         PreProc
  HiLink coffee_math           PreProc
  HiLink coffee_number         PreProc

  delcommand HiLink
endif
