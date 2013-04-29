" Vim syntax file
" Language:    Backbone.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/29
" Version:     0.9.10
" URL:         http://backbonejs.org/

syntax keyword backbone                containedin=ALLBUT,@stringcomment Backbone Collection Model View Events Router History Sync Utility
                                       
syntax cluster backboneFunctions       contains=backboneEvents,backboneModel,backboneCollection,backboneRouter,backboneHistory,backboneSync,backboneView,backboneUtility
syntax cluster backboneAttrs           contains=backboneModelAttrs,backboneCollectionAttrs,backboneRouterAttrs,backboneSyncAttrs,backboneViewAttrs
                                      
syntax keyword backboneEvents          contained on off trigger once listenTo stopListening
syntax keyword backboneModel           contained extend constructor initialize get set escape has unset clear
syntax keyword backboneModel           contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword backboneModel           contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword backboneCollection      contained extend constructor initialize toJSON sync add remove reset update get at 
syntax keyword backboneCollection      contained push pop unshift shift length comparator sort pluck where url parse clone fetch create
syntax keyword backboneRouter          contained extend constructor initialize route navigate
syntax keyword backboneHistory         contained start
syntax keyword backboneSync            contained ajax 
syntax keyword backboneView            contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword backboneUtility         contained noConflict 

syntax keyword backboneModelAttrs      contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword backboneCollectionAttrs contained model models length comparator url
syntax keyword backboneRouterAttrs     contained routes
syntax keyword backboneSyncAttrs       contained emulateHTTP emulateJSON
syntax keyword backboneViewAttrs       contained el attributes
syntax keyword backboneViewAttrs       match /$el/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_backbone_syntax_inits")
  if version < 508
    let did_backbone_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink backboneackbone         Constant

  HiLink backboneEvents          PreProc
  HiLink backboneModel           PreProc
  HiLink backboneCollection      PreProc
  HiLink backboneRouter          PreProc
  HiLink backboneHistory         PreProc
  HiLink backboneSync            PreProc
  HiLink backboneView            PreProc
  HiLink backboneUtility         PreProc

  HiLink backboneModelAttrs      PreProc
  HiLink backboneCollectionAttrs PreProc
  HiLink backboneRouterAttrs     PreProc
  HiLink backboneSyncAttrs       PreProc
  HiLink backboneViewAttrs       PreProc


  delcommand HiLink
endif
