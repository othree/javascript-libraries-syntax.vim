" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/21
" Version:     1.1.13.1
" URL:         http://angularjs.org/

setlocal iskeyword+=-

syntax keyword  htmlArg contained ng-app ng-bind ng-bind-html-unsafe ng-bind-template ng-change ng-checked ng-class
syntax keyword  htmlArg contained ng-class-even ng-class-odd ng-click ng-cloak ng-controller ng-csp ng-dblclick
syntax keyword  htmlArg contained ng-disabled ng-form ng-hide ng-href ng-include ng-init ng-keydown ng-keypress
syntax keyword  htmlArg contained ng-key-up ng-list ng-model ng-mousedown ng-mouseenter ng-mouseleave ng-mousemove
syntax keyword  htmlArg contained ng-mouseover ng-mouseup ng-multiple ng-non-bindable ng-pluralize ng-readonly
syntax keyword  htmlArg contained ng-repeat ng-selected ng-show ng-src ng-style ng-submit ng-switch ng-switch-when
syntax keyword  htmlArg contained ng-switch-default ng-transclude ng-view ng-if ng-blur

" http://docs.angularjs.org/guide/directive
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(app\|bind\|bind-html-unsafe\|bind-template\|change\|checked\|class\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(class-even\|class-odd\|click\|cloak\|controller\|csp\|dblclick\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(disabled\|form\|hide\|href\|include\|init\|keydown\|keypress\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(key-up\|list\|model\|mousedown\|mouseenter\|mouseleave\|mousemove\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(mouseover\|mouseup\|multiple\|non-bindable\|pluralize\|readonly\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(repeat\|selected\|show\|src\|style\|submit\|switch\|switch-when\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(switch-default\|transclude\|view\|if\|blur\)/

" http://docs.angularjs.org/api/ng.directive:ngInclude
" http://docs.angularjs.org/api/ng.directive:ngPluralize
" http://docs.angularjs.org/api/ng.directive:ngSwitch
syntax keyword  htmlArg contained expression autoscroll count when offset on


syntax keyword  htmlTagName contained ng-change ng-form ng-view
syntax keyword  htmlTagName contained ng-include ng-pluralize ng-switch 

