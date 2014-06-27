" Vim syntax file
" Language:    Backbone.js for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     0.9.10
" URL:         http://backbonejs.org/

syntax keyword typescriptBackbone Backbone Collection Model View Events Router History Sync Utility containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution

syntax cluster typescriptBFunctions contains=typescriptBEvents,typescriptBModel,typescriptBCollection,typescriptBRouter,typescriptBHistory,typescriptBSync,typescriptBView,typescriptBUtility
syntax cluster typescriptBAttrs contains=typescriptBModelAttrs,typescriptBCollectionAttrs,typescriptBRouterAttrs,typescriptBSyncAttrs,typescriptBViewAttrs

syntax keyword typescriptBEvents contained on off trigger once listenTo stopListening
syntax keyword typescriptBModel contained extend constructor initialize get set escape has unset clear
syntax keyword typescriptBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword typescriptBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword typescriptBCollection contained extend constructor initialize toJSON sync add remove reset update get at 
syntax keyword typescriptBCollection contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
syntax keyword typescriptBRouter contained extend constructor initialize route navigate
syntax keyword typescriptBHistory contained start
syntax keyword typescriptBSync contained ajax 
syntax keyword typescriptBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword typescriptBUtility contained noConflict 

syntax keyword typescriptBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword typescriptBCollectionAttrs contained model models length comparator url
syntax keyword typescriptBRouterAttrs contained routes
syntax keyword typescriptBSyncAttrs contained emulateHTTP emulateJSON
syntax keyword typescriptBViewAttrs contained el attributes
syntax keyword typescriptBViewAttrs match /$el/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_backbone_typescript_syntax_inits")
  if version < 508
    let did_backbone_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptBackbone         Constant

  HiLink typescriptBEvents          PreProc
  HiLink typescriptBModel           PreProc
  HiLink typescriptBCollection      PreProc
  HiLink typescriptBRouter          PreProc
  HiLink typescriptBHistory         PreProc
  HiLink typescriptBSync            PreProc
  HiLink typescriptBView            PreProc
  HiLink typescriptBUtility         PreProc

  HiLink typescriptBModelAttrs      PreProc
  HiLink typescriptBCollectionAttrs PreProc
  HiLink typescriptBRouterAttrs     PreProc
  HiLink typescriptBSyncAttrs       PreProc
  HiLink typescriptBViewAttrs       PreProc


  delcommand HiLink
endif
