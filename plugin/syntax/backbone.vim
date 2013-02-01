" Vim syntax file
" Language:    Backbone.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/01
" Version:     0.9.10
" URL:         http://backbonejs.org/

syn keyword backbone containedin=ALL Backbone

syn keyword Events containedin=ALL on off trigger once listenTo stopListening
syn keyword Model containedin=ALL extend constructor initialize get set escape has unset clear id idAttribute cid attributes
syn keyword Model containedin=ALL changed defaults toJSON sync fetch save destroy validate validationError url urlRoot parse
syn keyword Model containedin=ALL clone isNew hasChanged changedAttributes previous previousAttributes
syn keyword Collection containedin=ALL extend model constructor initialize models toJSON sync add remove reset update get at 
syn keyword Collection containedin=ALL push pop unshift shift length comparator sort pluck where url parse clone fetch create
syn keyword Router containedin=ALL extend routes constructor initialize route navigate
syn keyword History containedin=ALL start
syn keyword Sync containedin=ALL sync ajax emulateHTTP emulateJSON
syn keyword View containedin=ALL extend constructor initialize el $el setElement attributes render remove delegateEvents
syn keyword View containedin=ALL undelegateEvents
syn keyword Utility containedin=ALL noConflict 


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

  HiLink abackbone       Constant

  HiLink Events          PreProc
  HiLink Model           PreProc
  HiLink Collection      PreProc
  HiLink Router          PreProc
  HiLink History         PreProc
  HiLink Sync            PreProc
  HiLink View            PreProc
  HiLink Utility         PreProc

  delcommand HiLink
endif
