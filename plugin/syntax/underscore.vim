" Vim syntax file
" Language:    underscore.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/01
" Version:     1.4.4
" URL:         http://underscorejs.org/

syn match   javascriptunderscore  containedin=ALL /\<_\>/

syn match   javascript_collections containedin=ALL /contains/
syn keyword javascript_collections containedin=ALL each map reduce reduceRight find filter where findWhere
syn keyword javascript_collections containedin=ALL reject every some invoke pluck max min sortBy
syn keyword javascript_collections containedin=ALL groupBy countBy shuffle toArray size
syn keyword javascript_arrays containedin=ALL first initial last rest compact flatten without union
syn keyword javascript_arrays containedin=ALL intersection difference uniq zip object indextOf
syn keyword javascript_arrays containedin=ALL lastIndexOf sortedIndex range
syn keyword javascript_functions containedin=ALL bind bindAll partial memoize delay throttle debounce
syn keyword javascript_functions containedin=ALL once after wrap compose
syn keyword javascript_objects containedin=ALL keys values pairs invert functions extend pick omit
syn keyword javascript_objects containedin=ALL defaults clone tap has isEqual isEmpty isElement isArray
syn keyword javascript_objects containedin=ALL isObject isArguments isFunction isString isNumber
syn keyword javascript_objects containedin=ALL isFinite isBoolean isDate isRegExp isNaN isNull 
syn keyword javascript_objects containedin=ALL isUndefined
syn keyword javascript_utility containedin=ALL noConflict identify times random mixin uniqueId
syn keyword javascript_utility containedin=ALL escape unescape result template
syn keyword javascript_chaining containedin=ALL chain value


syn match   coffeeunderscore  containedin=ALL /\<_\>/

syn match   coffee_collections containedin=ALL /contains/
syn keyword coffee_collections containedin=ALL each map reduce reduceRight find filter where findWhere
syn keyword coffee_collections containedin=ALL reject every some invoke pluck max min sortBy
syn keyword coffee_collections containedin=ALL groupBy countBy shuffle toArray size
syn keyword coffee_arrays containedin=ALL first initial last rest compact flatten without union
syn keyword coffee_arrays containedin=ALL intersection difference uniq zip object indextOf
syn keyword coffee_arrays containedin=ALL lastIndexOf sortedIndex range
syn keyword coffee_functions containedin=ALL bind bindAll partial memoize delay throttle debounce
syn keyword coffee_functions containedin=ALL once after wrap compose
syn keyword coffee_objects containedin=ALL keys values pairs invert functions extend pick omit
syn keyword coffee_objects containedin=ALL defaults clone tap has isEqual isEmpty isElement isArray
syn keyword coffee_objects containedin=ALL isObject isArguments isFunction isString isNumber
syn keyword coffee_objects containedin=ALL isFinite isBoolean isDate isRegExp isNaN isNull 
syn keyword coffee_objects containedin=ALL isUndefined
syn keyword coffee_utility containedin=ALL noConflict identify times random mixin uniqueId
syn keyword coffee_utility containedin=ALL escape unescape result template
syn keyword coffee_chaining containedin=ALL chain value


syn match   lsunderscore  containedin=ALL /\<_\>/

syn match   ls_collections containedin=ALL /contains/
syn keyword ls_collections containedin=ALL each map reduce reduceRight find filter where findWhere
syn keyword ls_collections containedin=ALL reject every some invoke pluck max min sortBy
syn keyword ls_collections containedin=ALL groupBy countBy shuffle toArray size
syn keyword ls_arrays containedin=ALL first initial last rest compact flatten without union
syn keyword ls_arrays containedin=ALL intersection difference uniq zip object indextOf
syn keyword ls_arrays containedin=ALL lastIndexOf sortedIndex range
syn keyword ls_functions containedin=ALL bind bindAll partial memoize delay throttle debounce
syn keyword ls_functions containedin=ALL once after wrap compose
syn keyword ls_objects containedin=ALL keys values pairs invert functions extend pick omit
syn keyword ls_objects containedin=ALL defaults clone tap has isEqual isEmpty isElement isArray
syn keyword ls_objects containedin=ALL isObject isArguments isFunction isString isNumber
syn keyword ls_objects containedin=ALL isFinite isBoolean isDate isRegExp isNaN isNull 
syn keyword ls_objects containedin=ALL isUndefined
syn keyword ls_utility containedin=ALL noConflict identify times random mixin uniqueId
syn keyword ls_utility containedin=ALL escape unescape result template
syn keyword ls_chaining containedin=ALL chain value


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptunderscore      Constant

  HiLink javascript_collections    PreProc
  HiLink javascript_arrays         PreProc
  HiLink javascript_functions      PreProc
  HiLink javascript_objects        PreProc
  HiLink javascript_utility        PreProc
  HiLink javascript_chaining       PreProc

  HiLink coffeeunderscore      Constant

  HiLink coffee_collections    PreProc
  HiLink coffee_arrays         PreProc
  HiLink coffee_functions      PreProc
  HiLink coffee_objects        PreProc
  HiLink coffee_utility        PreProc
  HiLink coffee_chaining       PreProc

  HiLink lsunderscore      Constant

  HiLink ls_collections    PreProc
  HiLink ls_arrays         PreProc
  HiLink ls_functions      PreProc
  HiLink ls_objects        PreProc
  HiLink ls_utility        PreProc
  HiLink ls_chaining       PreProc

  delcommand HiLink
endif
