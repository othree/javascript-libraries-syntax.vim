" Vim syntax file
" Language:    prelude.ls for typescript
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
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

" Number
syntax keyword typescriptSFunction contained abbr bytes ceil chr downto duration floor format hex isEven
syntax keyword typescriptSFunction contained isInteger isMultipleOf isOdd log abs sin asin cos acos tan
syntax keyword typescriptSFunction contained atan sqrt exp pow metric ordinalize pad round times toNumber
syntax keyword typescriptSFunction contained millisecond milliseconds second seconds minute minutes hour hours day days
syntax keyword typescriptSFunction contained week weeks month months year years upto

" Array

syntax keyword typescriptSFunction contained create add all any at average clone compact count each
syntax keyword typescriptSFunction contained every exclude filter find findAll findFrom findIndex findIndexFrom first flatten
syntax keyword typescriptSFunction contained forEach from groupBy inGroups inGroupsOf include indexOf insert intersect isEmpty
syntax keyword typescriptSFunction contained last lastIndexOf least map max min most none randomize reduce
syntax keyword typescriptSFunction contained reduceRight remove removeAt sample some sortBy subtract sum to union
syntax keyword typescriptSFunction contained unique zip

" Object

syntax keyword typescriptSFunction contained extended fromQueryString isArray isObject isBoolean isDate isFunction isNaN isNumber isString
syntax keyword typescriptSFunction contained isRegExp toQueryString clone each map any all none count find
syntax keyword typescriptSFunction contained findAll reduce isEmpty sum average min max least most equal
syntax keyword typescriptSFunction contained has keys merge reject select size tap values watch 

" Function

syntax keyword typescriptSFunction contained after bind cancel debounce delay everyfill lazyredrawonce throttle 

" RegExp

syntax keyword typescriptSFunction contained escape addFlag getFlags removeFlag setFlags

" Date
syntax keyword typescriptSFunction contained addLocale create future getLocale now past range setLocale addMilliseconds addSeconds
syntax keyword typescriptSFunction contained addMinutes addHours addDays addWeeks addMonths addYears advance beginningOfDay beginningOfWeek beginningOfMonth
syntax keyword typescriptSFunction contained beginningOfYear clone daysInMonth endOfDay endOfWeek endOfMonth endOfYear format getISOWeek getUTCOffset
syntax keyword typescriptSFunction contained getWeekday is isAfter isBefore isBetween isToday isYesterday isTomorrow isWeekday isWeekend
syntax keyword typescriptSFunction contained isSunday isMonday isTuesday isWednesday isThursday isFriday isSaturday isFuture isLastWeek isLastMonth
syntax keyword typescriptSFunction contained isLastYear isPast isThisWeek isThisMonth isThisYear isUTC isValid iso relative reset
syntax keyword typescriptSFunction contained rewind set setISOWeek setWeekday toISOString toJSON millisecondsSince secondsSince minutesSince hoursSince
syntax keyword typescriptSFunction contained daysSince weeksSince monthsSince yearsSince millisecondsUntil secondsUntil minutesUntil hoursUntil daysUntil weeksUntil
syntax keyword typescriptSFunction contained monthsUntil yearsUntil millisecondAfter millisecondsAfter secondAfter secondsAfter minuteAfter minutesAfter hourAfter hoursAfter
syntax keyword typescriptSFunction contained dayAfter daysAfter weekAfter weeksAfter monthAfter monthsAfter yearAfter yearsAfter millisecondAgo millisecondsAgo
syntax keyword typescriptSFunction contained secondAgo secondsAgo minuteAgo minutesAgo hourAgo hoursAgo dayAgo daysAgo weekAgo weeksAgo
syntax keyword typescriptSFunction contained monthAgo monthsAgo yearAgo yearsAgo millisecondBefore millisecondsBefore secondBefore secondsBefore minuteBefore minutesBefore
syntax keyword typescriptSFunction contained hourBefore hoursBefore dayBefore daysBefore weekBefore weeksBefore monthBefore monthsBefore yearBefore yearsBefore
syntax keyword typescriptSFunction contained millisecondFromNow millisecondsFromNow secondFromNow secondsFromNow minuteFromNow minutesFromNow hourFromNow hoursFromNow dayFromNow daysFromNow
syntax keyword typescriptSFunction contained weekFromNow weeksFromNow monthFromNow monthsFromNow yearFromNow yearsFromNow utc

" Range

syntax keyword typescriptSFunction contained clamp clone every intersect isValid span toString union
syntax keyword typescriptSFunction contained contain[s]

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
