" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

syntax keyword javascriptAngular angular containedin=ALLBUT,javascriptComment
syntax match   javascriptAngulardot containedin=ALLBUT,javascriptComment /\(\<angular\.\)\@<=\h\w*/ contains=javascriptAngularMethods
syntax keyword javascriptAngularMethods contained bind bootstrap copy element equals
syntax keyword javascriptAngularMethods contained extend forEach fromJson identity injector
syntax keyword javascriptAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword javascriptAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword javascriptAngularMethods contained mock module noop toJson uppercase version

syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $exceptionHandler $filter $http $httpBackend $interpolate
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $locale $location $log $parse $q $rootElement $rootScope 
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $scope $route $routeParams $templateCache $timeout $window 
syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $cookies $cookieStore $resource $sanitize

syntax match   javascriptAShttpdot containedin=ALLBUT,javascriptComment /\(\<\$http\.\)\@<=\h\w*/ contains=javascriptAShttpMethods
syntax keyword javascriptAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax match   javascriptASinterpolatedot containedin=ALLBUT,javascriptComment /\(\<\$interpolate\.\)\@<=\h\w*/ contains=javascriptASinterpolateMethods
syntax keyword javascriptASinterpolateMethods contained endSymbol startSymbol

syntax match   javascriptASlocationdot containedin=ALLBUT,javascriptComment /\(\<\$location\.\)\@<=\h\w*/ contains=javascriptASlocationMethods
syntax keyword javascriptASlocationMethods contained absUrl hash host path port protocol replace search url

syntax match   javascriptASlogdot containedin=ALLBUT,javascriptComment /\(\<\$log\.\)\@<=\h\w*/ contains=javascriptASlogMethods
syntax keyword javascriptASlogMethods contained error info log warn

syntax match   javascriptASqdot containedin=ALLBUT,javascriptComment /\(\<\$q\.\)\@<=\h\w*/ contains=javascriptASqMethods
syntax keyword javascriptASqMethods contained all defer reject when

syntax match   javascriptASroutedot containedin=ALLBUT,javascriptComment /\(\<\$route\.\)\@<=\h\w*/ contains=javascriptASrouteMethods
syntax keyword javascriptASrouteMethods contained reload current route

syntax match   javascriptAStimeoutdot containedin=ALLBUT,javascriptComment /\(\<\$timeout\.\)\@<=\h\w*/ contains=javascriptAStimeoutMethods
syntax keyword javascriptAStimeoutMethods contained cancel

syntax match   javascriptASscopedot containedin=ALLBUT,javascriptComment /\(\<\$scope\.\|\$rootScope\)\@<=\h\w*/ contains=javascriptASscopeMethods
syntax keyword javascriptASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax match   javascriptAScookieStoredot containedin=ALLBUT,javascriptComment /\(\<\$cookieStore\.\)\@<=\h\w*/ contains=javascriptAScookieStoreMethods
syntax keyword javascriptAScookieStoreMethods contained get put remove

syntax cluster javascriptAFunctions contains=javascriptAMFunctions
syntax cluster javascriptAAttrs contains=javascriptAMAttrs

syntax keyword javascriptAMFunctions contained config constant controller directive factory
syntax keyword javascriptAMFunctions contained filter provider run service value
syntax keyword javascriptAMAttrs contained name requires


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
