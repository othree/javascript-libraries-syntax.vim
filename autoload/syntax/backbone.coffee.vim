" Vim syntax file
" Language:    Backbone.js for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     0.9.10
" URL:         http://backbonejs.org/

syntax keyword coffeeBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution

syntax cluster coffeeBFunctions contains=coffeeBEvents,coffeeBModel,coffeeBCollection,coffeeBRouter,coffeeBHistory,coffeeBSync,coffeeBView,coffeeBUtility
syntax cluster coffeeBAttrs contains=coffeeBModelAttrs,coffeeBCollectionAttrs,coffeeBRouterAttrs,coffeeBSyncAttrs,coffeeBViewAttrs

syntax keyword coffeeBEvents contained on off trigger once listenTo stopListening
syntax keyword coffeeBModel contained extend constructor initialize get set escape has unset clear
syntax keyword coffeeBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword coffeeBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword coffeeBCollection contained extend constructor initialize toJSON sync add remove reset update get at 
syntax keyword coffeeBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
syntax keyword coffeeBRouter contained extend constructor initialize route navigate
syntax keyword coffeeBHistory contained start
syntax keyword coffeeBSync contained ajax 
syntax keyword coffeeBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword coffeeBUtility contained noConflict 

syntax keyword coffeeBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword coffeeBCollectionAttrs contained model models length comparator url
syntax keyword coffeeBRouterAttrs contained routes
syntax keyword coffeeBSyncAttrs contained emulateHTTP emulateJSON
syntax keyword coffeeBViewAttrs contained el attributes
syntax keyword coffeeBViewAttrs match /$el/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_backbone_coffee_syntax_inits")
  if version < 508
    let did_backbone_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeBackbone         Constant

  HiLink coffeeBEvents          PreProc
  HiLink coffeeBModel           PreProc
  HiLink coffeeBCollection      PreProc
  HiLink coffeeBRouter          PreProc
  HiLink coffeeBHistory         PreProc
  HiLink coffeeBSync            PreProc
  HiLink coffeeBView            PreProc
  HiLink coffeeBUtility         PreProc

  HiLink coffeeBModelAttrs      PreProc
  HiLink coffeeBCollectionAttrs PreProc
  HiLink coffeeBRouterAttrs     PreProc
  HiLink coffeeBSyncAttrs       PreProc
  HiLink coffeeBViewAttrs       PreProc


  delcommand HiLink
endif
