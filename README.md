javascript-libraries-syntax.vim
===============================

Syntax file for JavaScript libraries. Supports JavaScript libraries I am using (patches welcome).
Should work well with other JavaScript syntax files. [SyntaxComplete][] also works well on all 
supported languages.

[SyntaxComplete]:http://www.vim.org/scripts/script.php?script_id=3172

Libraries
---------

* [jQuery](http://jquery.com/)
* [underscore.js](http://underscorejs.org/)
* [lo-dash](http://lodash.com/)
* [Backbone.js](http://backbonejs.org/)
* [prelude.ls](http://gkz.github.com/prelude-ls/)
* [AngularJS](http://angularjs.org/)
* [AngularUI](http://angular-ui.github.io)
* [AngularUI Router](http://angular-ui.github.io/ui-router/)
* [React](https://facebook.github.io/react/)
* [Flux](https://facebook.github.io/flux/)
* [RequireJS](http://requirejs.org/)
* [Sugar.js](http://sugarjs.com/)
* [Jasmine](https://jasmine.github.io/)
* [Chai](http://chaijs.com/)
* [Handlebars](http://handlebarsjs.com/)
* [Ramda](http://ramdajs.com/)
* [Vue](https://vuejs.org/)
* [d3](https://d3js.org/)

File Types
----------

* JavaScript
* [CoffeeScript](http://coffeescript.org/)
* [LiveScript](http://livescript.net/)
* [TypeScript](http://www.typescriptlang.org/)

Install
-------

Use [pathogen][] or [vundle][] is recommended.

[pathogen]:http://www.vim.org/scripts/script.php?script_id=2332
[vundle]:https://github.com/gmarik/vundle

Config
------

You can use g:used_javascript_libs to setup used libraries, ex:

```viml
let g:used_javascript_libs = 'underscore,backbone'
```

Support libs id:

* jQuery: jquery
* underscore.js: underscore
* Lo-Dash: underscore
* Backbone.js: backbone
* prelude.ls: prelude
* AngularJS: angularjs
* AngularUI: angularui
* AngularUI Router: angularuirouter
* React: react
* Flux: flux
* RequireJS: requirejs
* Sugar.js: sugar
* Jasmine: jasmine
* Chai: chai
* Handlebars: handlebars
* Ramda: ramda
* Vue.js: vue
* d3.js: d3

Default lib set is: `jquery,underscore,backbone`

You can use [local vimrc][] to setup libraries used in project. Sample code for local vimrc:

```viml
autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
```

[local vimrc]:https://github.com/MarcWeber/vim-addon-local-vimrc

Todo
----

* Support future version of SyntaxComplete

Known Issue
-----------

SyntaxComplete only accept groups with filetype prefixed. For example, 'javascript' files.
Only keywords in groups which's name matches /javascript.*/ will be available. So to make it
possible to use SyntaxComplete on CoffeeScript, LiveScript and other compile to JavaScript
languages. We must redefine all syntax many times, with different name prefix. SyntaxComplete
might have new feature to support a user define pattern for group name to include. 
All repeat defination will be removed when SyntaxComplete supports this feature.

Changes
-------

### Version 0.6
* Add Vue.js
* Add d3.js

### Version 0.5
* Add Ramda

### Version 0.4
* Add React, Flux, Chai, Handlbars
* Default lib set
* Bug fix

### Version 0.3.6
* Add Jasmine, AngularUI
* Update underscore, jQuery

### Version 0.3.5
* Add sugar.js support
* b:current_syntax to detect current syntax

### Version 0.3.4
* Add $ to iskeyword for jQuery and angular (Issue #4)
* Support linecomment (Issue #6)
* Add augularjs HTML custom attribute support

### Version 0.3.3
* No strict mode, better compatibility.

### Version 0.3.2
* Fix coffee script compatible
* Update jQuery syntax to latest version
* Support lo-dash
* jQuery selector update
* Minor bug fix

### Version 0.3.1
* Fix performance issue

### Version 0.3
* Supports AngularJS, RequireJS
* Support TypeScript
* Setup used libraries
* Better init way

### Version 0.2
* Supports library selection

### Version 0.1
* First release.

Credits
-------

* Bruno Michel, [jQuery : Syntax file for jQuery][jquery.vim]
* [Peter Renström][], for [summarize and explain AngularJS stuff][issue1].
* [Benedict Aas][], for [summarize Ramda stuff][issue34]

[jquery.vim]:http://www.vim.org/scripts/script.php?script_id=2416
[Peter Renström]:https://github.com/renstrom
[issue1]:https://github.com/othree/javascript-libraries-syntax.vim/issues/1
[Benedict Aas]:https://github.com/Shou
[issue34]:https://github.com/othree/javascript-libraries-syntax.vim/issues/34#issuecomment-216404353

License
-------

Copyright (c) 2013 Wei-Ko Kao

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


