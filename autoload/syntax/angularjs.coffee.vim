" Vim syntax file
" Language:    AngularJS for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/21
" Version:     1.1.13.1
" URL:         http://angularjs.org/

syntax keyword coffeeAngular angular containedin=ALLBUT,coffeeComment nextgroup=coffeeAngulardot
syntax match   coffeeAngulardot contained /\./ nextgroup=coffeeAngularMethods
syntax keyword coffeeAngularMethods contained bind bootstrap copy element equals
syntax keyword coffeeAngularMethods contained extend forEach fromJson identity injector
syntax keyword coffeeAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword coffeeAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword coffeeAngularMethods contained mock module noop toJson uppercase version

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $exceptionHandler $filter $httpBackend
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $locale $parse $rootElement
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $routeParams $templateCache $window 
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $cookies $resource $sanitize

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $http nextgroup=coffeeAShttpdot
syntax match   coffeeAShttpdot contained /\./ nextgroup=coffeeAShttpMethods
syntax keyword coffeeAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $interpolate nextgroup=coffeeASinterpolatedot
syntax match   coffeeASinterpolatedot contained /\./ nextgroup=coffeeASinterpolateMethods
syntax keyword coffeeASinterpolateMethods contained endSymbol startSymbol

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $location nextgroup=coffeeASlocationdot
syntax match   coffeeASlocationdot contained /\./ nextgroup=coffeeASlocationMethods
syntax keyword coffeeASlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $log nextgroup=coffeeASlogdot
syntax match   coffeeASlogdot contained /\./ nextgroup=coffeeASlogMethods
syntax keyword coffeeASlogMethods contained error info log warn

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $q nextgroup=coffeeASqdot
syntax match   coffeeASqdot contained /\./ nextgroup=coffeeASqMethods
syntax keyword coffeeASqMethods contained all defer reject when

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $route nextgroup=coffeeASroutedot
syntax match   coffeeASroutedot contained /\./ nextgroup=coffeeASrouteMethods
syntax keyword coffeeASrouteMethods contained reload current route

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $timeout nextgroup=coffeeAStimeoutdot
syntax match   coffeeAStimeoutdot contained /\./ nextgroup=coffeeAStimeoutMethods
syntax keyword coffeeAStimeoutMethods contained cancel

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $scope $rootScope nextgroup=coffeeASscopedot
syntax match   coffeeASscopedot contained /\./ nextgroup=coffeeASscopeMethods
syntax keyword coffeeASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $cookieStore nextgroup=coffeeAScookieStoredot
syntax match   coffeeAScookieStoredot contained /\./ nextgroup=coffeeAScookieStoreMethods
syntax keyword coffeeAScookieStoreMethods contained get put remove

syntax cluster coffeeAFunctions contains=coffeeAMFunctions
syntax cluster coffeeAAttrs contains=coffeeAMAttrs

syntax keyword coffeeAMFunctions contained config constant controller directive factory
syntax keyword coffeeAMFunctions contained filter provider run service value
syntax keyword coffeeAMAttrs contained name requires


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

  HiLink coffeeAngular         Constant
  HiLink coffeeAServices       Constant

  HiLink coffeeAngularMethods  PreProc
  HiLink coffeeAMFunctions     PreProc
  HiLink coffeeAMAttrs         PreProc

  HiLink coffeeAShttpMethods        PreProc
  HiLink coffeeASinterpolateMethods PreProc
  HiLink coffeeASlocationMethods    PreProc
  HiLink coffeeASlogMethods         PreProc
  HiLink coffeeASqMethods           PreProc
  HiLink coffeeASrouteMethods       PreProc
  HiLink coffeeAStimeoutMethods     PreProc
  HiLink coffeeASscopeMethods       PreProc
  HiLink coffeeAScookieStoreMethods PreProc

  delcommand HiLink
endif
