" Vim syntax file
" Language:    vue.js for JavaScript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'ls'
  setlocal iskeyword+=$
endif

syntax keyword lsVue             Vue vm containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution

" Vue.*
syntax cluster lsVFunctions      contains=lsVAPI,lsVMethods
syntax cluster lsVAttrs          contains=lsVConfig,lsVProp

syntax keyword lsVConfig         contained config silent optionMergeStrategies devtools errorHandler keyCodes

syntax keyword lsVAPI            contained extend nextTick set delete directive filter component use mixin compile

syntax keyword lsVProp           contained $data $el $options $parent $root $children $slots $refs $isServer 
syntax keyword lsVMethods        contained $watch $set $delete $on $once $off $emit $mount $forceUpdate $nextTick $destory


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_ls_syntax_inits")
  if version < 508
    let did_jquery_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsVMethods        Constant

  HiLink lsVConfig         PreProc
  HiLink lsVProp           PreProc
  HiLink lsVMethods        PreProc

  delcommand HiLink
endif
