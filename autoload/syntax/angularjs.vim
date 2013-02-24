" Vim syntax file
" Language:    AngularJS
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

if &filetype == 'javascript'

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

endif

if &filetype == 'coffee'

  syntax keyword coffeeAngular angular containedin=ALLBUT,coffeeComment
  syntax match   coffeeAngulardot containedin=ALLBUT,coffeeComment /\(\<angular\.\)\@<=\h\w*/ contains=coffeeAngularMethods
  syntax keyword coffeeAngularMethods contained bind bootstrap copy element equals
  syntax keyword coffeeAngularMethods contained extend forEach fromJson identity injector
  syntax keyword coffeeAngularMethods contained isArray isDate isDefined isElement isFunction
  syntax keyword coffeeAngularMethods contained isNumber isObject isString isUndefined lowercase
  syntax keyword coffeeAngularMethods contained mock module noop toJson uppercase version

  syntax cluster coffeeAFunctions contains=coffeeAMFunctions
  syntax cluster coffeeAAttrs contains=coffeeAMAttrs

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

  syntax keyword coffeeAMFunctions contained config constant controller directive factory
  syntax keyword coffeeAMFunctions contained filter provider run service value
  syntax keyword coffeeAMAttrs contained name requires

endif

if &filetype == 'ls'

  syntax keyword lsAngular angular containedin=ALLBUT,lsComment
  syntax match   lsAngulardot containedin=ALLBUT,lsComment /\(\<angular\.\)\@<=\h\w*/ contains=@lsAngularMethods
  syntax keyword lsAngularMethods contained bind bootstrap copy element equals
  syntax keyword lsAngularMethods contained extend forEach fromJson identity injector
  syntax keyword lsAngularMethods contained isArray isDate isDefined isElement isFunction
  syntax keyword lsAngularMethods contained isNumber isObject isString isUndefined lowercase
  syntax keyword lsAngularMethods contained mock module noop toJson uppercase version

  syntax cluster lsAFunctions contains=lsAMFunctions
  syntax cluster lsAAttrs contains=lsAMAttrs

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

  syntax keyword lsAMFunctions contained config constant controller directive factory
  syntax keyword lsAMFunctions contained filter provider run service value
  syntax keyword lsAMAttrs contained name requires

endif

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
