" Vim syntax file
" Language:    underscore.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/01
" Version:     1.4.4
" URL:         http://underscorejs.org/

syn match   underscore  containedin=ALL /\<_\>/

syn match   _collections containedin=ALL /contains/
syn keyword _collections containedin=ALL each map reduce reduceRight find filter where findWhere
syn keyword _collections containedin=ALL reject every some invoke pluck max min sortBy
syn keyword _collections containedin=ALL groupBy countBy shuffle toArray size
syn keyword _arrays containedin=ALL first initial last rest compact flatten without union
syn keyword _arrays containedin=ALL intersection difference uniq zip object indextOf
syn keyword _arrays containedin=ALL lastIndexOf sortIndex range
syn keyword _functions containedin=ALL bind bindAll partial memoize delay throttle debounce
syn keyword _functions containedin=ALL once after wrap compose
syn keyword _objects containedin=ALL keys values pairs invert functions extend pick omit
syn keyword _objects containedin=ALL defaults clone tap has isEqual isEmpty isElement isArray
syn keyword _objects containedin=ALL isObject isArguments isFunction isString isNumber
syn keyword _objects containedin=ALL isFinite isBoolean isDate isRegExp isNaN isNull 
syn keyword _objects containedin=ALL isUndefined
syn keyword _utility containedin=ALL noConflict identify times random mixin uniqueId
syn keyword _utility containedin=ALL escape unescape result template
syn keyword _chaining containedin=ALL chain value


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

  HiLink underscore      Constant

  HiLink _collections    PreProc
  HiLink _arrays         PreProc
  HiLink _functions      PreProc
  HiLink _objects        PreProc
  HiLink _utility        PreProc
  HiLink _chaining       PreProc

  delcommand HiLink
endif
