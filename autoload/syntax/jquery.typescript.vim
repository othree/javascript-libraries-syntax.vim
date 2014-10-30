" Vim syntax file
" Language:    jQuery for typescript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2014/10/29
" Version:     1.9.0.2
" URL:         http://api.jquery.com/

setlocal iskeyword+=$

syntax keyword typescriptjQuery jQuery $ containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution
" syntax match   typescriptjQuerydot       contained /\./ nextgroup=@typescriptQGlobals
" syntax match   typescriptjQuerydot       contained /([^)]*)\./ nextgroup=@typescriptQFunctions

" jQuery.*
syntax cluster typescriptQGlobals        contains=typescriptQCore,typescriptQCoreObj,typescriptQCoreData,typescriptQUtilities,typescriptQProperties
syntax keyword typescriptQCore           contained holdReady noConflict when
syntax keyword typescriptQCoreObj        contained Callback Deferred
syntax keyword typescriptQCoreData       contained data dequeue hasData queue removeData
syntax keyword typescriptQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword typescriptQProperties     contained context fx.interval fx.off length support cssHooks
syntax keyword typescriptQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   typescriptQUtilities      contained /contains/

" jqobj.*
syntax cluster typescriptQFunctions      contains=@typescriptQGlobals,typescriptQAjax,typescriptQAttributes,typescriptQCallbacks,typescriptQCore,typescriptQCSS,typescriptQData,typescriptQDeferred,typescriptQDimensions,typescriptQEffects,typescriptQEvents,typescriptQManipulation,typescriptQMiscellaneous,typescriptQOffset,typescriptQTraversing,typescriptQUtilities
syntax keyword typescriptQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword typescriptQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword typescriptQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword typescriptQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword typescriptQCSS            contained css
syntax keyword typescriptQData           contained clearQueue data dequeue queue removeData
syntax keyword typescriptQDeferred       contained Deferred always done fail notify progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword typescriptQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword typescriptQEffects        contained hide show toggle
syntax keyword typescriptQEffects        contained animate delay stop finish
syntax keyword typescriptQEffects        contained fadeIn fadeOut fadeTo fadeToggle
syntax keyword typescriptQEffects        contained slideDown slideToggle slideUp
syntax keyword typescriptQEvents         contained error resize scroll
syntax keyword typescriptQEvents         contained ready unload
syntax keyword typescriptQEvents         contained bind delegate on off one proxy trigger triggerHandler unbind undelegate
syntax keyword typescriptQEvents         contained Event currentTarget isDefaultPrevented isImmediatePropagationStopped isPropagationStopped namespace pageX pageY preventDefault relatedTarget result stopImmediatePropagation stopPropagation target timeStamp which
syntax keyword typescriptQEvents         contained blur change focus select submit
syntax keyword typescriptQEvents         contained focusin focusout keydown keypress keyup
syntax keyword typescriptQEvents         contained click dblclick hover mousedown mouseenter mouseleave mousemove mouseout mouseover mouseup
syntax keyword typescriptQManipulation   contained clone
syntax keyword typescriptQManipulation   contained unwrap wrap wrapAll wrapInner
syntax keyword typescriptQManipulation   contained append appendTo html preprend prependTo text
syntax keyword typescriptQManipulation   contained after before insertAfter insertBefore
syntax keyword typescriptQManipulation   contained detach empty remove
syntax keyword typescriptQManipulation   contained replaceAll replaceWith
syntax keyword typescriptQMiscellaneous  contained index toArray
syntax keyword typescriptQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword typescriptQTraversing     contained eq filter first has is last map not slice
syntax keyword typescriptQTraversing     contained add andBack contents end
syntax keyword typescriptQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
" syntax match   typescriptASCII                 contained /\\\d\d\d/
" syntax region  typescriptString                start=/"/  skip=/\\\\\|\\"\|\\\n/  end=/"\|$/ contains=typescriptASCII,@jSelectors
" syntax region  typescriptString                start=/'/  skip=/\\\\\|\\'\|\\\n/  end=/'\|$/ contains=typescriptASCII,@jSelectors

syntax cluster cssSelectors              contains=cssId,cssClass,cssOperators,cssBasicFilters,cssContentFilters,cssVisibility,cssChildFilters,cssForms,cssFormFilters
syntax match   cssId                     contained containedin=typescriptString /#[0-9A-Za-z_\-]\+/
syntax match   cssClass                  contained containedin=typescriptString /\.[0-9A-Za-z_\-]\+/
syntax match   cssOperators              contained containedin=typescriptString /*\|>\|+\|-\|\~/
syntax match   cssBasicFilters           contained containedin=typescriptString /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lang\|lt\|not\|odd\|root\|target\)/
syntax match   cssChildFilters           contained containedin=typescriptString /:\(first\|last\|nth\|only\|nth-last\)-child/
syntax match   cssChildFilters           contained containedin=typescriptString /:\(first\|last\|nth\|only\|nth-last\)-of-type/
syntax match   cssContentFilters         contained containedin=typescriptString /:\(contains\|empty\|has\|parent\)/
syntax match   cssForms                  contained containedin=typescriptString /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syntax match   cssVisibility             contained containedin=typescriptString /:\(hidden\|visible\)/

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

  HiLink typescriptjQuery          Constant

  HiLink typescriptQCore           PreProc
  HiLink typescriptQCoreObj        PreProc
  HiLink typescriptQCoreData       PreProc

  HiLink typescriptQAjax           PreProc
  HiLink typescriptQAttributes     PreProc
  HiLink typescriptQCallbacks      PreProc
  HiLink typescriptQCSS            PreProc
  HiLink typescriptQData           PreProc
  HiLink typescriptQDeferred       PreProc
  HiLink typescriptQDimensions     PreProc
  HiLink typescriptQEffects        PreProc
  HiLink typescriptQEvents         PreProc
  HiLink typescriptQManipulation   PreProc
  HiLink typescriptQMiscellaneous  PreProc
  HiLink typescriptQOffset         PreProc
  HiLink typescriptQProperties     PreProc
  HiLink typescriptQTraversing     PreProc
  HiLink typescriptQUtilities      PreProc

  HiLink cssId                     Identifier
  HiLink cssClass                  Constant
  HiLink cssOperators              Special
  HiLink cssBasicFilters           Statement
  HiLink cssContentFilters         Statement
  HiLink cssVisibility             Statement
  HiLink cssChildFilters           Statement
  HiLink cssForms                  Statement
  HiLink cssFormFilters            Statement


  delcommand HiLink
endif
