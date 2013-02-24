" Vim syntax file
" Language:    AngularJS for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

syntax keyword typescriptAngular angular containedin=ALLBUT,typescriptComment
syntax match   typescriptAngulardot containedin=ALLBUT,typescriptComment /\(\<angular\.\)\@<=\h\w*/ contains=typescriptAngularMethods
syntax keyword typescriptAngularMethods contained bind bootstrap copy element equals
syntax keyword typescriptAngularMethods contained extend forEach fromJson identity injector
syntax keyword typescriptAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword typescriptAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword typescriptAngularMethods contained mock module noop toJson uppercase version

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment $exceptionHandler $filter $http $httpBackend $interpolate
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment $locale $location $log $parse $q $rootElement $rootScope 
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment $scope $route $routeParams $templateCache $timeout $window 
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment $cookies $cookieStore $resource $sanitize

syntax match   typescriptAShttpdot containedin=ALLBUT,typescriptComment /\(\<\$http\.\)\@<=\h\w*/ contains=typescriptAShttpMethods
syntax keyword typescriptAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax match   typescriptASinterpolatedot containedin=ALLBUT,typescriptComment /\(\<\$interpolate\.\)\@<=\h\w*/ contains=typescriptASinterpolateMethods
syntax keyword typescriptASinterpolateMethods contained endSymbol startSymbol

syntax match   typescriptASlocationdot containedin=ALLBUT,typescriptComment /\(\<\$location\.\)\@<=\h\w*/ contains=typescriptASlocationMethods
syntax keyword typescriptASlocationMethods contained absUrl hash host path port protocol replace search url

syntax match   typescriptASlogdot containedin=ALLBUT,typescriptComment /\(\<\$log\.\)\@<=\h\w*/ contains=typescriptASlogMethods
syntax keyword typescriptASlogMethods contained error info log warn

syntax match   typescriptASqdot containedin=ALLBUT,typescriptComment /\(\<\$q\.\)\@<=\h\w*/ contains=typescriptASqMethods
syntax keyword typescriptASqMethods contained all defer reject when

syntax match   typescriptASroutedot containedin=ALLBUT,typescriptComment /\(\<\$route\.\)\@<=\h\w*/ contains=typescriptASrouteMethods
syntax keyword typescriptASrouteMethods contained reload current route

syntax match   typescriptAStimeoutdot containedin=ALLBUT,typescriptComment /\(\<\$timeout\.\)\@<=\h\w*/ contains=typescriptAStimeoutMethods
syntax keyword typescriptAStimeoutMethods contained cancel

syntax match   typescriptASscopedot containedin=ALLBUT,typescriptComment /\(\<\$scope\.\|\$rootScope\)\@<=\h\w*/ contains=typescriptASscopeMethods
syntax keyword typescriptASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax match   typescriptAScookieStoredot containedin=ALLBUT,typescriptComment /\(\<\$cookieStore\.\)\@<=\h\w*/ contains=typescriptAScookieStoreMethods
syntax keyword typescriptAScookieStoreMethods contained get put remove

syntax cluster typescriptAFunctions contains=typescriptAMFunctions
syntax cluster typescriptAAttrs contains=typescriptAMAttrs

syntax keyword typescriptAMFunctions contained config constant controller directive factory
syntax keyword typescriptAMFunctions contained filter provider run service value
syntax keyword typescriptAMAttrs contained name requires


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

  HiLink typescriptAngular         Constant
  HiLink typescriptAServices       Constant

  HiLink typescriptAngularMethods  PreProc
  HiLink typescriptAMFunctions     PreProc
  HiLink typescriptAMAttrs         PreProc

  HiLink typescriptAShttpMethods        PreProc
  HiLink typescriptASinterpolateMethods PreProc
  HiLink typescriptASlocationMethods    PreProc
  HiLink typescriptASlogMethods         PreProc
  HiLink typescriptASqMethods           PreProc
  HiLink typescriptASrouteMethods       PreProc
  HiLink typescriptAStimeoutMethods     PreProc
  HiLink typescriptASscopeMethods       PreProc
  HiLink typescriptAScookieStoreMethods PreProc

  delcommand HiLink
endif
