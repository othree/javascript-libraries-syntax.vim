" Vim syntax file
" Language:    prelude.ls for javascript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/15
" Version:     1.3.9
" URL:         http://sugarjs.com/
"              http://sugarjs.com/api

syntax cluster javascriptSFunctions contains=javascriptSFunction

" String
syntax keyword javascriptSFunction contained add assign at camelize capitalize chars codes compact dasherize decodeBase64
syntax keyword javascriptSFunction contained each encodeBase64 endsWith escapeHTML escapeRegExp escapeURL first from hankaku has
syntax keyword javascriptSFunction contained hasArabic hasCyrillic hasGreek hasHangul hasHan hasKanji hasHebrew hasHiragana hasKana hasKatakana
syntax keyword javascriptSFunction contained hasLatin hasThai hasDevanagari hiragana humanize insert isBlank isArabic isCyrillic isGreek
syntax keyword javascriptSFunction contained isHangul isHan isKanji isHebrew isHiragana isKana isKatakana isKatakana isThai isDevanagari
syntax keyword javascriptSFunction contained katakana last lines normalize pad padLeft padRight paragraphs parameterize plualize
syntax keyword javascriptSFunction contained remove removeTags repeat reverse shift singularize spacify startsWith stripTags titleize
syntax keyword javascriptSFunction contained to toNumber trim trimLeft trimRight truncate underscore unescapeHTML unescapeURL words
syntax keyword javascriptSFunction contained zenkaku


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prelude_javascript_syntax_inits")
  if version < 508
    let did_prelude_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptSFunction        PreProc


  delcommand HiLink
endif
