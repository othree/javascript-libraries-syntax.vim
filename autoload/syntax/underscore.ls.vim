" Vim syntax file
" Language:    underscore.js for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/02/06
" Version:     1.5.2
" URL:         http://underscorejs.org/
" LoDash:      2.5.0
" URL:         http://lodash.com/

syntax keyword lsunderscore _ containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution
" syntax match   lsunderscoredot contained /\./ nextgroup=@ls_Functions
" syntax match   lsunderscoredot contained /([^)]*)\./ nextgroup=@ls_Functions

syntax cluster ls_Functions contains=ls_collections,ls_arrays,ls_functions,ls_objects,ls_chaining,ls_lodash

syntax match   ls_collections contained /contains/
syntax keyword ls_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword ls_collections contained reject every some invoke pluck max min sortBy
syntax keyword ls_collections contained groupBy indexBy countBy shuffle toArray size
syntax keyword ls_arrays contained first initial last rest compact flatten without union
syntax keyword ls_arrays contained intersection difference uniq zip object indextOf
syntax keyword ls_arrays contained lastIndexOf sortedIndex range
syntax keyword ls_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword ls_functions contained once after wrap compose
syntax keyword ls_objects contained keys values pairs invert functions extend pick omit
syntax keyword ls_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword ls_objects contained isObject isArguments isFunction isString isNumber
syntax keyword ls_objects contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword ls_objects contained isUndefined
syntax keyword ls_utility contained noConflict identify times random mixin uniqueId
syntax keyword ls_utility contained escape unescape result template
syntax keyword ls_chaining contained chain value

syntax keyword ls_lodash contained at bindKey cloneDeep createCallback findIndex findKey
syntax keyword ls_lodash contained forEach forIn forOwn isPlainObject merge parseInt partial
syntax keyword ls_lodash contained partialRight runInContext support unzip where 
syntax keyword ls_lodash contained capitalize match slice trim trimLeft trimRight
syntax keyword ls_lodash contained constant mapValues now property xor
syntax keyword ls_lodash contained create noop transform 


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
  HiLink ls_arrays         PreProc
  HiLink ls_functions      PreProc
  HiLink ls_objects        PreProc
  HiLink ls_utility        PreProc
  HiLink ls_chaining       PreProc
  HiLink ls_lodash         PreProc


  delcommand HiLink
endif
