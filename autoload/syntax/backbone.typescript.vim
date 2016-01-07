" Vim syntax file
" Language:    Backbone.js for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/01/07
" Version:     1.2.3
" URL:         http://backbonejs.org/

syntax keyword typescriptBackbone Backbone containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution,typescriptBDot
syntax match   typescriptBDot     contained /\./ nextgroup=typescriptBObjects
syntax keyword typescriptBObjects contained Collection Model View Events Router History Utility sync ajax emulateHTTP emulateJSON

syntax cluster typescriptBFunctions contains=typescriptBEvents,typescriptBModel,typescriptBCollection,typescriptBRouter,typescriptBHistory,typescriptBSync,typescriptBView,typescriptBUtility
syntax cluster typescriptBAttrs contains=typescriptBModelAttrs,typescriptBCollectionAttrs,typescriptBRouterAttrs,typescriptBSyncAttrs,typescriptBViewAttrs

syntax keyword typescriptBEvents contained on off trigger once listenTo stopListening listenToOnce
syntax keyword typescriptBModel contained extend constructor initialize get set escape has unset clear
syntax keyword typescriptBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword typescriptBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword typescriptBCollection contained extend constructor initialize toJSON sync add remove reset set get at 
syntax keyword typescriptBCollection contained push pop unshift shift slice length comparator sort pluck where 
syntax keyword typescriptBCollection contained findWhere url parse clone fetch create
syntax keyword typescriptBRouter contained extend constructor initialize route navigate execute
syntax keyword typescriptBHistory contained start
syntax keyword typescriptBSync contained ajax 
syntax keyword typescriptBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword typescriptBUtility contained noConflict 

syntax keyword typescriptBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword typescriptBCollectionAttrs contained model modelId models length comparator url
syntax keyword typescriptBRouterAttrs contained routes
syntax keyword typescriptBViewAttrs contained el attributes events
syntax keyword typescriptBViewAttrs match /$el/
syntax keyword typescriptBViewAttrs match /$/


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
  HiLink typescriptBObjects         Constant

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
