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

" Number
syntax keyword javascriptSFunction contained abbr bytes ceil chr downto duration floor format hex isEven
syntax keyword javascriptSFunction contained isInteger isMultipleOf isOdd log abs sin asin cos acos tan
syntax keyword javascriptSFunction contained atan sqrt exp pow metric ordinalize pad round times toNumber
syntax keyword javascriptSFunction contained millisecond milliseconds second seconds minute minutes hour hours day days
syntax keyword javascriptSFunction contained week weeks month months year years upto

" Date
syntax keyword javascriptSFunction contained addLocale create future getLocale now past range setLocale addMilliseconds addSeconds
syntax keyword javascriptSFunction contained addMinutes addHours addDays addWeeks addMonths addYears advance beginningOfDay beginningOfWeek beginningOfMonth
syntax keyword javascriptSFunction contained beginningOfYear clone daysInMonth endOfDay endOfWeek endOfMonth endOfYear format getISOWeek getUTCOffset
syntax keyword javascriptSFunction contained getWeekday is isAfter isBefore isBetween isToday isYesterday isTomorrow isWeekday isWeekend
syntax keyword javascriptSFunction contained isSunday isMonday isTuesday isWednesday isThursday isFriday isSaturday isFuture isLastWeek isLastMonth
syntax keyword javascriptSFunction contained isLastYear isPast isThisWeek isThisMonth isThisYear isUTC isValid iso relative reset
syntax keyword javascriptSFunction contained rewind set setISOWeek setWeekday toISOString toJSON millisecondsSince secondsSince minutesSince hoursSince
syntax keyword javascriptSFunction contained daysSince weeksSince monthsSince yearsSince millisecondsUntil secondsUntil minutesUntil hoursUntil daysUntil weeksUntil
syntax keyword javascriptSFunction contained monthsUntil yearsUntil millisecondAfter millisecondsAfter secondAfter secondsAfter minuteAfter minutesAfter hourAfter hoursAfter
syntax keyword javascriptSFunction contained dayAfter daysAfter weekAfter weeksAfter monthAfter monthsAfter yearAfter yearsAfter millisecondAgo millisecondsAgo
syntax keyword javascriptSFunction contained secondAgo secondsAgo minuteAgo minutesAgo hourAgo hoursAgo dayAgo daysAgo weekAgo weeksAgo
syntax keyword javascriptSFunction contained monthAgo monthsAgo yearAgo yearsAgo millisecondBefore millisecondsBefore secondBefore secondsBefore minuteBefore minutesBefore
syntax keyword javascriptSFunction contained hourBefore hoursBefore dayBefore daysBefore weekBefore weeksBefore monthBefore monthsBefore yearBefore yearsBefore
syntax keyword javascriptSFunction contained millisecondFromNow millisecondsFromNow secondFromNow secondsFromNow minuteFromNow minutesFromNow hourFromNow hoursFromNow dayFromNow daysFromNow
syntax keyword javascriptSFunction contained weekFromNow weeksFromNow monthFromNow monthsFromNow yearFromNow yearsFromNow utc

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
