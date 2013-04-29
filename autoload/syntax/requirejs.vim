" Vim syntax file
" Language:    require.js
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/04/29
" Version:     2.1.5
" URL:         http://requirejs.org/


syntax keyword requirejsRequire       containedin=ALLBUT,@stringcomment require requirejs nextgroup=requirejsDot
syntax match   requirejsDot           contained /\./ nextgroup=requirejsMethods
syntax keyword requirejsMethods       contained config

syntax keyword requirejsDefine        containedin=ALLBUT,@stringcomment define nextgroup=requirejsDefineDot
syntax match   requirejsDefineDot     contained /\./ nextgroup=requirejsDefineMethods
syntax keyword requirejsDefineMethods contained amd


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_requirejs_syntax_inits")
  if version < 508
    let did_requirejs_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink requirejsRequire       PreProc
  HiLink requirejsMethods       PreProc
  HiLink requirejsDefine        PreProc
  HiLink requirejsDefineMethods PreProc

  delcommand HiLink
endif
