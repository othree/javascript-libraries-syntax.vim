" Vim syntax file
" Language:    React for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2017/03/29
" Version:     15.4.2.1
" URL:         https://facebook.github.io/react/docs/react-api.html
" URL:         https://facebook.github.io/react/docs/react-component.html
" URL:         https://facebook.github.io/react/docs/component-api.html

syntax keyword lsReact      React containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsRDot
syntax match   lsRDot       contained /\./ nextgroup=lsRProps,lsRMethods

syntax keyword lsReact      ReactDOM containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsRDDot
syntax match   lsRDDot      contained /\./ nextgroup=lsRDMethods

syntax keyword lsReact      ReactDOMServer containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution nextgroup=lsRDSDot
syntax match   lsRDSDot     contained /\./ nextgroup=lsRDSMethods

" React
syntax keyword lsRProps     Component nextgroup=lsRCompMethods
syntax keyword lsRProps     PureComponent Children addons
syntax keyword lsRProps     PropTypes nextgroup=lsRPropDot
syntax match   lsRPropDot   contained /\./ nextgroup=lsRPropProps,lsRPropMethods

syntax keyword lsRMethods   createClass createElement createFactory
syntax keyword lsRMethods   cloneElement isValidElement

" ReactDOM
syntax keyword lsRDMethods  render unmountComponentAtNode findDOMNode

" ReactDOMServer
syntax keyword lsRDMethods  renderToString renderToStaticMarkup 

" React.Component
syntax keyword lsRCompMethods contained componentWillMount render componentDidMount
syntax keyword lsRCompMethods contained componentWillReceiveProps shouldComponentUpdate componentWillUpdate render componentDidUpdate
syntax keyword lsRCompMethods contained componentWillUnmount
syntax keyword lsRCompMethods contained setState forceUpdate
syntax keyword lsRCompProps   contained defaultProps displayName propTypes

" React.PropTypes
syntax keyword lsRPropProps   contained array bool func number object string symbol node element isRequired
syntax keyword lsRPropMethods contained instanceOf oneOf oneOfType arrayOf objectOf shape any


syntax cluster lsRFunctions   contains=lsRMethods,lsRDMethods,lsRCompMethods,lsRPropMethods
syntax cluster lsRAttrs       contains=lsRProps,lsRCompProps,lsRPropProps


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

  HiLink lsRProps          PreProc
  HiLink lsRDMethods       PreProc
  HiLink lsRCompMethods    PreProc
  HiLink lsRPropMethods    PreProc
  HiLink lsRProps          PreProc
  HiLink lsRCompProps      PreProc
  HiLink lsRPropProps      PreProc

  delcommand HiLink
endif
