" Vim syntax file
" Language:    Backbone.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/05
" Version:     0.9.10
" URL:         http://backbonejs.org/

if &filetype == 'javascript'

  syntax keyword javascriptBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,javascriptComment

  syntax cluster javascriptBFunctions contains=javascriptBEvents,javascriptBModel,javascriptBCollection,javascriptBRouter,javascriptBHistory,javascriptBSync,javascriptBView,javascriptBUtility
  syntax cluster javascriptBAttrs contains=javascriptBModelAttrs,javascriptBCollectionAttrs,javascriptBRouterAttrs,javascriptBSyncAttrs,javascriptBViewAttrs

  syntax keyword javascriptBEvents contained on off trigger once listenTo stopListening
  syntax keyword javascriptBModel contained extend constructor initialize get set escape has unset clear
  syntax keyword javascriptBModel contained toJSON sync fetch save destroy validate validationError url parse
  syntax keyword javascriptBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
  syntax keyword javascriptBCollection contained extend constructor initialize toJSON sync add remove reset update get at 
  syntax keyword javascriptBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
  syntax keyword javascriptBRouter contained extend constructor initialize route navigate
  syntax keyword javascriptBHistory contained start
  syntax keyword javascriptBSync contained ajax 
  syntax keyword javascriptBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
  syntax keyword javascriptBUtility contained noConflict 

  syntax keyword javascriptBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
  syntax keyword javascriptBCollectionAttrs contained model models length comparator url
  syntax keyword javascriptBRouterAttrs contained routes
  syntax keyword javascriptBSyncAttrs contained emulateHTTP emulateJSON
  syntax keyword javascriptBViewAttrs contained el attributes
  syntax keyword javascriptBViewAttrs match /$el/

endif

if &filetype == 'coffee'

  syntax keyword coffeeBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,coffeeComment

  syntax cluster coffeeBFunctions contains=coffeeBEvents,coffeeBModel,coffeeBCollection,coffeeBRouter,coffeeBHistory,coffeeBSync,coffeeBView,coffeeBUtility
  syntax cluster coffeeBAttrs contains=coffeeBModelAttrs,coffeeBCollectionAttrs,coffeeBRouterAttrs,coffeeBSyncAttrs,coffeeBViewAttrs

  syntax keyword coffeeBEvents contained on off trigger once listenTo stopListening
  syntax keyword coffeeBModel contained extend constructor initialize get set escape has unset clear id idAttribute cid attributes
  syntax keyword coffeeBModel contained changed defaults toJSON sync fetch save destroy validate validationError url urlRoot parse
  syntax keyword coffeeBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
  syntax keyword coffeeBCollection contained extend model constructor initialize models toJSON sync add remove reset update get at 
  syntax keyword coffeeBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
  syntax keyword coffeeBRouter contained extend routes constructor initialize route navigate
  syntax keyword coffeeBHistory contained start
  syntax keyword coffeeBSync contained sync ajax emulateHTTP emulateJSON
  syntax keyword coffeeBView contained extend constructor initialize el $el setElement attributes render remove delegateEvents
  syntax keyword coffeeBView contained undelegateEvents
  syntax keyword coffeeBUtility contained noConflict 

  syntax keyword coffeeBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
  syntax keyword coffeeBCollectionAttrs contained model models length comparator url
  syntax keyword coffeeBRouterAttrs contained routes
  syntax keyword coffeeBSyncAttrs contained emulateHTTP emulateJSON
  syntax keyword coffeeBViewAttrs contained el attributes
  syntax keyword coffeeBViewAttrs match /$el/

endif

if &filetype == 'ls'

  syntax keyword lsBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,lsComment

  syntax cluster lsBFunctions contains=lsBEvents,lsBModel,lsBCollection,lsBRouter,lsBHistory,lsBSync,lsBView,lsBUtility
  syntax cluster lsBAttrs contains=lsBModelAttrs,lsBCollectionAttrs,lsBRouterAttrs,lsBSyncAttrs,lsBViewAttrs

  syntax keyword lsBEvents contained on off trigger once listenTo stopListening
  syntax keyword lsBModel contained extend constructor initialize get set escape has unset clear id idAttribute cid attributes
  syntax keyword lsBModel contained changed defaults toJSON sync fetch save destroy validate validationError url urlRoot parse
  syntax keyword lsBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
  syntax keyword lsBCollection contained extend model constructor initialize models toJSON sync add remove reset update get at 
  syntax keyword lsBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
  syntax keyword lsBRouter contained extend routes constructor initialize route navigate
  syntax keyword lsBHistory contained start
  syntax keyword lsBSync contained sync ajax emulateHTTP emulateJSON
  syntax keyword lsBView contained extend constructor initialize el $el setElement attributes render remove delegateEvents
  syntax keyword lsBView contained undelegateEvents
  syntax keyword lsBUtility contained noConflict 

  syntax keyword lsBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
  syntax keyword lsBCollectionAttrs contained model models length comparator url
  syntax keyword lsBRouterAttrs contained routes
  syntax keyword lsBSyncAttrs contained emulateHTTP emulateJSON
  syntax keyword lsBViewAttrs contained el attributes
  syntax keyword lsBViewAttrs match /$el/

endif

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

  HiLink javascriptBackbone         Constant

  HiLink javascriptBEvents          PreProc
  HiLink javascriptBModel           PreProc
  HiLink javascriptBCollection      PreProc
  HiLink javascriptBRouter          PreProc
  HiLink javascriptBHistory         PreProc
  HiLink javascriptBSync            PreProc
  HiLink javascriptBView            PreProc
  HiLink javascriptBUtility         PreProc

  HiLink javascriptBModelAttrs      PreProc
  HiLink javascriptBCollectionAttrs PreProc
  HiLink javascriptBRouterAttrs     PreProc
  HiLink javascriptBSyncAttrs       PreProc
  HiLink javascriptBViewAttrs       PreProc


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


  HiLink lsBackbone         Constant

  HiLink lsBEvents          PreProc
  HiLink lsBModel           PreProc
  HiLink lsBCollection      PreProc
  HiLink lsBRouter          PreProc
  HiLink lsBHistory         PreProc
  HiLink lsBSync            PreProc
  HiLink lsBView            PreProc
  HiLink lsBUtility         PreProc

  HiLink lsBModelAttrs      PreProc
  HiLink lsBCollectionAttrs PreProc
  HiLink lsBRouterAttrs     PreProc
  HiLink lsBSyncAttrs       PreProc
  HiLink lsBViewAttrs       PreProc

  delcommand HiLink
endif
