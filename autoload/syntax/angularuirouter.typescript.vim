" Vim syntax file
" Language:   AngularUI Router for typescript
" Maintainer: Dan Hansen <https://www.linkedin.com/in/dansomething>
" URL:        http://angular-ui.github.io/ui-router/

syntax keyword typescriptUIRouter containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString $stateProvider nextgroup=typescriptASstateProviderdot
syntax match   typescriptASstateProverdot contained /\./ nextgroup=typescriptASstateProviderMethods
syntax keyword typescriptASstateProviderMethods contained state decorator

syntax keyword typescriptUIRouter containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString $urlRouterProvider nextgroup=typescriptASurlRouterProviderdot
syntax match   typescriptASstateProverdot contained /\./ nextgroup=typescriptASurlRouterProviderMethods
syntax keyword typescriptASurlRouterProviderMethods contained when otherwise rule

syntax keyword typescriptUIRouter containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString $state nextgroup=typescriptASstatedot
syntax match   typescriptASstatedot contained /\./ nextgroup=typescriptASstateMethods
syntax keyword typescriptASstateMethods contained current get go href includes is reload transitionTo

syntax keyword typescriptUIRouter containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString $urlRouter nextgroup=typescriptASurlRouterdot
syntax match   typescriptASurlRouterdot contained /\./ nextgroup=typescriptASurlRouterMethods
syntax keyword typescriptASurlRouterMethods contained href sync

syntax keyword typescriptUIRouter containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString $stateParams $uiViewScroll


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularui_router_typescript_syntax_inits")
  if version < 508
    let did_angularui_router_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptUIRouter        Constant

  HiLink typescriptASstateProviderMethods           PreProc
  HiLink typescriptASurlRouterProviderMethods       PreProc
  HiLink typescriptASstateMethods                   PreProc
  HiLink typescriptASurlRouterMethods               PreProc

  delcommand HiLink
endif
