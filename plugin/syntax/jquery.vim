" Vim syntax file
" Language:    jQuery
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/01
" Version:     1.9
" URL:         http://api.jquery.com/

syntax match   javascriptjQuery          containedin=ALL /jQuery\|\$/

syntax cluster javascriptQFunctions      contains=javascriptQAjax,javascriptQAttributes,javascriptQCallbacks,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQProperties,javascriptQTraversing,javascriptQUtilities
syntax keyword javascriptQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword javascriptQAjax           contained param serialize serializeArray
syntax keyword javascriptQAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syntax keyword javascriptQAjax           contained get getJSON getScript load post
syntax keyword javascriptQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword javascriptQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword javascriptQCore           contained holdReady noConflict when
syntax keyword javascriptQCSS            contained css cssHooks
syntax keyword javascriptQData           contained clearQueue data dequeue hasData queue removeData
syntax keyword javascriptQDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword javascriptQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword javascriptQEffects        contained hide show toggle
syntax keyword javascriptQEffects        contained animate delay stop
syntax keyword javascriptQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword javascriptQEffects        contained slideDown slideToggle slideUp
syntax keyword javascriptQEvents         contained error resize scroll
syntax keyword javascriptQEvents         contained ready unload
syntax keyword javascriptQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword javascriptQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword javascriptQEvents         contained blur change focus select submit
syntax keyword javascriptQEvents         contained focusin focusout keydown keypress keyup
syntax keyword javascriptQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword javascriptQManipulation   contained clone
syntax keyword javascriptQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword javascriptQManipulation   contained append appendTo html preprend prependTo text
syntax keyword javascriptQManipulation   contained after before insertAfter insertBefore
syntax keyword javascriptQManipulation   contained detach empty remove
syntax keyword javascriptQManipulation   contained replaceAll replaceWith
syntax keyword javascriptQMiscellaneous  contained index size toArray
syntax keyword javascriptQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword javascriptQProperties     contained context fx.interval fx.off length selector support
syntax keyword javascriptQTraversing     contained eq filter first has is last map not slice
syntax keyword javascriptQTraversing     contained add andSelf contents end
syntax keyword javascriptQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syntax keyword javascriptQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syntax region  javaScriptStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors
syntax region  javaScriptStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors

