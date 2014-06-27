" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     1.1.13.1
" URL:         http://angularjs.org/

setlocal iskeyword+=$

syntax keyword javascriptAngular angular containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptAngulardot
syntax match   javascriptAngulardot contained /\./ nextgroup=javascriptAngularMethods
syntax keyword javascriptAngularMethods contained bind bootstrap copy element equals
syntax keyword javascriptAngularMethods contained extend forEach fromJson identity injector
syntax keyword javascriptAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword javascriptAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword javascriptAngularMethods contained mock module noop toJson uppercase version

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $anchorScroll $cacheFactory $compile $controller $document
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $exceptionHandler $filter $httpBackend
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $locale $parse $rootElement
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $routeParams $templateCache $window 
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $cookies $resource $sanitize

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $http nextgroup=javascriptAShttpdot
syntax match   javascriptAShttpdot contained /\./ nextgroup=javascriptAShttpMethods
syntax keyword javascriptAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $interpolate nextgroup=javascriptASinterpolatedot
syntax match   javascriptASinterpolatedot contained /\./ nextgroup=javascriptASinterpolateMethods
syntax keyword javascriptASinterpolateMethods contained endSymbol startSymbol

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $location nextgroup=javascriptASlocationdot
syntax match   javascriptASlocationdot contained /\./ nextgroup=javascriptASlocationMethods
syntax keyword javascriptASlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $log nextgroup=javascriptASlogdot
syntax match   javascriptASlogdot contained /\./ nextgroup=javascriptASlogMethods
syntax keyword javascriptASlogMethods contained error info log warn

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $q nextgroup=javascriptASqdot
syntax match   javascriptASqdot contained /\./ nextgroup=javascriptASqMethods
syntax keyword javascriptASqMethods contained all defer reject when

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $route nextgroup=javascriptASroutedot
syntax match   javascriptASroutedot contained /\./ nextgroup=javascriptASrouteMethods
syntax keyword javascriptASrouteMethods contained reload current route

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $timeout nextgroup=javascriptAStimeoutdot
syntax match   javascriptAStimeoutdot contained /\./ nextgroup=javascriptAStimeoutMethods
syntax keyword javascriptAStimeoutMethods contained cancel

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $scope $rootScope nextgroup=javascriptASscopedot
syntax match   javascriptASscopedot contained /\./ nextgroup=javascriptASscopeMethods
syntax keyword javascriptASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString $cookieStore nextgroup=javascriptAScookieStoredot
syntax match   javascriptAScookieStoredot contained /\./ nextgroup=javascriptAScookieStoreMethods
syntax keyword javascriptAScookieStoreMethods contained get put remove

syntax cluster javascriptAFunctions contains=javascriptAMFunctions
syntax cluster javascriptAAttrs contains=javascriptAMAttrs

syntax keyword javascriptAMFunctions contained config constant controller directive factory
syntax keyword javascriptAMFunctions contained filter provider run service value
syntax keyword javascriptAMAttrs contained name requires


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularjs_javascript_syntax_inits")
  if version < 508
    let did_angularjs_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptAngular         Constant
  HiLink javascriptAServices       Constant

  HiLink javascriptAngularMethods  PreProc
  HiLink javascriptAMFunctions     PreProc
  HiLink javascriptAMAttrs         PreProc

  HiLink javascriptAShttpMethods        PreProc
  HiLink javascriptASinterpolateMethods PreProc
  HiLink javascriptASlocationMethods    PreProc
  HiLink javascriptASlogMethods         PreProc
  HiLink javascriptASqMethods           PreProc
  HiLink javascriptASrouteMethods       PreProc
  HiLink javascriptAStimeoutMethods     PreProc
  HiLink javascriptASscopeMethods       PreProc
  HiLink javascriptAScookieStoreMethods PreProc

  delcommand HiLink
endif
