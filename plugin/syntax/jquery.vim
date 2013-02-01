" Vim syntax file
" Language:    jQuery
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/01
" Version:     1.9
" URL:         http://api.jquery.com/

syn match   javascriptjQuery          containedin=ALL /jQuery\|\$/

syn match   javascriptQFunc           /\.\w\+(\@=/ contains=@javascriptQFunctions

syn cluster javascriptQFunctions      contains=javascriptQAjavascriptQax,javascriptQAttributes,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQProperties,javascriptQTraversing,javascriptQUtilities
syn keyword javascriptQAjax           containedin=ALL ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syn keyword javascriptQAjax           containedin=ALL param serialize serializeArray
syn keyword javascriptQAjax           containedin=ALL ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syn keyword javascriptQAjax           containedin=ALL get getJSON getScript load post
syn keyword javascriptQAttributes     containedin=ALL addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syn keyword javascriptQCallbacks      containedin=ALL add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syn keyword javascriptQCore           containedin=ALL holdReady noConflict when
syn keyword javascriptQCSS            containedin=ALL css cssHooks
syn keyword javascriptQData           containedin=ALL clearQueue data dequeue hasData queue removeData
syn keyword javascriptQDeferred       containedin=ALL Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syn keyword javascriptQDimensions     containedin=ALL height innerHeight innerWidth outerHeight outerWidth width
syn keyword javascriptQEffects        containedin=ALL hide show toggle
syn keyword javascriptQEffects        containedin=ALL animate delay stop
syn keyword javascriptQEffects        containedin=ALL fadeIn fadeOut fadeTo fadeToggle
syn keyword javascriptQEffects        containedin=ALL slideDown slideToggle slideUp
syn keyword javascriptQEvents         containedin=ALL error resize scroll
syn keyword javascriptQEvents         containedin=ALL ready unload
syn keyword javascriptQEvents         containedin=ALL bind delegate on off one proxy trigger triggerHandler unbind undelegate
syn keyword javascriptQEvents         containedin=ALL Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syn keyword javascriptQEvents         containedin=ALL blur change focus select submit
syn keyword javascriptQEvents         containedin=ALL focusin focusout keydown keypress keyup
syn keyword javascriptQEvents         containedin=ALL click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syn keyword javascriptQManipulation   containedin=ALL clone
syn keyword javascriptQManipulation   containedin=ALL unwrap wrap wrapAll wrapInner
syn keyword javascriptQManipulation   containedin=ALL append appendTo html preprend prependTo text
syn keyword javascriptQManipulation   containedin=ALL after before insertAfter insertBefore
syn keyword javascriptQManipulation   containedin=ALL detach empty remove
syn keyword javascriptQManipulation   containedin=ALL replaceAll replaceWith
syn keyword javascriptQMiscellaneous  containedin=ALL index size toArray
syn keyword javascriptQOffset         containedin=ALL offset offsetParent position scrollTop scrollLeft
syn keyword javascriptQProperties     containedin=ALL context fx.interval fx.off length selector support
syn keyword javascriptQTraversing     containedin=ALL eq filter first has is last map not slice
syn keyword javascriptQTraversing     containedin=ALL add andSelf contents end
syn keyword javascriptQTraversing     containedin=ALL children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syn keyword javascriptQUtilities      containedin=ALL each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syn region  javaScriptStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors
syn region  javaScriptStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors

syn cluster javascriptjSelectors      contains=jId,jClass,jOperators,jBasicFilters,jContentFilters,jVisibility,jChildFilters,jForms,jFormFilters
syn match   javascriptjId             contained /#[0-9A-Za-z_\-]\+/
syn match   javascriptjClass          contained /\.[0-9A-Za-z_\-]\+/
syn match   javascriptjOperators      contained /*\|>\|+\|-\|\~/
syn match   javascriptjBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lt\|not\|odd\)/
syn match   javascriptjChildFilters   contained /:\(first\|last\|nth\|only\)-child/
syn match   javascriptjContentFilters contained /:\(contains\|empty\|has\|parent\)/
syn match   javascriptjForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syn match   javascriptjVisibility     contained /:\(hidden\|visible\)/


syn match   coffeejQuery          containedin=ALL /jQuery\|\$/

syn match   coffeeQFunc           /\.\w\+(\@=/ contains=@javascriptQFunctions

syn cluster coffeeQFunctions      contains=javascriptQAjavascriptQax,javascriptQAttributes,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQProperties,javascriptQTraversing,javascriptQUtilities
syn keyword coffeeQAjax           containedin=ALL ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syn keyword coffeeQAjax           containedin=ALL param serialize serializeArray
syn keyword coffeeQAjax           containedin=ALL ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syn keyword coffeeQAjax           containedin=ALL get getJSON getScript load post
syn keyword coffeeQAttributes     containedin=ALL addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syn keyword coffeeQCallbacks      containedin=ALL add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syn keyword coffeeQCore           containedin=ALL holdReady noConflict when
syn keyword coffeeQCSS            containedin=ALL css cssHooks
syn keyword coffeeQData           containedin=ALL clearQueue data dequeue hasData queue removeData
syn keyword coffeeQDeferred       containedin=ALL Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syn keyword coffeeQDimensions     containedin=ALL height innerHeight innerWidth outerHeight outerWidth width
syn keyword coffeeQEffects        containedin=ALL hide show toggle
syn keyword coffeeQEffects        containedin=ALL animate delay stop
syn keyword coffeeQEffects        containedin=ALL fadeIn fadeOut fadeTo fadeToggle
syn keyword coffeeQEffects        containedin=ALL slideDown slideToggle slideUp
syn keyword coffeeQEvents         containedin=ALL error resize scroll
syn keyword coffeeQEvents         containedin=ALL ready unload
syn keyword coffeeQEvents         containedin=ALL bind delegate on off one proxy trigger triggerHandler unbind undelegate
syn keyword coffeeQEvents         containedin=ALL Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syn keyword coffeeQEvents         containedin=ALL blur change focus select submit
syn keyword coffeeQEvents         containedin=ALL focusin focusout keydown keypress keyup
syn keyword coffeeQEvents         containedin=ALL click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syn keyword coffeeQManipulation   containedin=ALL clone
syn keyword coffeeQManipulation   containedin=ALL unwrap wrap wrapAll wrapInner
syn keyword coffeeQManipulation   containedin=ALL append appendTo html preprend prependTo text
syn keyword coffeeQManipulation   containedin=ALL after before insertAfter insertBefore
syn keyword coffeeQManipulation   containedin=ALL detach empty remove
syn keyword coffeeQManipulation   containedin=ALL replaceAll replaceWith
syn keyword coffeeQMiscellaneous  containedin=ALL index size toArray
syn keyword coffeeQOffset         containedin=ALL offset offsetParent position scrollTop scrollLeft
syn keyword coffeeQProperties     containedin=ALL context fx.interval fx.off length selector support
syn keyword coffeeQTraversing     containedin=ALL eq filter first has is last map not slice
syn keyword coffeeQTraversing     containedin=ALL add andSelf contents end
syn keyword coffeeQTraversing     containedin=ALL children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syn keyword coffeeQUtilities      containedin=ALL each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syn match   lsjQuery          containedin=ALL /jQuery\|\$/

syn match   lsQFunc           /\.\w\+(\@=/ contains=@javascriptQFunctions

syn cluster lsQFunctions      contains=javascriptQAjavascriptQax,javascriptQAttributes,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQProperties,javascriptQTraversing,javascriptQUtilities
syn keyword lsQAjax           containedin=ALL ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syn keyword lsQAjax           containedin=ALL param serialize serializeArray
syn keyword lsQAjax           containedin=ALL ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syn keyword lsQAjax           containedin=ALL get getJSON getScript load post
syn keyword lsQAttributes     containedin=ALL addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syn keyword lsQCallbacks      containedin=ALL add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syn keyword lsQCore           containedin=ALL holdReady noConflict when
syn keyword lsQCSS            containedin=ALL css cssHooks
syn keyword lsQData           containedin=ALL clearQueue data dequeue hasData queue removeData
syn keyword lsQDeferred       containedin=ALL Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syn keyword lsQDimensions     containedin=ALL height innerHeight innerWidth outerHeight outerWidth width
syn keyword lsQEffects        containedin=ALL hide show toggle
syn keyword lsQEffects        containedin=ALL animate delay stop
syn keyword lsQEffects        containedin=ALL fadeIn fadeOut fadeTo fadeToggle
syn keyword lsQEffects        containedin=ALL slideDown slideToggle slideUp
syn keyword lsQEvents         containedin=ALL error resize scroll
syn keyword lsQEvents         containedin=ALL ready unload
syn keyword lsQEvents         containedin=ALL bind delegate on off one proxy trigger triggerHandler unbind undelegate
syn keyword lsQEvents         containedin=ALL Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syn keyword lsQEvents         containedin=ALL blur change focus select submit
syn keyword lsQEvents         containedin=ALL focusin focusout keydown keypress keyup
syn keyword lsQEvents         containedin=ALL click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syn keyword lsQManipulation   containedin=ALL clone
syn keyword lsQManipulation   containedin=ALL unwrap wrap wrapAll wrapInner
syn keyword lsQManipulation   containedin=ALL append appendTo html preprend prependTo text
syn keyword lsQManipulation   containedin=ALL after before insertAfter insertBefore
syn keyword lsQManipulation   containedin=ALL detach empty remove
syn keyword lsQManipulation   containedin=ALL replaceAll replaceWith
syn keyword lsQMiscellaneous  containedin=ALL index size toArray
syn keyword lsQOffset         containedin=ALL offset offsetParent position scrollTop scrollLeft
syn keyword lsQProperties     containedin=ALL context fx.interval fx.off length selector support
syn keyword lsQTraversing     containedin=ALL eq filter first has is last map not slice
syn keyword lsQTraversing     containedin=ALL add andSelf contents end
syn keyword lsQTraversing     containedin=ALL children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syn keyword lsQUtilities      containedin=ALL each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


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
