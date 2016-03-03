" Vim syntax file
" Language:    React for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/29
" Version:     0.12.0
" URL:         https://facebook.github.io/react/docs/top-level-api.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword javascriptReact React ReactDOM containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution

syntax keyword javascriptRTop contained createClass render unmountComponentAtNode renderToString
syntax keyword javascriptRTop contained renderToStaticMarkup isValidElement DOM PropTypes
syntax keyword javascriptRTop contained initializeTouchEvents Children map forEach count only
syntax keyword javascriptRComponent contained setState replaceState forceUpdate getDOMNode
syntax keyword javascriptRComponent contained isMounted setProps replaceProps

syntax cluster javascriptRProp      contains=javascriptRTop,javascriptRComponent


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_javascript_syntax_inits")
  if version < 508
    let did_jquery_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptReact           Constant

  HiLink javascriptRTop            PreProc
  HiLink javascriptRComponent      PreProc

  delcommand HiLink
endif
