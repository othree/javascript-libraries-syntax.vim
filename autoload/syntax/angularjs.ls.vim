" Vim syntax file
" Language:    AngularJS for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

syntax keyword lsAngular angular containedin=ALLBUT,lsComment
syntax match   lsAngulardot containedin=ALLBUT,lsComment /\(\<angular\.\)\@<=\h\w*/ contains=lsAngularMethods
syntax keyword lsAngularMethods contained bind bootstrap copy element equals
syntax keyword lsAngularMethods contained extend forEach fromJson identity injector
syntax keyword lsAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword lsAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword lsAngularMethods contained mock module noop toJson uppercase version

syntax keyword lsAServices containedin=ALLBUT,lsComment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword lsAServices containedin=ALLBUT,lsComment $exceptionHandler $filter $http $httpBackend $interpolate
syntax keyword lsAServices containedin=ALLBUT,lsComment $locale $location $log $parse $q $rootElement $rootScope 
syntax keyword lsAServices containedin=ALLBUT,lsComment $scope $route $routeParams $templateCache $timeout $window 
syntax keyword lsAServices containedin=ALLBUT,lsComment $cookies $cookieStore $resource $sanitize

syntax match   lsAShttpdot containedin=ALLBUT,lsComment /\(\<\$http\.\)\@<=\h\w*/ contains=lsAShttpMethods
syntax keyword lsAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax match   lsASinterpolatedot containedin=ALLBUT,lsComment /\(\<\$interpolate\.\)\@<=\h\w*/ contains=lsASinterpolateMethods
syntax keyword lsASinterpolateMethods contained endSymbol startSymbol

syntax match   lsASlocationdot containedin=ALLBUT,lsComment /\(\<\$location\.\)\@<=\h\w*/ contains=lsASlocationMethods
syntax keyword lsASlocationMethods contained absUrl hash host path port protocol replace search url

syntax match   lsASlogdot containedin=ALLBUT,lsComment /\(\<\$log\.\)\@<=\h\w*/ contains=lsASlogMethods
syntax keyword lsASlogMethods contained error info log warn

syntax match   lsASqdot containedin=ALLBUT,lsComment /\(\<\$q\.\)\@<=\h\w*/ contains=lsASqMethods
syntax keyword lsASqMethods contained all defer reject when

syntax match   lsASroutedot containedin=ALLBUT,lsComment /\(\<\$route\.\)\@<=\h\w*/ contains=lsASrouteMethods
syntax keyword lsASrouteMethods contained reload current route

syntax match   lsAStimeoutdot containedin=ALLBUT,lsComment /\(\<\$timeout\.\)\@<=\h\w*/ contains=lsAStimeoutMethods
syntax keyword lsAStimeoutMethods contained cancel

syntax match   lsASscopedot containedin=ALLBUT,lsComment /\(\<\$scope\.\|\$rootScope\)\@<=\h\w*/ contains=lsASscopeMethods
syntax keyword lsASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax match   lsAScookieStoredot containedin=ALLBUT,lsComment /\(\<\$cookieStore\.\)\@<=\h\w*/ contains=lsAScookieStoreMethods
syntax keyword lsAScookieStoreMethods contained get put remove

syntax cluster lsAFunctions contains=lsAMFunctions
syntax cluster lsAAttrs contains=lsAMAttrs

syntax keyword lsAMFunctions contained config constant controller directive factory
syntax keyword lsAMFunctions contained filter provider run service value
syntax keyword lsAMAttrs contained name requires


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

  HiLink lsAngular         Constant
  HiLink lsAServices       Constant

  HiLink lsAngularMethods  PreProc
  HiLink lsAMFunctions     PreProc
  HiLink lsAMAttrs         PreProc

  HiLink lsAShttpMethods        PreProc
  HiLink lsASinterpolateMethods PreProc
  HiLink lsASlocationMethods    PreProc
  HiLink lsASlogMethods         PreProc
  HiLink lsASqMethods           PreProc
  HiLink lsASrouteMethods       PreProc
  HiLink lsAStimeoutMethods     PreProc
  HiLink lsASscopeMethods       PreProc
  HiLink lsAScookieStoreMethods PreProc

  delcommand HiLink
endif
