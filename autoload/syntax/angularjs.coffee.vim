" Vim syntax file
" Language:    AngularJS for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

syntax keyword coffeeAngular angular containedin=ALLBUT,coffeeComment
syntax match   coffeeAngulardot containedin=ALLBUT,coffeeComment /\(\<angular\.\)\@<=\h\w*/ contains=coffeeAngularMethods
syntax keyword coffeeAngularMethods contained bind bootstrap copy element equals
syntax keyword coffeeAngularMethods contained extend forEach fromJson identity injector
syntax keyword coffeeAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword coffeeAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword coffeeAngularMethods contained mock module noop toJson uppercase version

syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $exceptionHandler $filter $http $httpBackend $interpolate
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $locale $location $log $parse $q $rootElement $rootScope 
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $scope $route $routeParams $templateCache $timeout $window 
syntax keyword coffeeAServices containedin=ALLBUT,coffeeComment $cookies $cookieStore $resource $sanitize

syntax match   coffeeAShttpdot containedin=ALLBUT,coffeeComment /\(\<\$http\.\)\@<=\h\w*/ contains=coffeeAShttpMethods
syntax keyword coffeeAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax match   coffeeASinterpolatedot containedin=ALLBUT,coffeeComment /\(\<\$interpolate\.\)\@<=\h\w*/ contains=coffeeASinterpolateMethods
syntax keyword coffeeASinterpolateMethods contained endSymbol startSymbol

syntax match   coffeeASlocationdot containedin=ALLBUT,coffeeComment /\(\<\$location\.\)\@<=\h\w*/ contains=coffeeASlocationMethods
syntax keyword coffeeASlocationMethods contained absUrl hash host path port protocol replace search url

syntax match   coffeeASlogdot containedin=ALLBUT,coffeeComment /\(\<\$log\.\)\@<=\h\w*/ contains=coffeeASlogMethods
syntax keyword coffeeASlogMethods contained error info log warn

syntax match   coffeeASqdot containedin=ALLBUT,coffeeComment /\(\<\$q\.\)\@<=\h\w*/ contains=coffeeASqMethods
syntax keyword coffeeASqMethods contained all defer reject when

syntax match   coffeeASroutedot containedin=ALLBUT,coffeeComment /\(\<\$route\.\)\@<=\h\w*/ contains=coffeeASrouteMethods
syntax keyword coffeeASrouteMethods contained reload current route

syntax match   coffeeAStimeoutdot containedin=ALLBUT,coffeeComment /\(\<\$timeout\.\)\@<=\h\w*/ contains=coffeeAStimeoutMethods
syntax keyword coffeeAStimeoutMethods contained cancel

syntax match   coffeeASscopedot containedin=ALLBUT,coffeeComment /\(\<\$scope\.\|\$rootScope\)\@<=\h\w*/ contains=coffeeASscopeMethods
syntax keyword coffeeASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax match   coffeeAScookieStoredot containedin=ALLBUT,coffeeComment /\(\<\$cookieStore\.\)\@<=\h\w*/ contains=coffeeAScookieStoreMethods
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
