" Vim syntax file
" Language:    prelude.ls for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/15
" Version:     1.3.9
" URL:         http://sugarjs.com/
"              http://sugarjs.com/api

syntax cluster typescriptSFunctions contains=typescriptSFunction

" String
syntax keyword typescriptSFunction contained add assign at camelize capitalize chars codes compact dasherize decodeBase64
syntax keyword typescriptSFunction contained each encodeBase64 endsWith escapeHTML escapeRegExp escapeURL first from hankaku has
syntax keyword typescriptSFunction contained hasArabic hasCyrillic hasGreek hasHangul hasHan hasKanji hasHebrew hasHiragana hasKana hasKatakana
syntax keyword typescriptSFunction contained hasLatin hasThai hasDevanagari hiragana humanize insert isBlank isArabic isCyrillic isGreek
syntax keyword typescriptSFunction contained isHangul isHan isKanji isHebrew isHiragana isKana isKatakana isKatakana isThai isDevanagari
syntax keyword typescriptSFunction contained katakana last lines normalize pad padLeft padRight paragraphs parameterize plualize
syntax keyword typescriptSFunction contained remove removeTags repeat reverse shift singularize spacify startsWith stripTags titleize
syntax keyword typescriptSFunction contained to toNumber trim trimLeft trimRight truncate underscore unescapeHTML unescapeURL words
syntax keyword typescriptSFunction contained zenkaku


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prelude_typescript_syntax_inits")
  if version < 508
    let did_prelude_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptSFunction        PreProc


  delcommand HiLink
endif
