" Vim syntax file
" Language:   AngularUI Router for ls
" Maintainer: Dan Hansen <https://www.linkedin.com/in/dansomething>
" URL:        http://angular-ui.github.io/ui-router/

syntax keyword lsUIRouter containedin=ALLBUT,lsComment,lsLineComment,lsString $stateProvider nextgroup=lsASstateProviderdot
syntax match   lsASstateProverdot contained /\./ nextgroup=lsASstateProviderMethods
syntax keyword lsASstateProviderMethods contained state decorator

syntax keyword lsUIRouter containedin=ALLBUT,lsComment,lsLineComment,lsString $urlRouterProvider nextgroup=lsASurlRouterProviderdot
syntax match   lsASstateProverdot contained /\./ nextgroup=lsASurlRouterProviderMethods
syntax keyword lsASurlRouterProviderMethods contained when otherwise rule

syntax keyword lsUIRouter containedin=ALLBUT,lsComment,lsLineComment,lsString $state nextgroup=lsASstatedot
syntax match   lsASstatedot contained /\./ nextgroup=lsASstateMethods
syntax keyword lsASstateMethods contained current get go href includes is reload transitionTo

syntax keyword lsUIRouter containedin=ALLBUT,lsComment,lsLineComment,lsString $urlRouter nextgroup=lsASurlRouterdot
syntax match   lsASurlRouterdot contained /\./ nextgroup=lsASurlRouterMethods
syntax keyword lsASurlRouterMethods contained href sync

syntax keyword lsUIRouter containedin=ALLBUT,lsComment,lsLineComment,lsString $stateParams $uiViewScroll


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularui_router_ls_syntax_inits")
  if version < 508
    let did_angularui_router_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsUIRouter        Constant

  HiLink lsASstateProviderMethods           PreProc
  HiLink lsASurlRouterProviderMethods       PreProc
  HiLink lsASstateMethods                   PreProc
  HiLink lsASurlRouterMethods               PreProc

  delcommand HiLink
endif
