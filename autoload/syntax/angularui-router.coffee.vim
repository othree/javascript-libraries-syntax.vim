" Vim syntax file
" Language:   AngularUI Router for coffee
" Maintainer: Dan Hansen <https://www.linkedin.com/in/dansomething>
" URL:        http://angular-ui.github.io/ui-router/

syntax keyword coffeeUIRouter containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString $stateProvider nextgroup=coffeeASstateProviderdot
syntax match   coffeeASstateProverdot contained /\./ nextgroup=coffeeASstateProviderMethods
syntax keyword coffeeASstateProviderMethods contained state decorator

syntax keyword coffeeUIRouter containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString $urlRouterProvider nextgroup=coffeeASurlRouterProviderdot
syntax match   coffeeASstateProverdot contained /\./ nextgroup=coffeeASurlRouterProviderMethods
syntax keyword coffeeASurlRouterProviderMethods contained when otherwise rule

syntax keyword coffeeUIRouter containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString $state nextgroup=coffeeASstatedot
syntax match   coffeeASstatedot contained /\./ nextgroup=coffeeASstateMethods
syntax keyword coffeeASstateMethods contained current get go href includes is reload transitionTo

syntax keyword coffeeUIRouter containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString $urlRouter nextgroup=coffeeASurlRouterdot
syntax match   coffeeASurlRouterdot contained /\./ nextgroup=coffeeASurlRouterMethods
syntax keyword coffeeASurlRouterMethods contained href sync

syntax keyword coffeeUIRouter containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString $stateParams $uiViewScroll


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularui_router_coffee_syntax_inits")
  if version < 508
    let did_angularui_router_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeUIRouter        Constant

  HiLink coffeeASstateProviderMethods           PreProc
  HiLink coffeeASurlRouterProviderMethods       PreProc
  HiLink coffeeASstateMethods                   PreProc
  HiLink coffeeASurlRouterMethods               PreProc

  delcommand HiLink
endif
