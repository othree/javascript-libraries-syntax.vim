" Vim syntax file
" Language:    React for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/29
" Version:     0.12.0
" URL:         https://facebook.github.io/react/docs/top-level-api.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword coffeeReact React containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution

syntax keyword coffeeRTop contained createClass render unmountComponentAtNode renderToString
syntax keyword coffeeRTop contained renderToStaticMarkup isValidElement DOM PropTypes
syntax keyword coffeeRTop contained initializeTouchEvents Children map forEach count only
syntax keyword coffeeRComponent contained setState replaceState forceUpdate getDOMNode
syntax keyword coffeeRComponent contained isMounted setProps replaceProps

syntax cluster coffeeRProp      contains=coffeeRTop,coffeeRComponent


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_coffee_syntax_inits")
  if version < 508
    let did_jquery_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeReact           Constant

  HiLink coffeeRTop            PreProc
  HiLink coffeeRComponent      PreProc

  delcommand HiLink
endif
