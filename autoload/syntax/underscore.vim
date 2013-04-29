" Vim syntax file
" Language:    underscore.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/29
" Version:     1.4.4
" URL:         http://underscorejs.org/
" LoDash:      1.2.0
" URL:         http://lodash.com/

syntax keyword underscore            containedin=ALLBUT,@stringcomment _ nextgroup=underscoreDot
syntax match   underscoreDot         contained /\./ nextgroup=@underscoreFunctions
syntax match   underscoreDot         contained /([^)]*)\./ nextgroup=@underscoreFunctions

syntax cluster underscoreFunctions   contains=underscoreCollections,underscoreArrays,underscoreFunctions,underscoreObjects,underscoreChaining,underscoreLodash

syntax match   underscoreCollections contained /contains/
syntax keyword underscoreCollections contained each map reduce reduceRight find filter where findWhere
syntax keyword underscoreCollections contained reject every some invoke pluck max min sortBy
syntax keyword underscoreCollections contained groupBy countBy shuffle toArray size
syntax keyword underscoreArrays      contained first initial last rest compact flatten without union
syntax keyword underscoreArrays      contained intersection difference uniq zip object indextOf
syntax keyword underscoreArrays      contained lastIndexOf sortedIndex range
syntax keyword underscoreFunctions   contained bind bindAll partial memoize delay throttle debounce
syntax keyword underscoreFunctions   contained once after wrap compose
syntax keyword underscoreObjects     contained keys values pairs invert functions extend pick omit
syntax keyword underscoreObjects     contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword underscoreObjects     contained isObject isArguments isFunction isString isNumber
syntax keyword underscoreObjects     contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword underscoreObjects     contained isUndefined
syntax keyword underscoreUtility     contained noConflict identify times random mixin uniqueId
syntax keyword underscoreUtility     contained escape unescape result template
syntax keyword underscoreChaining    contained chain value

syntax keyword underscoreLodash      contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword underscoreLodash      contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword underscoreLodash      contained partialRight runInContext support unzip where 


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_syntax_inits")
  if version < 508
    let did_underscore_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink underscore               Constant

  HiLink underscoreCollections    PreProc
  HiLink underscoreArrays         PreProc
  HiLink underscoreFunctions      PreProc
  HiLink underscoreObjects        PreProc
  HiLink underscoreUtility        PreProc
  HiLink underscoreChaining       PreProc
  HiLink underscoreLodash         PreProc

  delcommand HiLink
endif
