" Vim syntax file
" Language:    React for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/29
" Version:     0.12.0
" URL:         https://facebook.github.io/react/docs/top-level-api.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword typescriptReact React containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution

syntax keyword typescriptRTop contained createClass render unmountComponentAtNode renderToString
syntax keyword typescriptRTop contained renderToStaticMarkup isValidElement DOM PropTypes
syntax keyword typescriptRTop contained initializeTouchEvents Children map forEach count only
syntax keyword typescriptRComponent contained setState replaceState forceUpdate getDOMNode
syntax keyword typescriptRComponent contained isMounted setProps replaceProps

syntax cluster typescriptRProp      contains=typescriptRTop,typescriptRComponent


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_typescript_syntax_inits")
  if version < 508
    let did_jquery_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptReact           Constant

  HiLink typescriptRTop            PreProc
  HiLink typescriptRComponent      PreProc

  delcommand HiLink
endif
