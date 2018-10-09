" Vim syntax file
" Language:    AngularJS for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/02/15
" Version:     1.1.13.1
" URL:         http://angularjs.org/

syntax keyword typescriptAngular angular containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptAngularDot
syntax match   typescriptAngularDot contained /\./ nextgroup=typescriptAngularMethods
syntax keyword typescriptAngularMethods contained bind bootstrap copy element equals
syntax keyword typescriptAngularMethods contained extend forEach fromJson identity injector
syntax keyword typescriptAngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword typescriptAngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword typescriptAngularMethods contained mock module noop toJson uppercase version

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $anchorScroll $cacheFactory $compile $controller $document
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $exceptionHandler $filter $httpBackend
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $locale $parse $rootElement
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $routeParams $templateCache $window 
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $cookies $resource $sanitize
syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $element

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $attributes nextgroup=typescriptASattributesdot
syntax match   typescriptASattributesdot contained /\./ nextgroup=typescriptASattributesMethods
syntax keyword typescriptASattributesMethods contained $normalize $addClass $removeClass $updateClass $observe $set $attr

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $http nextgroup=typescriptAShttpdot
syntax match   typescriptAShttpdot contained /\./ nextgroup=typescriptAShttpMethods
syntax keyword typescriptAShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $interpolate nextgroup=typescriptASinterpolatedot
syntax match   typescriptASinterpolatedot contained /\./ nextgroup=typescriptASinterpolateMethods
syntax keyword typescriptASinterpolateMethods contained endSymbol startSymbol

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $location nextgroup=typescriptASlocationdot
syntax match   typescriptASlocationdot contained /\./ nextgroup=typescriptASlocationMethods
syntax keyword typescriptASlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $log nextgroup=typescriptASlogdot
syntax match   typescriptASlogdot contained /\./ nextgroup=typescriptASlogMethods
syntax keyword typescriptASlogMethods contained error info log warn

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $q nextgroup=typescriptASqdot
syntax match   typescriptASqdot contained /\./ nextgroup=typescriptASqMethods
syntax keyword typescriptASqMethods contained all defer reject when

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $route nextgroup=typescriptASroutedot
syntax match   typescriptASroutedot contained /\./ nextgroup=typescriptASrouteMethods
syntax keyword typescriptASrouteMethods contained reload current route

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $timeout nextgroup=typescriptAStimeoutdot
syntax match   typescriptAStimeoutdot contained /\./ nextgroup=typescriptAStimeoutMethods
syntax keyword typescriptAStimeoutMethods contained cancel

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $scope $rootScope nextgroup=typescriptASscopedot
syntax match   typescriptASscopedot contained /\./ nextgroup=typescriptASscopeMethods
syntax keyword typescriptASscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword typescriptAServices containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptRegexpString,typescriptString $cookieStore nextgroup=typescriptAScookieStoredot
syntax match   typescriptAScookieStoredot contained /\./ nextgroup=typescriptAScookieStoreMethods
syntax keyword typescriptAScookieStoreMethods contained get put remove

syntax cluster typescriptAFunctions contains=typescriptAMFunctions
syntax cluster typescriptAAttrs contains=typescriptAMAttrs

syntax keyword typescriptAMFunctions contained config constant controller component directive
syntax keyword typescriptAMFunctions contained factory filter provider run service value
syntax keyword typescriptAMAttrs contained name requires


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_angularjs_typescript_syntax_inits")
  if version < 508
    let did_angularjs_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptAngular         Constant
  HiLink typescriptAServices       Constant

  HiLink typescriptAngularMethods  PreProc
  HiLink typescriptAMFunctions     PreProc
  HiLink typescriptAMAttrs         PreProc

  HiLink typescriptASattributesMethods  PreProc
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
