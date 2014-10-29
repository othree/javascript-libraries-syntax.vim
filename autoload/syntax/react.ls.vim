" Vim syntax file
" Language:    React for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2014/10/29
" Version:     0.12.0
" URL:         https://facebook.github.io/react/docs/top-level-api.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword lsReact React containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution

syntax keyword lsRTop contained createClass render unmountComponentAtNode renderToString
syntax keyword lsRTop contained renderToStaticMarkup isValidElement DOM PropTypes
syntax keyword lsRTop contained initializeTouchEvents Children map forEach count only
syntax keyword lsRComponent contained setState replaceState forceUpdate getDOMNode
syntax keyword lsRComponent contained isMounted setProps replaceProps

syntax cluster lsRProp      contains=lsRTop,lsRComponent


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_ls_syntax_inits")
  if version < 508
    let did_jquery_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsReact           Constant

  HiLink lsRTop            PreProc
  HiLink lsRComponent      PreProc

  delcommand HiLink
endif
