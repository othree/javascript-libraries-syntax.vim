" Vim syntax file
" Language:    underscore.js for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     1.4.4
" URL:         http://underscorejs.org/

syntax match   typescriptunderscore containedin=ALLBUT,typescriptComment /\<_\>/
syntax match   typescriptunderscoredot containedin=ALLBUT,typescriptComment /\(\<_\.\)\@<=\h\w*/ contains=@typescript_Functions
syntax match   typescriptunderscoredot containedin=ALLBUT,typescriptComment /\(\<_([^)]*)\.\)\@<=\h\w*/ contains=@typescript_Functions

syntax cluster typescript_Functions contains=typescript_collections,typescript_arrays,typescript_functions,typescript_objects,typescript_chaining

syntax match   typescript_collections contained /contains/
syntax keyword typescript_collections contained each map reduce reduceRight find filter where findWhere
syntax keyword typescript_collections contained reject every some invoke pluck max min sortBy
syntax keyword typescript_collections contained groupBy countBy shuffle toArray size
syntax keyword typescript_arrays contained first initial last rest compact flatten without union
syntax keyword typescript_arrays contained intersection difference uniq zip object indextOf
syntax keyword typescript_arrays contained lastIndexOf sortedIndex range
syntax keyword typescript_functions contained bind bindAll partial memoize delay throttle debounce
syntax keyword typescript_functions contained once after wrap compose
syntax keyword typescript_objects contained keys values pairs invert functions extend pick omit
syntax keyword typescript_objects contained defaults clone tap has isEqual isEmpty isElement isArray
syntax keyword typescript_objects contained isObject isArguments isFunction isString isNumber
syntax keyword typescript_objects contained isFinite isBoolean isDate isRegExp isNaN isNull 
syntax keyword typescript_objects contained isUndefined
syntax keyword typescript_utility contained noConflict identify times random mixin uniqueId
syntax keyword typescript_utility contained escape unescape result template
syntax keyword typescript_chaining contained chain value


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

  HiLink typescriptunderscore      Constant

  HiLink typescript_collections    PreProc
  HiLink typescript_arrays         PreProc
  HiLink typescript_functions      PreProc
  HiLink typescript_objects        PreProc
  HiLink typescript_utility        PreProc
  HiLink typescript_chaining       PreProc


  delcommand HiLink
endif
