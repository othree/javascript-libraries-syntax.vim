" Vim syntax file
" Language:    React for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     15.4.2.1
" URL:         https://facebook.github.io/react/docs/react-api.html
" URL:         https://facebook.github.io/react/docs/react-component.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword javascriptReact      React containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptRDot
syntax match   javascriptRDot       contained /\./ nextgroup=javascriptRProps,javascriptRMethods

syntax keyword javascriptReact      ReactDOM containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptRDDot
syntax match   javascriptRDDot      contained /\./ nextgroup=javascriptRDMethods

syntax keyword javascriptReact      ReactDOMServer containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution nextgroup=javascriptRDSDot
syntax match   javascriptRDSDot     contained /\./ nextgroup=javascriptRDSMethods

" React
syntax keyword javascriptRProps     Component nextgroup=javascriptRCompMethods
syntax keyword javascriptRProps     PureComponent Children addons
syntax keyword javascriptRProps     PropTypes nextgroup=javascriptRPropDot
syntax match   javascriptRPropDot   contained /\./ nextgroup=javascriptRPropProps,javascriptRPropMethods

syntax keyword javascriptRMethods   createClass createElement createFactory
syntax keyword javascriptRMethods   cloneElement isValidElement

" ReactDOM
syntax keyword javascriptRDMethods  render unmountComponentAtNode findDOMNode

" ReactDOMServer
syntax keyword javascriptRDMethods  renderToString renderToStaticMarkup 

" React.Component
syntax keyword javascriptRCompMethods contained componentWillMount render componentDidMount
syntax keyword javascriptRCompMethods contained componentWillReceiveProps shouldComponentUpdate componentWillUpdate render componentDidUpdate
syntax keyword javascriptRCompMethods contained componentWillUnmount
syntax keyword javascriptRCompMethods contained setState forceUpdate
syntax keyword javascriptRCompProps   contained defaultProps displayName propTypes

" React.PropTypes
syntax keyword javascriptRPropProps   contained array bool func number object string symbol node element isRequired
syntax keyword javascriptRPropMethods contained instanceOf oneOf oneOfType arrayOf objectOf shape any


syntax cluster javascriptRFunctions   contains=javascriptRMethods,javascriptRDMethods,javascriptRCompMethods,javascriptRPropMethods
syntax cluster javascriptRAttrs       contains=javascriptRProps,javascriptRCompProps,javascriptRPropProps


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

  HiLink javascriptRProps          PreProc
  HiLink javascriptRDMethods       PreProc
  HiLink javascriptRCompMethods    PreProc
  HiLink javascriptRPropMethods    PreProc
  HiLink javascriptRProps          PreProc
  HiLink javascriptRCompProps      PreProc
  HiLink javascriptRPropProps      PreProc

  delcommand HiLink
endif
