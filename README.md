# javascript-libraries-syntax.vim

Syntax file for javascript libraries. Supports javascript libraris I am using (patches welcome).
Should works well with other JavaScript syntax file. [SyntaxComplete][] also works well on all 
supported languages.

## Libraries

- [jQuery](http://jquery.com/)
- [underscore.js](http://underscorejs.org/)
- [Backbone.js](http://backbonejs.org/)
- [prelude.ls](http://gkz.github.com/prelude-ls/)

## File Types

- JavaScript
- [CoffeeScript](http://coffeescript.org/)
- [LiveScript](http://livescript.net/)

Will be more when SyntaxComplete has new version.

## Install

Use [pathogen][] or [vundle][].

## Todo

- Support option to choose libraries
- Support feature version of SyntaxComplete
- Possibility to set used libraries in project
- Add YUI

## Known Issue

SyntaxComplete only accept groups with filetype prefixed. For example, 'javascript' files.
Only keywords in groups which's name is /javascript.*/ will be available. So to make it
possible to use SyntaxComplete on CoffeeScript, LiveScript and other compile to JavaScript
languages. We must redefine all syntax many times, with different name prefix. SyntaxComplete
might have new feature to support a user define pattern for group name to include. 
All repeat defination will be removed when SyntaxComplete supports this feature.

## Changes

### Version 0.1
- 0.1 First release.

## Credits

- Bruno Michel, [syntax of jquery][jquery.vim]

[jquery.vim]:http://www.vim.org/scripts/script.php?script_id=2416

## License

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

[SyntaxComplete]:http://www.vim.org/scripts/script.php?script_id=3172
[pathogen]:http://www.vim.org/scripts/script.php?script_id=2332
[vundle]:https://github.com/gmarik/vundle
