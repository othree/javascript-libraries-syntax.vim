" Vim syntax file
" Language:   AngularUI Router for javascript
" Maintainer: Dan Hansen <https://www.linkedin.com/in/dansomething>
" URL:        http://angular-ui.github.io/ui-router/

syntax keyword javascriptUIRouter containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $stateProvider nextgroup=javascriptASstateProviderdot
syntax match   javascriptASstateProverdot contained /\./ nextgroup=javascriptASstateProviderMethods
syntax keyword javascriptASstateProviderMethods contained state decorator

syntax keyword javascriptUIRouter containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $urlRouterProvider nextgroup=javascriptASurlRouterProviderdot
syntax match   javascriptASstateProverdot contained /\./ nextgroup=javascriptASurlRouterProviderMethods
syntax keyword javascriptASurlRouterProviderMethods contained when otherwise rule

syntax keyword javascriptUIRouter containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $state nextgroup=javascriptASstatedot
syntax match   javascriptASstatedot contained /\./ nextgroup=javascriptASstateMethods
syntax keyword javascriptASstateMethods contained current get go href includes is reload transitionTo

syntax keyword javascriptUIRouter containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $urlRouter nextgroup=javascriptASurlRouterdot
syntax match   javascriptASurlRouterdot contained /\./ nextgroup=javascriptASurlRouterMethods
syntax keyword javascriptASurlRouterMethods contained href sync

syntax keyword javascriptUIRouter containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $stateParams $uiViewScroll


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularui_router_javascript_syntax_inits")
  if version < 508
    let did_angularui_router_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptUIRouter        Constant

  HiLink javascriptASstateProviderMethods           PreProc
  HiLink javascriptASurlRouterProviderMethods       PreProc
  HiLink javascriptASstateMethods                   PreProc
  HiLink javascriptASurlRouterMethods               PreProc

  delcommand HiLink
endif
