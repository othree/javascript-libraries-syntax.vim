" Vim syntax file
" Language:    jQuery
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/02/01
" Version:     1.9
" URL:         http://api.jquery.com/

syn match   jQuery          containedin=ALL /jQuery\|\$/


syn match   jFunc           /\.\w\+(\@=/ contains=@jFunctions

syn cluster jFunctions      contains=jAjax,jAttributes,jCore,jCSS,jData,jDeferred,jDimensions,jEffects,jEvents,jManipulation,jMiscellaneous,jOffset,jProperties,jTraversing,jUtilities
syn keyword jAjax           containedin=ALL ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syn keyword jAjax           containedin=ALL param serialize serializeArray
syn keyword jAjax           containedin=ALL ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport
syn keyword jAjax           containedin=ALL get getJSON getScript load post
syn keyword jAttributes     containedin=ALL addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syn keyword jCallbacks      containedin=ALL add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syn keyword jCore           containedin=ALL holdReady noConflict when
syn keyword jCSS            containedin=ALL css cssHooks
syn keyword jData           containedin=ALL clearQueue data dequeue hasData queue removeData
syn keyword jDeferred       containedin=ALL Deferred always done fail notify pipe progress promise reject rejectWith resolved resolveWith notifyWith state then
syn keyword jDimensions     containedin=ALL height innerHeight innerWidth outerHeight outerWidth width
syn keyword jEffects        containedin=ALL hide show toggle
syn keyword jEffects        containedin=ALL animate delay stop
syn keyword jEffects        containedin=ALL fadeIn fadeOut fadeTo fadeToggle
syn keyword jEffects        containedin=ALL slideDown slideToggle slideUp
syn keyword jEvents         containedin=ALL error resize scroll
syn keyword jEvents         containedin=ALL ready unload
syn keyword jEvents         containedin=ALL bind delegate on off one proxy trigger triggerHandler unbind undelegate
syn keyword jEvents         containedin=ALL Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syn keyword jEvents         containedin=ALL blur change focus select submit
syn keyword jEvents         containedin=ALL focusin focusout keydown keypress keyup
syn keyword jEvents         containedin=ALL click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syn keyword jManipulation   containedin=ALL clone
syn keyword jManipulation   containedin=ALL unwrap wrap wrapAll wrapInner
syn keyword jManipulation   containedin=ALL append appendTo html preprend prependTo text
syn keyword jManipulation   containedin=ALL after before insertAfter insertBefore
syn keyword jManipulation   containedin=ALL detach empty remove
syn keyword jManipulation   containedin=ALL replaceAll replaceWith
syn keyword jMiscellaneous  containedin=ALL index size toArray
syn keyword jOffset         containedin=ALL offset offsetParent position scrollTop scrollLeft
syn keyword jProperties     containedin=ALL context fx.interval fx.off length selector support
syn keyword jTraversing     containedin=ALL eq filter first has is last map not slice
syn keyword jTraversing     containedin=ALL add andSelf contents end
syn keyword jTraversing     containedin=ALL children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings
syn keyword jUtilities      containedin=ALL each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique


syn region  javaScriptStringD          start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors
syn region  javaScriptStringS          start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javaScriptSpecial,@htmlPreproc,@jSelectors

syn cluster jSelectors      contains=jId,jClass,jOperators,jBasicFilters,jContentFilters,jVisibility,jChildFilters,jForms,jFormFilters
syn match   jId             contained /#[0-9A-Za-z_\-]\+/
syn match   jClass          contained /\.[0-9A-Za-z_\-]\+/
syn match   jOperators      contained /*\|>\|+\|-\|\~/
syn match   jBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lt\|not\|odd\)/
syn match   jChildFilters   contained /:\(first\|last\|nth\|only\)-child/
syn match   jContentFilters contained /:\(contains\|empty\|has\|parent\)/
syn match   jForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syn match   jVisibility     contained /:\(hidden\|visible\)/


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

  HiLink jQuery          Constant

  HiLink jAjax           PreProc
  HiLink jAttributes     PreProc
  HiLink jCallbacks      PreProc
  HiLink jCore           PreProc
  HiLink jCSS            PreProc
  HiLink jData           PreProc
  HiLink jDeferred       PreProc
  HiLink jDimensions     PreProc
  HiLink jEffects        PreProc
  HiLink jEvents         PreProc
  HiLink jManipulation   PreProc
  HiLink jMiscellaneous  PreProc
  HiLink jOffset         PreProc
  HiLink jProperties     PreProc
  HiLink jTraversing     PreProc
  HiLink jUtilities      PreProc

  HiLink jId             Identifier
  HiLink jClass          Constant
  HiLink jOperators      Special
  HiLink jBasicFilters   Statement
  HiLink jContentFilters Statement
  HiLink jVisibility     Statement
  HiLink jChildFilters   Statement
  HiLink jForms          Statement
  HiLink jFormFilters    Statement

  delcommand HiLink
endif
