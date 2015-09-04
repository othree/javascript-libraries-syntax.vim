" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>, Rafael Benevides <rafabene@gmail.com>
" Last Change: 2015/10/04
" Version:     1.4.5 - Taken from: https://code.angularjs.org/1.4.5/docs/api/ng/directive
" URL:         http://angularjs.org/

setlocal iskeyword+=-

syntax keyword  htmlArg contained ng-app ng-bind ng-bind-html ng-bind-template ng-blur ng-change ng-checked ng-class
syntax keyword  htmlArg contained ng-class-even ng-class-odd ng-click ng-cloak ng-controller ng-copy ng-csp ng-dblclick
syntax keyword  htmlArg contained ng-disabled ng-form ng-hide ng-href ng-if ng-include ng-init ng-jq ng-keydown ng-keypress
syntax keyword  htmlArg contained ng-keyup ng-list ng-model ng-model-options ng-mousedown ng-mouseenter ng-mouseleave ng-mousemove
syntax keyword  htmlArg contained ng-mouseover ng-mouseup ng-non-bindable ng-open ng-options ng-paste ng-pluralize ng-readonly
syntax keyword  htmlArg contained ng-repeat ng-selected ng-show ng-src ng-srcset ng-style ng-submit ng-switch ng-switch-when
syntax keyword  htmlArg contained ng-switch-default ng-transclude ng-view
"Input directives
syntax keyword  htmlArg contained ng-required ng-minlength ng-maxlength ng-pattern ng-trim ng-true-values ng-false-values ng-min ng-max

" http://docs.angularjs.org/guide/directive
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(app\|bind\|bind-html\|blur\|bind-template\|change\|checked\|class\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(class-even\|class-odd\|click\|cloak\|controller\|copy\|csp\|dblclick\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(disabled\|form\|hide\|href\|if\|include\|init\|jq\|keydown\|keypress\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(keyup\|list\|model\|model-options\|mousedown\|mouseenter\|mouseleave\|mousemove\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(mouseover\|mouseup\|non-bindable\|open\|options\|paste\|pluralize\|readonly\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(repeat\|selected\|show\|src\|srset\|style\|submit\|switch\|switch-when\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(switch-default\|transclude\|view\)/
syntax match    htmlArg contained /\(ng_\|ng:\|x-ng-\)\(required\|minlength\|maxlength\|pattern\|trim\|true-values\|false-values\|min\|max\)/

syntax keyword  htmlArg contained expression autoscroll count when offset on

syntax keyword  htmlTagName contained ng-form ng-include ng-pluralize ng-transclude ng-view
