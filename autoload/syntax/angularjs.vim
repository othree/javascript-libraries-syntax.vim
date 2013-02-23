" Vim syntax file
" Language:    AngularJS
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/02/22
" Version:     1.1.13
" URL:         http://angularjs.org/

if &filetype == 'javascript'

  syntax keyword javascriptAngular angular containedin=ALLBUT,javascriptComment
  syntax match   javascriptAngulardot containedin=ALLBUT,javascriptComment /\(\<angular\.\)\@<=\h\w*/ contains=@javascriptAngularMethods
  syntax keyword javascriptAngularMethods contained bind bootstrap copy element equals
  syntax keyword javascriptAngularMethods contained extend forEach fromJson identity injector
  syntax keyword javascriptAngularMethods contained isArray isDate isDefined isElement isFunction
  syntax keyword javascriptAngularMethods contained isNumber isObject isString isUndefined lowercase
  syntax keyword javascriptAngularMethods contained mock module noop toJson uppercase version

  syntax cluster javascriptAFunctions contains=javascriptAMFunctions
  syntax cluster javascriptAAttrs contains=javascriptAMAttrs

  syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $anchorScroll $cacheFactory $compile $controller $document
  syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $exceptionHandler $filter $http $httpBackend $interpolate
  syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $locale $location $log $parse $q $rootElement $rootScope 
  syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $scope $route $routeParams $templateCache $timeout $window 
  syntax keyword javascriptAServices containedin=ALLBUT,javascriptComment $cookies $cookieStore $resource $sanitize


  syntax keyword javascriptAMFunctions contained config constant controller directive factory
  syntax keyword javascriptAMFunctions contained filter provider run service value
  syntax keyword javascriptAMAttrs contained name requires

endif

if &filetype == 'coffee'

  syntax keyword coffeeAngular angular containedin=ALLBUT,coffeeComment
  syntax match   coffeeAngulardot containedin=ALLBUT,coffeeComment /\(\<angular\.\)\@<=\h\w*/ contains=@coffeeAngularMethods
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

  HiLink coffeeAngular         Constant
  HiLink coffeeAServices       Constant

  HiLink coffeeAngularMethods  PreProc
  HiLink coffeeAMFunctions     PreProc
  HiLink coffeeAMAttrs         PreProc

  HiLink lsAngular         Constant
  HiLink lsAServices       Constant

  HiLink lsAngularMethods  PreProc
  HiLink lsAMFunctions     PreProc
  HiLink lsAMAttrs         PreProc

  delcommand HiLink
endif
