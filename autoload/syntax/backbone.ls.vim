" Vim syntax file
" Language:    Backbone.js for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     1.2.3
" URL:         http://backbonejs.org/

syntax keyword lsBackbone Backbone containedin=ALLBUT,lsComment,lsLineComment,lsRegexpString,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsBDot
syntax match   lsBDot     contained /\./ nextgroup=lsBObjects
syntax keyword lsBObjects contained Collection Model View Events Router History Utility sync ajax emulateHTTP emulateJSON

syntax cluster lsBFunctions contains=lsBEvents,lsBModel,lsBCollection,lsBRouter,lsBHistory,lsBSync,lsBView,lsBUtility
syntax cluster lsBAttrs contains=lsBModelAttrs,lsBCollectionAttrs,lsBRouterAttrs,lsBSyncAttrs,lsBViewAttrs

syntax keyword lsBEvents contained on off trigger once listenTo stopListening listenToOnce
syntax keyword lsBModel contained extend constructor initialize get set escape has unset clear
syntax keyword lsBModel contained toJSON sync fetch save destroy validate validationError url parse
syntax keyword lsBModel contained clone isNew hasChanged changedAttributes previous previousAttributes
syntax keyword lsBCollection contained extend constructor initialize toJSON sync add remove reset set get at 
syntax keyword lsBCollection contained push pop unshift shift slice length comparator sort pluck where 
syntax keyword lsBCollection contained findWhere url parse clone fetch create
syntax keyword lsBRouter contained extend constructor initialize route navigate execute
syntax keyword lsBHistory contained start
syntax keyword lsBSync contained ajax 
syntax keyword lsBView contained extend constructor initialize setElement render remove delegateEvents undelegateEvents
syntax keyword lsBUtility contained noConflict 

syntax keyword lsBModelAttrs contained id idAttribute cid attributes changed defaults urlRoot
syntax keyword lsBCollectionAttrs contained model modelId models length comparator url
syntax keyword lsBRouterAttrs contained routes
syntax keyword lsBViewAttrs contained el attributes events
syntax keyword lsBViewAttrs match /$el/
syntax keyword lsBViewAttrs match /$/


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_backbone_ls_syntax_inits")
  if version < 508
    let did_backbone_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsBackbone         Constant
  HiLink lsBObjects         Constant

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
