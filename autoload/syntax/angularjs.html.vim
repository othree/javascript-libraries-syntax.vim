" Vim syntax file
" Language:    AngularJS for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/21
" Version:     1.1.13.1
" URL:         http://angularjs.org/

syntax match   htmlArg contained "\<ng-\(app\|bind\|bind-html-unsafe\|bind-template\|change\|checked\|class\)\>"
syntax match   htmlArg contained "\<ng-\(class-even\|class-odd\|click\|cloak\|controller\|csp\|dblclick\)\>"
syntax match   htmlArg contained "\<ng-\(disable\|form\|hide\|href\|include\|init\|keydown\|keypress\)\>"
syntax match   htmlArg contained "\<ng-\(key-up\|list\|model\|mousedown\|mouseenter\|mouseleave\|mousemove\)\>"
syntax match   htmlArg contained "\<ng-\(mouseover\|mouseup\|multiple\|non-bindable\|pluralize\|readonly\|\)\>"
syntax match   htmlArg contained "\<ng-\(repeat\|selected\|show\|src\|style\|submit\|switch\|transclude\)\>"
syntax keyword htmlArg contained expression