syntax cluster javascriptjSelectors      contains=jId,jClass,jOperators,jBasicFilters,jContentFilters,jVisibility,jChildFilters,jForms,jFormFilters
syntax match   javascriptjId             contained /#[0-9A-Za-z_\-]\+/
syntax match   javascriptjClass          contained /\.[0-9A-Za-z_\-]\+/
syntax match   javascriptjOperators      contained /*\|>\|+\|-\|\~/
syntax match   javascriptjBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lt\|not\|odd\)/
syntax match   javascriptjChildFilters   contained /:\(first\|last\|nth\|only\)-child/
syntax match   javascriptjContentFilters contained /:\(contains\|empty\|has\|parent\)/
syntax match   javascriptjForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syntax match   javascriptjVisibility     contained /:\(hidden\|visible\)/


syntax match   coffeejQuery          containedin=ALL /jQuery\|\$/

syntax cluster coffeeQFunctions      contains=coffeeQAjax,coffeeQAttributes,lsQCallbacks,coffeeQCore,coffeeQCSS,coffeeQData,coffeeQDeferred,coffeeQDimensions,coffeeQEffects,coffeeQEvents,coffeeQManipulation,coffeeQMiscellaneous,coffeeQOffset,coffeeQProperties,coffeeQTraversing,coffeeQUtilities
syntax keyword coffeeQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword coffeeQAjax           contained param serialize serializeArray
syntax keyword coffeeQAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syntax keyword coffeeQAjax           contained get getJSON getScript load post
syntax keyword coffeeQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword coffeeQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword coffeeQCore           contained holdReady noConflict when
syntax keyword coffeeQCSS            contained css cssHooks
syntax keyword coffeeQData           contained clearQueue data dequeue hasData queue removeData
syntax keyword coffeeQDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword coffeeQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword coffeeQEffects        contained hide show toggle
syntax keyword coffeeQEffects        contained animate delay stop
syntax keyword coffeeQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword coffeeQEffects        contained slideDown slideToggle slideUp
syntax keyword coffeeQEvents         contained error resize scroll
syntax keyword coffeeQEvents         contained ready unload
syntax keyword coffeeQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword coffeeQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword coffeeQEvents         contained blur change focus select submit
syntax keyword coffeeQEvents         contained focusin focusout keydown keypress keyup
syntax keyword coffeeQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword coffeeQManipulation   contained clone
syntax keyword coffeeQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword coffeeQManipulation   contained append appendTo html preprend prependTo text
syntax keyword coffeeQManipulation   contained after before insertAfter insertBefore
syntax keyword coffeeQManipulation   contained detach empty remove
syntax keyword coffeeQManipulation   contained replaceAll replaceWith
syntax keyword coffeeQMiscellaneous  contained index size toArray
syntax keyword coffeeQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword coffeeQProperties     contained context fx.interval fx.off length selector support
syntax keyword coffeeQTraversing     contained eq filter first has is last map not slice
syntax keyword coffeeQTraversing     contained add andSelf contents end
syntax keyword coffeeQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syntax keyword coffeeQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syntax match   lsjQuery          containedin=ALL /jQuery\|\$/

syntax cluster lsQFunctions      contains=lsQAjax,lsQAttributes,lsQCallbacks,lsQCore,lsQCSS,lsQData,lsQDeferred,lsQDimensions,lsQEffects,lsQEvents,lsQManipulation,lsQMiscellaneous,lsQOffset,lsQProperties,lsQTraversing,lsQUtilities
syntax keyword lsQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword lsQAjax           contained param serialize serializeArray
syntax keyword lsQAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syntax keyword lsQAjax           contained get getJSON getScript load post
syntax keyword lsQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword lsQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword lsQCore           contained holdReady noConflict when
syntax keyword lsQCSS            contained css cssHooks
syntax keyword lsQData           contained clearQueue data dequeue hasData queue removeData
syntax keyword lsQDeferred       contained Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword lsQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword lsQEffects        contained hide show toggle
syntax keyword lsQEffects        contained animate delay stop
syntax keyword lsQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword lsQEffects        contained slideDown slideToggle slideUp
syntax keyword lsQEvents         contained error resize scroll
syntax keyword lsQEvents         contained ready unload
syntax keyword lsQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword lsQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword lsQEvents         contained blur change focus select submit
syntax keyword lsQEvents         contained focusin focusout keydown keypress keyup
syntax keyword lsQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword lsQManipulation   contained clone
syntax keyword lsQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword lsQManipulation   contained append appendTo html preprend prependTo text
syntax keyword lsQManipulation   contained after before insertAfter insertBefore
syntax keyword lsQManipulation   contained detach empty remove
syntax keyword lsQManipulation   contained replaceAll replaceWith
syntax keyword lsQMiscellaneous  contained index size toArray
syntax keyword lsQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword lsQProperties     contained context fx.interval fx.off length selector support
syntax keyword lsQTraversing     contained eq filter first has is last map not slice
syntax keyword lsQTraversing     contained add andSelf contents end
syntax keyword lsQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syntax keyword lsQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_lisp_syntax_inits")
  if version < 508
    let did_lisp_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptjQuery          Constant

  HiLink javascriptQAjax           PreProc
  HiLink javascriptQAttributes     PreProc
  HiLink javascriptQCallbacks      PreProc
  HiLink javascriptQCore           PreProc
  HiLink javascriptQCSS            PreProc
  HiLink javascriptQData           PreProc
  HiLink javascriptQDeferred       PreProc
  HiLink javascriptQDimensions     PreProc
  HiLink javascriptQEffects        PreProc
  HiLink javascriptQEvents         PreProc
  HiLink javascriptQManipulation   PreProc
  HiLink javascriptQMiscellaneous  PreProc
  HiLink javascriptQOffset         PreProc
  HiLink javascriptQProperties     PreProc
  HiLink javascriptQTraversing     PreProc
  HiLink javascriptQUtilities      PreProc

  HiLink javascriptjId             Identifier
  HiLink javascriptjClass          Constant
  HiLink javascriptjOperators      Special
  HiLink javascriptjBasicFilters   Statement
  HiLink javascriptjContentFilters Statement
  HiLink javascriptjVisibility     Statement
  HiLink javascriptjChildFilters   Statement
  HiLink javascriptjForms          Statement
  HiLink javascriptjFormFilters    Statement

  HiLink coffeejQuery          Constant

  HiLink coffeeQAjax           PreProc
  HiLink coffeeQAttributes     PreProc
  HiLink coffeeQCallbacks      PreProc
  HiLink coffeeQCore           PreProc
  HiLink coffeeQCSS            PreProc
  HiLink coffeeQData           PreProc
  HiLink coffeeQDeferred       PreProc
  HiLink coffeeQDimensions     PreProc
  HiLink coffeeQEffects        PreProc
  HiLink coffeeQEvents         PreProc
  HiLink coffeeQManipulation   PreProc
  HiLink coffeeQMiscellaneous  PreProc
  HiLink coffeeQOffset         PreProc
  HiLink coffeeQProperties     PreProc
  HiLink coffeeQTraversing     PreProc
  HiLink coffeeQUtilities      PreProc

  HiLink lsjQuery          Constant

  HiLink lsQAjax           PreProc
  HiLink lsQAttributes     PreProc
  HiLink lsQCallbacks      PreProc
  HiLink lsQCore           PreProc
  HiLink lsQCSS            PreProc
  HiLink lsQData           PreProc
  HiLink lsQDeferred       PreProc
  HiLink lsQDimensions     PreProc
  HiLink lsQEffects        PreProc
  HiLink lsQEvents         PreProc
  HiLink lsQManipulation   PreProc
  HiLink lsQMiscellaneous  PreProc
  HiLink lsQOffset         PreProc
  HiLink lsQProperties     PreProc
  HiLink lsQTraversing     PreProc
  HiLink lsQUtilities      PreProc

  delcommand HiLink
endif
