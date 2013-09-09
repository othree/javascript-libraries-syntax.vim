" Vim syntax file
" Language:    prelude.ls for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2013/07/26
" Version:     1.3.9
" URL:         http://sugarjs.com/
"              http://sugarjs.com/api

syntax cluster coffeeSFunctions contains=coffeeSFunction

" String
syntax keyword coffeeSFunction contained add assign at camelize capitalize chars codes compact dasherize decodeBase64
syntax keyword coffeeSFunction contained each encodeBase64 endsWith escapeHTML escapeRegExp escapeURL first from hankaku has
syntax keyword coffeeSFunction contained hasArabic hasCyrillic hasGreek hasHangul hasHan hasKanji hasHebrew hasHiragana hasKana hasKatakana
syntax keyword coffeeSFunction contained hasLatin hasThai hasDevanagari hiragana humanize insert isBlank isArabic isCyrillic isGreek
syntax keyword coffeeSFunction contained isHangul isHan isKanji isHebrew isHiragana isKana isKatakana isKatakana isThai isDevanagari
syntax keyword coffeeSFunction contained katakana last lines normalize pad padLeft padRight paragraphs parameterize plualize
syntax keyword coffeeSFunction contained remove removeTags repeat reverse shift singularize spacify startsWith stripTags titleize
syntax keyword coffeeSFunction contained to toNumber trim trimLeft trimRight truncate underscore unescapeHTML unescapeURL words
syntax keyword coffeeSFunction contained zenkaku

" Number
syntax keyword coffeeSFunction contained abbr bytes ceil chr downto duration floor format hex isEven
syntax keyword coffeeSFunction contained isInteger isMultipleOf isOdd log abs sin asin cos acos tan
syntax keyword coffeeSFunction contained atan sqrt exp pow metric ordinalize pad round times toNumber
syntax keyword coffeeSFunction contained millisecond milliseconds second seconds minute minutes hour hours day days
syntax keyword coffeeSFunction contained week weeks month months year years upto

" Array

syntax keyword coffeeSFunction contained create add all any at average clone compact count each
syntax keyword coffeeSFunction contained every exclude filter find findAll findFrom findIndex findIndexFrom first flatten
syntax keyword coffeeSFunction contained forEach from groupBy inGroups inGroupsOf include indexOf insert intersect isEmpty
syntax keyword coffeeSFunction contained last lastIndexOf least map max min most none randomize reduce
syntax keyword coffeeSFunction contained reduceRight remove removeAt sample some sortBy subtract sum to union
syntax keyword coffeeSFunction contained unique zip

" Object

syntax keyword coffeeSFunction contained extended fromQueryString isArray isObject isBoolean isDate isFunction isNaN isNumber isString
syntax keyword coffeeSFunction contained isRegExp toQueryString clone each map any all none count find
syntax keyword coffeeSFunction contained findAll reduce isEmpty sum average min max least most equal
syntax keyword coffeeSFunction contained has keys merge reject select size tap values watch 

" Function

syntax keyword coffeeSFunction contained after bind cancel debounce delay everyfill lazyredrawonce throttle 

" RegExp

syntax keyword coffeeSFunction contained escape addFlag getFlags removeFlag setFlags

" Date
syntax keyword coffeeSFunction contained addLocale create future getLocale now past range setLocale addMilliseconds addSeconds
syntax keyword coffeeSFunction contained addMinutes addHours addDays addWeeks addMonths addYears advance beginningOfDay beginningOfWeek beginningOfMonth
syntax keyword coffeeSFunction contained beginningOfYear clone daysInMonth endOfDay endOfWeek endOfMonth endOfYear format getISOWeek getUTCOffset
syntax keyword coffeeSFunction contained getWeekday is isAfter isBefore isBetween isToday isYesterday isTomorrow isWeekday isWeekend
syntax keyword coffeeSFunction contained isSunday isMonday isTuesday isWednesday isThursday isFriday isSaturday isFuture isLastWeek isLastMonth
syntax keyword coffeeSFunction contained isLastYear isPast isThisWeek isThisMonth isThisYear isUTC isValid iso relative reset
syntax keyword coffeeSFunction contained rewind set setISOWeek setWeekday toISOString toJSON millisecondsSince secondsSince minutesSince hoursSince
syntax keyword coffeeSFunction contained daysSince weeksSince monthsSince yearsSince millisecondsUntil secondsUntil minutesUntil hoursUntil daysUntil weeksUntil
syntax keyword coffeeSFunction contained monthsUntil yearsUntil millisecondAfter millisecondsAfter secondAfter secondsAfter minuteAfter minutesAfter hourAfter hoursAfter
syntax keyword coffeeSFunction contained dayAfter daysAfter weekAfter weeksAfter monthAfter monthsAfter yearAfter yearsAfter millisecondAgo millisecondsAgo
syntax keyword coffeeSFunction contained secondAgo secondsAgo minuteAgo minutesAgo hourAgo hoursAgo dayAgo daysAgo weekAgo weeksAgo
syntax keyword coffeeSFunction contained monthAgo monthsAgo yearAgo yearsAgo millisecondBefore millisecondsBefore secondBefore secondsBefore minuteBefore minutesBefore
syntax keyword coffeeSFunction contained hourBefore hoursBefore dayBefore daysBefore weekBefore weeksBefore monthBefore monthsBefore yearBefore yearsBefore
syntax keyword coffeeSFunction contained millisecondFromNow millisecondsFromNow secondFromNow secondsFromNow minuteFromNow minutesFromNow hourFromNow hoursFromNow dayFromNow daysFromNow
syntax keyword coffeeSFunction contained weekFromNow weeksFromNow monthFromNow monthsFromNow yearFromNow yearsFromNow utc

" Range

syntax keyword coffeeSFunction contained clamp clone every intersect isValid span toString union
syntax keyword coffeeSFunction contained contain[s]

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_prelude_coffee_syntax_inits")
  if version < 508
    let did_prelude_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeSFunction        PreProc


  delcommand HiLink
endif
