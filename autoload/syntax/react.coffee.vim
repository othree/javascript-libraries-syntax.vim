" Vim syntax file
" Language:    React for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     15.4.2.1
" URL:         https://facebook.github.io/react/docs/react-api.html
" URL:         https://facebook.github.io/react/docs/react-component.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword coffeeReact      React containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeRDot
syntax match   coffeeRDot       contained /\./ nextgroup=coffeeRProps,coffeeRMethods

syntax keyword coffeeReact      ReactDOM containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeRDDot
syntax match   coffeeRDDot      contained /\./ nextgroup=coffeeRDMethods

syntax keyword coffeeReact      ReactDOMServer containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution nextgroup=coffeeRDSDot
syntax match   coffeeRDSDot     contained /\./ nextgroup=coffeeRDSMethods

" React
syntax keyword coffeeRProps     Component nextgroup=coffeeRCompMethods
syntax keyword coffeeRProps     PureComponent Children addons
syntax keyword coffeeRProps     PropTypes nextgroup=coffeeRPropDot
syntax match   coffeeRPropDot   contained /\./ nextgroup=coffeeRPropProps,coffeeRPropMethods

syntax keyword coffeeRMethods   createClass createElement createFactory
syntax keyword coffeeRMethods   cloneElement isValidElement

" ReactDOM
syntax keyword coffeeRDMethods  render unmountComponentAtNode findDOMNode

" ReactDOMServer
syntax keyword coffeeRDMethods  renderToString renderToStaticMarkup 

" React.Component
syntax keyword coffeeRCompMethods contained componentWillMount render componentDidMount
syntax keyword coffeeRCompMethods contained componentWillReceiveProps shouldComponentUpdate componentWillUpdate render componentDidUpdate
syntax keyword coffeeRCompMethods contained componentWillUnmount
syntax keyword coffeeRCompMethods contained setState forceUpdate
syntax keyword coffeeRCompProps   contained defaultProps displayName propTypes

" React.PropTypes
syntax keyword coffeeRPropProps   contained array bool func number object string symbol node element isRequired
syntax keyword coffeeRPropMethods contained instanceOf oneOf oneOfType arrayOf objectOf shape any


syntax cluster coffeeRFunctions   contains=coffeeRMethods,coffeeRDMethods,coffeeRCompMethods,coffeeRPropMethods
syntax cluster coffeeRAttrs       contains=coffeeRProps,coffeeRCompProps,coffeeRPropProps


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

  HiLink coffeeRProps          PreProc
  HiLink coffeeRDMethods       PreProc
  HiLink coffeeRCompMethods    PreProc
  HiLink coffeeRPropMethods    PreProc
  HiLink coffeeRProps          PreProc
  HiLink coffeeRCompProps      PreProc
  HiLink coffeeRPropProps      PreProc

  delcommand HiLink
endif
