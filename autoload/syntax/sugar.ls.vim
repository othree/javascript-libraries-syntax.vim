" Vim syntax file
" Language:    prelude.ls for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     1.3.9
" URL:         http://sugarjs.com/
"              http://sugarjs.com/api

syntax cluster lsSFunctions contains=lsSFunction

" String
syntax keyword lsSFunction contained add assign at camelize capitalize chars codes compact dasherize decodeBase64
syntax keyword lsSFunction contained each encodeBase64 endsWith escapeHTML escapeRegExp escapeURL first from hankaku has
syntax keyword lsSFunction contained hasArabic hasCyrillic hasGreek hasHangul hasHan hasKanji hasHebrew hasHiragana hasKana hasKatakana
syntax keyword lsSFunction contained hasLatin hasThai hasDevanagari hiragana humanize insert isBlank isArabic isCyrillic isGreek
syntax keyword lsSFunction contained isHangul isHan isKanji isHebrew isHiragana isKana isKatakana isKatakana isThai isDevanagari
syntax keyword lsSFunction contained katakana last lines normalize pad padLeft padRight paragraphs parameterize plualize
syntax keyword lsSFunction contained remove removeTags repeat reverse shift singularize spacify startsWith stripTags titleize
syntax keyword lsSFunction contained to toNumber trim trimLeft trimRight truncate underscore unescapeHTML unescapeURL words
syntax keyword lsSFunction contained zenkaku

" Number
syntax keyword lsSFunction contained abbr bytes ceil chr downto duration floor format hex isEven
syntax keyword lsSFunction contained isInteger isMultipleOf isOdd log abs sin asin cos acos tan
syntax keyword lsSFunction contained atan sqrt exp pow metric ordinalize pad round times toNumber
syntax keyword lsSFunction contained millisecond milliseconds second seconds minute minutes hour hours day days
syntax keyword lsSFunction contained week weeks month months year years upto

" Array

syntax keyword lsSFunction contained create add all any at average clone compact count each
syntax keyword lsSFunction contained every exclude filter find findAll findFrom findIndex findIndexFrom first flatten
syntax keyword lsSFunction contained forEach from groupBy inGroups inGroupsOf include indexOf insert intersect isEmpty
syntax keyword lsSFunction contained last lastIndexOf least map max min most none randomize reduce
syntax keyword lsSFunction contained reduceRight remove removeAt sample some sortBy subtract sum to union
syntax keyword lsSFunction contained unique zip

" Object

syntax keyword lsSFunction contained extended fromQueryString isArray isObject isBoolean isDate isFunction isNaN isNumber isString
syntax keyword lsSFunction contained isRegExp toQueryString clone each map any all none count find
syntax keyword lsSFunction contained findAll reduce isEmpty sum average min max least most equal
syntax keyword lsSFunction contained has keys merge reject select size tap values watch 

" Function

syntax keyword lsSFunction contained after bind cancel debounce delay everyfill lazyredrawonce throttle 

" RegExp

syntax keyword lsSFunction contained escape addFlag getFlags removeFlag setFlags

" Date
syntax keyword lsSFunction contained addLocale create future getLocale now past range setLocale addMilliseconds addSeconds
syntax keyword lsSFunction contained addMinutes addHours addDays addWeeks addMonths addYears advance beginningOfDay beginningOfWeek beginningOfMonth
syntax keyword lsSFunction contained beginningOfYear clone daysInMonth endOfDay endOfWeek endOfMonth endOfYear format getISOWeek getUTCOffset
syntax keyword lsSFunction contained getWeekday is isAfter isBefore isBetween isToday isYesterday isTomorrow isWeekday isWeekend
syntax keyword lsSFunction contained isSunday isMonday isTuesday isWednesday isThursday isFriday isSaturday isFuture isLastWeek isLastMonth
syntax keyword lsSFunction contained isLastYear isPast isThisWeek isThisMonth isThisYear isUTC isValid iso relative reset
syntax keyword lsSFunction contained rewind set setISOWeek setWeekday toISOString toJSON millisecondsSince secondsSince minutesSince hoursSince
syntax keyword lsSFunction contained daysSince weeksSince monthsSince yearsSince millisecondsUntil secondsUntil minutesUntil hoursUntil daysUntil weeksUntil
syntax keyword lsSFunction contained monthsUntil yearsUntil millisecondAfter millisecondsAfter secondAfter secondsAfter minuteAfter minutesAfter hourAfter hoursAfter
syntax keyword lsSFunction contained dayAfter daysAfter weekAfter weeksAfter monthAfter monthsAfter yearAfter yearsAfter millisecondAgo millisecondsAgo
syntax keyword lsSFunction contained secondAgo secondsAgo minuteAgo minutesAgo hourAgo hoursAgo dayAgo daysAgo weekAgo weeksAgo
syntax keyword lsSFunction contained monthAgo monthsAgo yearAgo yearsAgo millisecondBefore millisecondsBefore secondBefore secondsBefore minuteBefore minutesBefore
syntax keyword lsSFunction contained hourBefore hoursBefore dayBefore daysBefore weekBefore weeksBefore monthBefore monthsBefore yearBefore yearsBefore
syntax keyword lsSFunction contained millisecondFromNow millisecondsFromNow secondFromNow secondsFromNow minuteFromNow minutesFromNow hourFromNow hoursFromNow dayFromNow daysFromNow
syntax keyword lsSFunction contained weekFromNow weeksFromNow monthFromNow monthsFromNow yearFromNow yearsFromNow utc

" Range

syntax keyword lsSFunction contained clamp clone every intersect isValid span toString union
syntax keyword lsSFunction contained contain[s]

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prelude_ls_syntax_inits")
  if version < 508
    let did_prelude_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsSFunction        PreProc


  delcommand HiLink
endif
