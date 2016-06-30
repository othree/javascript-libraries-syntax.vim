" Vim syntax file
" Language:    AngularJS for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     1.1.13.1
" URL:         http://angularjs.org/

syntax keyword lsAngular angular containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsAngulardot
syntax match   lsAngulardot contained /\./ nextgroup=lsAngularMethods
syntax keyword lsAngularMethods contained bind bootstrap copy element equals
syntax keyword lsAngularMethods contained extend forEach fromJson identity injector
syntax keyword lsAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword lsAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword lsAngularMethods contained mock module noop toJson uppercase version

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $anchorScroll $cacheFactory $compile $controller $document
syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $exceptionHandler $filter $httpBackend
syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $locale $parse $rootElement
syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $routeParams $templateCache $window 
syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $cookies $resource $sanitize

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $http nextgroup=lsAShttpdot
syntax match   lsAShttpdot contained /\./ nextgroup=lsAShttpMethods
syntax keyword lsAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $interpolate nextgroup=lsASinterpolatedot
syntax match   lsASinterpolatedot contained /\./ nextgroup=lsASinterpolateMethods
syntax keyword lsASinterpolateMethods contained endSymbol startSymbol

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $location nextgroup=lsASlocationdot
syntax match   lsASlocationdot contained /\./ nextgroup=lsASlocationMethods
syntax keyword lsASlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $log nextgroup=lsASlogdot
syntax match   lsASlogdot contained /\./ nextgroup=lsASlogMethods
syntax keyword lsASlogMethods contained error info log warn

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $q nextgroup=lsASqdot
syntax match   lsASqdot contained /\./ nextgroup=lsASqMethods
syntax keyword lsASqMethods contained all defer reject when

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $route nextgroup=lsASroutedot
syntax match   lsASroutedot contained /\./ nextgroup=lsASrouteMethods
syntax keyword lsASrouteMethods contained reload current route

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $timeout nextgroup=lsAStimeoutdot
syntax match   lsAStimeoutdot contained /\./ nextgroup=lsAStimeoutMethods
syntax keyword lsAStimeoutMethods contained cancel

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $scope $rootScope nextgroup=lsASscopedot
syntax match   lsASscopedot contained /\./ nextgroup=lsASscopeMethods
syntax keyword lsASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword lsAServices containedin=ALLBUT,lsComment,lsLineComment,lsString $cookieStore nextgroup=lsAScookieStoredot
syntax match   lsAScookieStoredot contained /\./ nextgroup=lsAScookieStoreMethods
syntax keyword lsAScookieStoreMethods contained get put remove

syntax cluster lsAFunctions contains=lsAMFunctions
syntax cluster lsAAttrs contains=lsAMAttrs

syntax keyword lsAMFunctions contained config constant controller component directive
syntax keyword lsAMFunctions contained factory filter provider run service value
syntax keyword lsAMAttrs contained name requires


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularjs_ls_syntax_inits")
  if version < 508
    let did_angularjs_ls_syntax_inits = 1
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
