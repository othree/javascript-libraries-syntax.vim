syn match   jQuery          /jQuery\|\$/ containedin=ALL


syn match   jFunc           /\.\w\+(\@=/ contains=@jFunctions

syn cluster jFunctions      contains=jAjax,jAttributes,jCore,jCSS,jData,jDeferred,jDimensions,jEffects,jEvents,jManipulation,jMiscellaneous,jOffset,jProperties,jTraversing,jUtilities
syn keyword jAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess containedin=ALL
syn keyword jAjax           contained param serialize serializeArray containedin=ALL
syn keyword jAjax           contained ajax ajaxPrefilter ajaxSetup ajaxSettings ajaxTransport containedin=ALL
syn keyword jAjax           contained get getJSON getScript load post containedin=ALL
syn keyword jAttributes     contained addClass attr hasClass prop removeAttr removeClass removeProp toggleClass val containedin=ALL
syn keyword jCore           contained holdReady noConflict sub when containedin=ALL
syn keyword jCSS            contained css cssHooks containedin=ALL
syn keyword jData           contained clearQueue data dequeue hasData queue removeData containedin=ALL
syn keyword jDeferred       contained Deferred always done fail isRejected isResolved pipe promise reject rejectWith resolved resolveWith then containedin=ALL
syn keyword jDimensions     contained height innerHeight innerWidth outerHeight outerWidth width containedin=ALL
syn keyword jEffects        contained hide show toggle containedin=ALL
syn keyword jEffects        contained animate delay stop containedin=ALL
syn keyword jEffects        contained fadeIn fadeOut fadeTo fadeToggle containedin=ALL
syn keyword jEffects        contained slideDown slideToggle slideUp containedin=ALL
syn keyword jEvents         contained error resize scroll containedin=ALL
syn keyword jEvents         contained ready unload containedin=ALL
syn keyword jEvents         contained bind delegate die live one proxy trigger triggerHandler unbind undelegate containedin=ALL
syn keyword jEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which containedin=ALL
syn keyword jEvents         contained blur change focus select submit containedin=ALL
syn keyword jEvents         contained focusin focusout keydown keypress keyup containedin=ALL
syn keyword jEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup containedin=ALL
syn keyword jManipulation   contained clone containedin=ALL
syn keyword jManipulation   contained unwrap wrap wrapAll wrapInner containedin=ALL
syn keyword jManipulation   contained append appendTo html preprend prependTo text containedin=ALL
syn keyword jManipulation   contained after before insertAfter insertBefore containedin=ALL
syn keyword jManipulation   contained detach empty remove containedin=ALL
syn keyword jManipulation   contained replaceAll replaceWith containedin=ALL
syn keyword jMiscellaneous  contained index size toArray containedin=ALL
syn keyword jOffset         contained offset offsetParent position scrollTop scrollLeft containedin=ALL
syn keyword jProperties     contained browser context fx.interval fx.off length selector support containedin=ALL
syn keyword jTraversing     contained eq filter first has is last map not slice containedin=ALL
syn keyword jTraversing     contained add andSelf contents end containedin=ALL
syn keyword jTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings containedin=ALL
syn keyword jUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray merge noop now parseJSON parseXML trim type unique containedin=ALL


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
