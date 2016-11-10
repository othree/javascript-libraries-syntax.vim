" Vim syntax file
" Language:    jQuery for javascript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2014/10/29
" Version:     1.9.0.2
" URL:         http://api.jquery.com/

setlocal iskeyword-=$
if exists("b:current_syntax") && b:current_syntax == 'javascript'
  setlocal iskeyword+=$
endif

syntax keyword javascriptjQuery jQuery $ containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
" syntax match   javascriptjQuerydot       contained /\./ nextgroup=@javascriptQGlobals
" syntax match   javascriptjQuerydot       contained /([^)]*)\./ nextgroup=@javascriptQFunctions

" jQuery.*
syntax cluster javascriptQGlobals        contains=javascriptQCore,javascriptQCoreObj,javascriptQCoreData,javascriptQUtilities,javascriptQProperties
syntax keyword javascriptQCore           contained holdReady noConflict when
syntax keyword javascriptQCoreObj        contained Callback Deferred
syntax keyword javascriptQCoreData       contained data dequeue hasData queue removeData
syntax keyword javascriptQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword javascriptQProperties     contained context fx.interval fx.off length support cssHooks
syntax keyword javascriptQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   javascriptQUtilities      contained /contains/

" jqobj.*
syntax cluster javascriptQFunctions      contains=@javascriptQGlobals,javascriptQAjax,javascriptQAttributes,javascriptQCallbacks,javascriptQCore,javascriptQCSS,javascriptQData,javascriptQDeferred,javascriptQDimensions,javascriptQEffects,javascriptQEvents,javascriptQManipulation,javascriptQMiscellaneous,javascriptQOffset,javascriptQTraversing,javascriptQUtilities
syntax keyword javascriptQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword javascriptQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword javascriptQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword javascriptQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword javascriptQCSS            contained css
syntax keyword javascriptQData           contained clearQueue data dequeue queue removeData
syntax keyword javascriptQDeferred       contained Deferred always done fail notify progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword javascriptQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword javascriptQEffects        contained hide show toggle
syntax keyword javascriptQEffects        contained animate delay stop finish
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
syntax keyword javascriptQManipulation   contained append appendTo html prepend prependTo text
syntax keyword javascriptQManipulation   contained after before insertAfter insertBefore
syntax keyword javascriptQManipulation   contained detach empty remove
syntax keyword javascriptQManipulation   contained replaceAll replaceWith
syntax keyword javascriptQMiscellaneous  contained index toArray
syntax keyword javascriptQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword javascriptQTraversing     contained eq filter first has is last map not slice
syntax keyword javascriptQTraversing     contained add andBack contents end
syntax keyword javascriptQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
" syntax match   javascriptASCII                 contained /\\\d\d\d/
" syntax region  javascriptString                start=/"/  skip=/\\\\\|\\"\|\\\n/  end=/"\|$/ contains=javascriptASCII,@jSelectors
" syntax region  javascriptString                start=/'/  skip=/\\\\\|\\'\|\\\n/  end=/'\|$/ contains=javascriptASCII,@jSelectors

" syntax cluster cssSelectors              contains=cssId,cssClass,cssOperators,cssBasicFilters,cssContentFilters,cssVisibility,cssChildFilters,cssForms,cssFormFilters
" syntax cluster javascriptNoReserved      add=@cssSelectors
" syntax match   cssId                     contained containedin=javascriptString /#[0-9A-Za-z_\-]\+/
" syntax match   cssClass                  contained containedin=javascriptString /\.[0-9A-Za-z_\-]\+/
" syntax match   cssOperators              contained containedin=javascriptString /*\|>\|+\|-\|\~/
" syntax match   cssBasicFilters           contained containedin=javascriptString /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lang\|lt\|not\|odd\|root\|target\)/
" syntax match   cssChildFilters           contained containedin=javascriptString /:\(first\|last\|nth\|only\|nth-last\)-child/
" syntax match   cssChildFilters           contained containedin=javascriptString /:\(first\|last\|nth\|only\|nth-last\)-of-type/
" syntax match   cssContentFilters         contained containedin=javascriptString /:\(contains\|empty\|has\|parent\)/
" syntax match   cssForms                  contained containedin=javascriptString /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
" syntax match   cssVisibility             contained containedin=javascriptString /:\(hidden\|visible\)/

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

  HiLink javascriptjQuery          Constant

  HiLink javascriptQCore           PreProc
  HiLink javascriptQCoreObj        PreProc
  HiLink javascriptQCoreData       PreProc

  HiLink javascriptQAjax           PreProc
  HiLink javascriptQAttributes     PreProc
  HiLink javascriptQCallbacks      PreProc
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

  " HiLink cssId                     Identifier
  " HiLink cssClass                  Constant
  " HiLink cssOperators              Special
  " HiLink cssBasicFilters           Statement
  " HiLink cssContentFilters         Statement
  " HiLink cssVisibility             Statement
  " HiLink cssChildFilters           Statement
  " HiLink cssForms                  Statement
  " HiLink cssFormFilters            Statement


  delcommand HiLink
endif
