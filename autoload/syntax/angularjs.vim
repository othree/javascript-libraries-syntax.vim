" Vim syntax file
" Language:    AngularJS
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/29
" Version:     1.1.13
" URL:         http://angularjs.org/

syntax keyword angularjs containedin=ALLBUT,@stringcomment nextgroup=angularjsngularDot
syntax match   angularjsngularDot contained /\./ nextgroup=angularjsngularMethods
syntax keyword angularjsngularMethods contained bind bootstrap copy element equals
syntax keyword angularjsngularMethods contained extend forEach fromJson identity injector
syntax keyword angularjsngularMethods contained isArray isDate isDefined isElement isFunction
syntax keyword angularjsngularMethods contained isNumber isObject isString isUndefined lowercase
syntax keyword angularjsngularMethods contained mock module noop toJson uppercase version

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $anchorScroll $cacheFactory $compile $controller $document
syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $exceptionHandler $filter $httpBackend
syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $locale $parse $rootElement
syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $routeParams $templateCache $window 
syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $cookies $resource $sanitize

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $http nextgroup=angularjsShttpDot
syntax match   angularjsShttpDot contained /\./ nextgroup=angularjsShttpMethods
syntax keyword angularjsShttpMethods contained get head post put delete jsonp defaults prendingRequests 

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $interpolate nextgroup=angularjsSinterpolateDot
syntax match   angularjsSinterpolateDot contained /\./ nextgroup=angularjsSinterpolateMethods
syntax keyword angularjsSinterpolateMethods contained endSymbol startSymbol

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $location nextgroup=angularjsSlocationDot
syntax match   angularjsSlocationDot contained /\./ nextgroup=angularjsSlocationMethods
syntax keyword angularjsSlocationMethods contained absUrl hash host path port protocol replace search url

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $log nextgroup=angularjsSlogDot
syntax match   angularjsSlogDot contained /\./ nextgroup=angularjsSlogMethods
syntax keyword angularjsSlogMethods contained error info log warn

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $q nextgroup=angularjsSqDot
syntax match   angularjsSqDot contained /\./ nextgroup=angularjsSqMethods
syntax keyword angularjsSqMethods contained all defer reject when

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $route nextgroup=angularjsSrouteDot
syntax match   angularjsSrouteDot contained /\./ nextgroup=angularjsSrouteMethods
syntax keyword angularjsSrouteMethods contained reload current route

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $timeout nextgroup=angularjsStimeoutDot
syntax match   angularjsStimeoutDot contained /\./ nextgroup=angularjsStimeoutMethods
syntax keyword angularjsStimeoutMethods contained cancel

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $scope $rootScope nextgroup=angularjsSscopeDot
syntax match   angularjsSscopeDot contained /\./ nextgroup=angularjsSscopeMethods
syntax keyword angularjsSscopeMethods contained $apply $broadcast $destroy $digest $emit $eval $evalAsync $new $on $watch $id

syntax keyword angularjsServices containedin=ALLBUT,@stringcomment $cookieStore nextgroup=angularjsScookieStoreDot
syntax match   angularjsScookieStoreDot contained /\./ nextgroup=angularjsScookieStoreMethods
syntax keyword angularjsScookieStoreMethods contained get put remove

syntax cluster angularjsFunctions contains=angularjsMFunctions
syntax cluster angularjsAttrs contains=angularjsMAttrs

syntax keyword angularjsMFunctions contained config constant controller directive factory
syntax keyword angularjsMFunctions contained filter provider run service value
syntax keyword angularjsMAttrs contained name requires


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

  HiLink angularjs                    Constant
  HiLink angularjsServices            Constant
                                     
  HiLink angularjsngularMethods       PreProc
  HiLink angularjsMFunctions          PreProc
  HiLink angularjsMAttrs              PreProc

  HiLink angularjsShttpMethods        PreProc
  HiLink angularjsSinterpolateMethods PreProc
  HiLink angularjsSlocationMethods    PreProc
  HiLink angularjsSlogMethods         PreProc
  HiLink angularjsSqMethods           PreProc
  HiLink angularjsSrouteMethods       PreProc
  HiLink angularjsStimeoutMethods     PreProc
  HiLink angularjsSscopeMethods       PreProc
  HiLink angularjsScookieStoreMethods PreProc

  delcommand HiLink
endif
