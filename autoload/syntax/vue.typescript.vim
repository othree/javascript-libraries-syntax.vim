" Vim syntax file
" Language:    vue.js for JavaScript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'typescript'
  setlocal iskeyword+=$
endif

syntax keyword typescriptVue             Vue vm containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution

" Vue.*
syntax cluster typescriptVFunctions      contains=typescriptVAPI,typescriptVMethods
syntax cluster typescriptVAttrs          contains=typescriptVConfig,typescriptVProp

syntax keyword typescriptVConfig         contained config silent optionMergeStrategies devtools errorHandler keyCodes

syntax keyword typescriptVAPI            contained extend nextTick set delete directive filter component use mixin compile

syntax keyword typescriptVProp           contained $data $el $options $parent $root $children $slots $refs $isServer 
syntax keyword typescriptVMethods        contained $watch $set $delete $on $once $off $emit $mount $forceUpdate $nextTick $destory


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_typescript_syntax_inits")
  if version < 508
    let did_jquery_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptVMethods        Constant

  HiLink typescriptVConfig         PreProc
  HiLink typescriptVProp           PreProc
  HiLink typescriptVMethods        PreProc

  delcommand HiLink
endif
