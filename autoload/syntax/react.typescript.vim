" Vim syntax file
" Language:    React for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     15.4.2.1
" URL:         https://facebook.github.io/react/docs/react-api.html
" URL:         https://facebook.github.io/react/docs/react-component.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword typescriptReact      React containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptRDot
syntax match   typescriptRDot       contained /\./ nextgroup=typescriptRProps,typescriptRMethods

syntax keyword typescriptReact      ReactDOM containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptRDDot
syntax match   typescriptRDDot      contained /\./ nextgroup=typescriptRDMethods

syntax keyword typescriptReact      ReactDOMServer containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution nextgroup=typescriptRDSDot
syntax match   typescriptRDSDot     contained /\./ nextgroup=typescriptRDSMethods

" React
syntax keyword typescriptRProps     Component nextgroup=typescriptRCompMethods
syntax keyword typescriptRProps     PureComponent Children addons
syntax keyword typescriptRProps     PropTypes nextgroup=typescriptRPropDot
syntax match   typescriptRPropDot   contained /\./ nextgroup=typescriptRPropProps,typescriptRPropMethods

syntax keyword typescriptRMethods   createClass createElement createFactory
syntax keyword typescriptRMethods   cloneElement isValidElement

" ReactDOM
syntax keyword typescriptRDMethods  render unmountComponentAtNode findDOMNode

" ReactDOMServer
syntax keyword typescriptRDMethods  renderToString renderToStaticMarkup 

" React.Component
syntax keyword typescriptRCompMethods contained componentWillMount render componentDidMount
syntax keyword typescriptRCompMethods contained componentWillReceiveProps shouldComponentUpdate componentWillUpdate render componentDidUpdate
syntax keyword typescriptRCompMethods contained componentWillUnmount
syntax keyword typescriptRCompMethods contained setState forceUpdate
syntax keyword typescriptRCompProps   contained defaultProps displayName propTypes

" React.PropTypes
syntax keyword typescriptRPropProps   contained array bool func number object string symbol node element isRequired
syntax keyword typescriptRPropMethods contained instanceOf oneOf oneOfType arrayOf objectOf shape any


syntax cluster typescriptRFunctions   contains=typescriptRMethods,typescriptRDMethods,typescriptRCompMethods,typescriptRPropMethods
syntax cluster typescriptRAttrs       contains=typescriptRProps,typescriptRCompProps,typescriptRPropProps


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

  HiLink typescriptRProps          PreProc
  HiLink typescriptRDMethods       PreProc
  HiLink typescriptRCompMethods    PreProc
  HiLink typescriptRPropMethods    PreProc
  HiLink typescriptRProps          PreProc
  HiLink typescriptRCompProps      PreProc
  HiLink typescriptRPropProps      PreProc

  delcommand HiLink
endif
