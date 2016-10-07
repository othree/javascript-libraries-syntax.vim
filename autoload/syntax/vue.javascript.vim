" Vim syntax file
" Language:    vue.js for JavaScript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'javascript'
  setlocal iskeyword+=$
endif

syntax keyword javascriptVue             Vue vm containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution

" Vue.*
syntax cluster javascriptVFunctions      contains=javascriptVAPI,javascriptVMethods
syntax cluster javascriptVAttrs          contains=javascriptVConfig,javascriptVProp

syntax keyword javascriptVConfig         contained config silent optionMergeStrategies devtools errorHandler keyCodes

syntax keyword javascriptVAPI            contained extend nextTick set delete directive filter component use mixin compile

syntax keyword javascriptVProp           contained $data $el $options $parent $root $children $slots $refs $isServer 
syntax keyword javascriptVMethods        contained $watch $set $delete $on $once $off $emit $mount $forceUpdate $nextTick $destory


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_javascript_syntax_inits")
  if version < 508
    let did_jquery_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptVMethods        Constant

  HiLink javascriptVConfig         PreProc
  HiLink javascriptVProp           PreProc
  HiLink javascriptVMethods        PreProc

  delcommand HiLink
endif
