" Vim syntax file
" Language:    Ramda for coffee
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/05/04
" Version:     0.21.0
" URL:         http://ramdajs.com/

syntax keyword coffeeRamda       R containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution,coffeeRDot
syntax match   coffeeRaDot       contained /\./ nextgroup=coffeeRaFunctions

syntax cluster coffeeRaFunctions contains=coffeeRaFunction,coffeeRaMath,coffeeRaList,coffeeRaLogic,coffeeRaObject,coffeeRaRelation,coffeeRaType,coffeeRaString

syntax keyword coffeeRaFunction contained __ addIndex always ap apply applySpec binary bind call comparator compose composeK composeP construct constructN converge curry curryN empty F flip identity invoker juxt lift liftN memoize nAry nthArg of once partial partialRight pipe pipeK pipeP T tap tryCatch unapply unary uncurryN useWith wrap 
syntax keyword coffeeRaMath contained add dec divide inc mathMod mean median modulo multiply negate product subtract sum
syntax match   coffeeRaList contained /contains/
syntax keyword coffeeRaList contained adjust all allUniq any aperture append chain concat drop dropLast dropLastWhile dropRepeats dropRepeatsWith dropWhile filter find findIndex findLast findLastIndex flatten forEach fromPairs groupBy groupWith head indexBy indexOf init insert insertAll intersperse into join last lastIndexOf length map mapAccum mapAccumRight mergeAll none nth pair partition pluck prepend range reduce reduceBy reduced reduceRight reject remove repeat reverse scan sequence slice sort splitAt splitEvery splitWhen tail take takeLast takeLastWhile takeWhile times transduce transpose traverse unfold uniq uniqBy uniqWith unnest update without xprod zip zipObj zipWith
syntax keyword coffeeRaLogic contained allPass and anyPass both complement cond defaultTo either ifElse isEmpty not or pathSatisfies propSatisfies unless until when
syntax keyword coffeeRaObject contained assoc assocPath clone dissoc dissocPath eqProps evolve has hasIn invert invertObj keys keysIn lens lensIndex lensPath lensProp mapObjIndexed merge mergeWith mergeWithKey objOf omit over path pathOr pick pickAll pickBy project prop propOr props set toPairs toPairsIn values valuesIn view where whereEq
syntax keyword coffeeRaRelation contained clamp countBy difference differenceWith eqBy equals gt gte identical intersection intersectionWith lt lte max maxBy min minBy pathEq propEq sortBy symmetricDifference symmetricDifferenceWith union unionWith
syntax keyword coffeeRaType contained is isArrayLike isNil propIs type
syntax keyword coffeeRaString contained match replace split test toLower toString toUpper trim


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ramda_coffee_syntax_inits")
  if version < 508
    let did_ramda_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeRamda            Constant

  HiLink coffeeRaFunction       PreProc
  HiLink coffeeRaMath           PreProc
  HiLink coffeeRaList           PreProc
  HiLink coffeeRaLogic          PreProc
  HiLink coffeeRaObject         PreProc
  HiLink coffeeRaRelation       PreProc
  HiLink coffeeRaType           PreProc
  HiLink coffeeRaString         PreProc

  delcommand HiLink
endif
