" Vim syntax file
" Language:    jQuery for ls
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Bruno Michel <brmichel@free.fr>
" Last Change: 2014/10/29
" Version:     1.9.0.2
" URL:         http://api.jquery.com/

setlocal iskeyword+=$

syntax keyword lsjQuery jQuery $ containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution
" syntax match   lsjQuerydot       contained /\./ nextgroup=@lsQGlobals
" syntax match   lsjQuerydot       contained /([^)]*)\./ nextgroup=@lsQFunctions

" jQuery.*
syntax cluster lsQGlobals        contains=lsQCore,lsQCoreObj,lsQCoreData,lsQUtilities,lsQProperties
syntax keyword lsQCore           contained holdReady noConflict when
syntax keyword lsQCoreObj        contained Callback Deferred
syntax keyword lsQCoreData       contained data dequeue hasData queue removeData
syntax keyword lsQCoreAjax       contained ajax ajaxPrefilter ajaxSetup ajaxTransport param get getJSON getScript post
syntax keyword lsQProperties     contained context fx.interval fx.off length support cssHooks
syntax keyword lsQUtilities      contained each extend globalEval grep inArray isArray isEmptyObject isFunction isPlainObject isWindow isXMLDoc makeArray map merge noop now parseHTML parseJSON parseXML proxy trim type unique
syntax match   lsQUtilities      contained /contains/

" jqobj.*
syntax cluster lsQFunctions      contains=@lsQGlobals,lsQAjax,lsQAttributes,lsQCallbacks,lsQCore,lsQCSS,lsQData,lsQDeferred,lsQDimensions,lsQEffects,lsQEvents,lsQManipulation,lsQMiscellaneous,lsQOffset,lsQTraversing,lsQUtilities
syntax keyword lsQAjax           contained ajaxComplete ajaxError ajaxSend ajaxStart ajaxStop ajaxSuccess
syntax keyword lsQAjax           contained serialize serializeArray ajaxTransport load
syntax keyword lsQAttributes     contained addClass attr hasClass html prop removeAttr removeClass removeProp toggleClass val
syntax keyword lsQCallbacks      contained add disable disabled empty fire fired fireWith has lock locked remove Callbacks
syntax keyword lsQCSS            contained css
syntax keyword lsQData           contained clearQueue data dequeue queue removeData
syntax keyword lsQDeferred       contained Deferred always done fail notify progress promise reject rejectWith resolved resolveWith notifyWith state then
syntax keyword lsQDimensions     contained height innerHeight innerWidth outerHeight outerWidth width
syntax keyword lsQEffects        contained hide show toggle
syntax keyword lsQEffects        contained animate delay stop finish
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
syntax keyword lsQMiscellaneous  contained index toArray
syntax keyword lsQOffset         contained offset offsetParent position scrollTop scrollLeft
syntax keyword lsQTraversing     contained eq filter first has is last map not slice
syntax keyword lsQTraversing     contained add andBack contents end
syntax keyword lsQTraversing     contained children closest find next nextAll nextUntil parent parents parentsUntil prev prevAll prevUntil siblings


" selector
" syntax match   lsASCII                 contained /\\\d\d\d/
" syntax region  lsString                start=/"/  skip=/\\\\\|\\"\|\\\n/  end=/"\|$/ contains=lsASCII,@jSelectors
" syntax region  lsString                start=/'/  skip=/\\\\\|\\'\|\\\n/  end=/'\|$/ contains=lsASCII,@jSelectors

syntax cluster cssSelectors              contains=cssId,cssClass,cssOperators,cssBasicFilters,cssContentFilters,cssVisibility,cssChildFilters,cssForms,cssFormFilters
syntax match   cssId                     contained containedin=lsString /#[0-9A-Za-z_\-]\+/
syntax match   cssClass                  contained containedin=lsString /\.[0-9A-Za-z_\-]\+/
syntax match   cssOperators              contained containedin=lsString /*\|>\|+\|-\|\~/
syntax match   cssBasicFilters           contained containedin=lsString /:\(animated\|eq\|even\|first\|focus\|gt\|header\|last\|lang\|lt\|not\|odd\|root\|target\)/
syntax match   cssChildFilters           contained containedin=lsString /:\(first\|last\|nth\|only\|nth-last\)-child/
syntax match   cssChildFilters           contained containedin=lsString /:\(first\|last\|nth\|only\|nth-last\)-of-type/
syntax match   cssContentFilters         contained containedin=lsString /:\(contains\|empty\|has\|parent\)/
syntax match   cssForms                  contained containedin=lsString /:\(button\|checkbox\|checked\|disabled\|enabled\|file\|image\|input\|password\|radio\|reset\|selected\|submit\|text\)/
syntax match   cssVisibility             contained containedin=lsString /:\(hidden\|visible\)/

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

  HiLink lsjQuery          Constant

  HiLink lsQCore           PreProc
  HiLink lsQCoreObj        PreProc
  HiLink lsQCoreData       PreProc

  HiLink lsQAjax           PreProc
  HiLink lsQAttributes     PreProc
  HiLink lsQCallbacks      PreProc
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
