" Vim syntax file
" Language:    vue.js for JavaScript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/10/07
" Version:     2.0
" URL:         https://vuejs.org

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'coffee'
  setlocal iskeyword+=$
endif

syntax keyword coffeeVue             Vue vm containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution

" Vue.*
syntax cluster coffeeVFunctions      contains=coffeeVAPI,coffeeVMethods
syntax cluster coffeeVAttrs          contains=coffeeVConfig,coffeeVProp

syntax keyword coffeeVConfig         contained config silent optionMergeStrategies devtools errorHandler keyCodes

syntax keyword coffeeVAPI            contained extend nextTick set delete directive filter component use mixin compile

syntax keyword coffeeVProp           contained $data $el $options $parent $root $children $slots $refs $isServer 
syntax keyword coffeeVMethods        contained $watch $set $delete $on $once $off $emit $mount $forceUpdate $nextTick $destory


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_coffee_syntax_inits")
  if version < 508
    let did_jquery_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeVMethods        Constant

  HiLink coffeeVConfig         PreProc
  HiLink coffeeVProp           PreProc
  HiLink coffeeVMethods        PreProc

  delcommand HiLink
endif
