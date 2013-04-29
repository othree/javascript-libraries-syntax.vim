" Vim syntax file
" Language:    jQuery
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2013/04/29
" Version:     1.9.0
" URL:         http://api.jquery.com/

syntax keyword jquery               containedin=ALLBUT,@stringcomment jQuery $ nextgroup=jqueryDot
syntax match   jqueryDot            contained /\./ nextgroup=@jqueryGlobals
syntax match   jqueryDot            contained /([^)]*)\./ nextgroup=@jqueryFunctions

" jQuery.*
syntax cluster jqueryGlobals        contains=jqueryCore,jqueryCoreObj,jqueryCoreData,jqueryUtilities,jqueryProperties
syntax keyword jqueryCore           contained holdReady noConflict when
syntax keyword jqueryCoreObj        contained Callback Deferred
syntax keyword jqueryCoreData       contained data dequeue hasData queue removeData
syntax keyword jqueryCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword jqueryProperties     contained context fx.interval fx.off length support cssHooks
syntax keyword jqueryUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   jqueryUtilities      contained /contains/

" jqobj.*
syntax cluster jqueryFunctions      contains=jqueryAjax,jqueryAttributes,jqueryCallbacks,jqueryCore,jqueryCSS,jqueryData,jqueryDeferred,jqueryDimensions,jqueryEffects,jqueryEvents,jqueryManipulation,jqueryMiscellaneous,jqueryOffset,jqueryTraversing,jqueryUtilities
syntax keyword jqueryAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword jqueryAjax           contained serialize serializeArray ajaxTransport load
syntax keyword jqueryAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword jqueryCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword jqueryCSS            contained css
syntax keyword jqueryData           contained clearQueue data dequeue queue removeData
syntax keyword jqueryDeferred       contained Deferred always done fail notify progress promise reject rejectWith resolve resolveWith notifyWith state then
syntax keyword jqueryDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword jqueryEffects        contained hide show toggle
syntax keyword jqueryEffects        contained animate delay stop
syntax keyword jqueryEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword jqueryEffects        contained slideDown slideToggle slideUp
syntax keyword jqueryEvents         contained error resize scroll
syntax keyword jqueryEvents         contained ready unload
syntax keyword jqueryEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword jqueryEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword jqueryEvents         contained blur change focus select submit
syntax keyword jqueryEvents         contained focusin focusout keydown keypress keyup
syntax keyword jqueryEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword jqueryManipulation   contained clone
syntax keyword jqueryManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword jqueryManipulation   contained append appendTo html preprend prependTo text
syntax keyword jqueryManipulation   contained after before insertAfter insertBefore
syntax keyword jqueryManipulation   contained detach empty remove
syntax keyword jqueryManipulation   contained replaceAll replaceWith
syntax keyword jqueryMiscellaneous  contained index toArray
syntax keyword jqueryOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword jqueryTraversing     contained eq filter first has is last map not slice
syntax keyword jqueryTraversing     contained add andBack contents end
syntax keyword jqueryTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
" syntax region  javascriptString           start=+"+  skip=+\\\\\|\\"+  end=+"\|$+  contains=javascriptSpecial,@htmlPreproc,@jSelectors
" syntax region  javascriptString           start=+'+  skip=+\\\\\|\\'+  end=+'\|$+  contains=javascriptSpecial,@htmlPreproc,@jSelectors

" syntax cluster jSelectors      contains=jId,jClass,jOperators,jBasicFilters,jContentFilters,jVisibility,jChildFilters,jTypeFilters,jForms,jFormFilters
" syntax match   jId             contained /#[0-9A-Za-z_\-]\+/
" syntax match   jClass          contained /\.[0-9A-Za-z_\-]\+/
" syntax match   jOperators      contained /*\|>\|+\|-\|\~/
" syntax match   jBasicFilters   contained /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lang\|lt\|not\|odd\|root\|target\)/
" syntax match   jChildFilters   contained /:\(first\|last\|nth\|only\|nth-last\)-child/
" syntax match   jTypeFilters   contained /:\(first\|last\|nth\|only\|nth-last\)-of-type/
" syntax match   jContentFilters contained /:\(contains\|empty\|has\|parent\)/
" syntax match   jForms          contained /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
" syntax match   jVisibility     contained /:\(hidden\|visible\)/

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_jquery_syntax_inits")
  if version < 508
    let did_jquery_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink jquery               Constant

  HiLink jqueryCore           PreProc
  HiLink jqueryCoreObj        PreProc
  HiLink jqueryCoreData       PreProc

  HiLink jqueryAjax           PreProc
  HiLink jqueryAttributes     PreProc
  HiLink jqueryCallbacks      PreProc
  HiLink jqueryCSS            PreProc
  HiLink jqueryData           PreProc
  HiLink jqueryDeferred       PreProc
  HiLink jqueryDimensions     PreProc
  HiLink jqueryEffects        PreProc
  HiLink jqueryEvents         PreProc
  HiLink jqueryManipulation   PreProc
  HiLink jqueryMiscellaneous  PreProc
  HiLink jqueryOffset         PreProc
  HiLink jqueryProperties     PreProc
  HiLink jqueryTraversing     PreProc
  HiLink jqueryUtilities      PreProc

  " HiLink jId                  Identifier
  " HiLink jClass               Constant
  " HiLink jOperators           Special
  " HiLink jBasicFilters        Statement
  " HiLink jContentFilters      Statement
  " HiLink jVisibility          Statement
  " HiLink jChildFilters        Statement
  " HiLink jTypeFilters         Statement
  " HiLink jForms               Statement
  " HiLink jFormFilters         Statement


  delcommand HiLink
endif
