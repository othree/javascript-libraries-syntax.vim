" Vim syntax file
" Language:    Ramda for ls
" Maintainer:  othree <othree@gmail.com>
" Last Change: 2016/05/04
" Version:     0.21.0
" URL:         http://ramdajs.com/

syntax keyword lsRamda       R containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution,lsRDot
syntax match   lsRaDot       contained /\./ nextgroup=lsRaFunctions

syntax cluster lsRaFunctions contains=lsRaFunction,lsRaMath,lsRaList,lsRaLogic,lsRaObject,lsRaRelation,lsRaType,lsRaString

syntax keyword lsRaFunction contained __ addIndex always ap apply applySpec binary bind call comparator compose composeK composeP construct constructN converge curry curryN empty F flip identity invoker juxt lift liftN memoize nAry nthArg of once partial partialRight pipe pipeK pipeP T tap tryCatch unapply unary uncurryN useWith wrap 
syntax keyword lsRaMath contained add dec divide inc mathMod mean median modulo multiply negate product subtract sum
syntax match   lsRaList contained /contains/
syntax keyword lsRaList contained adjust all allUniq any aperture append chain concat drop dropLast dropLastWhile dropRepeats dropRepeatsWith dropWhile filter find findIndex findLast findLastIndex flatten forEach fromPairs groupBy groupWith head indexBy indexOf init insert insertAll intersperse into join last lastIndexOf length map mapAccum mapAccumRight mergeAll none nth pair partition pluck prepend range reduce reduceBy reduced reduceRight reject remove repeat reverse scan sequence slice sort splitAt splitEvery splitWhen tail take takeLast takeLastWhile takeWhile times transduce transpose traverse unfold uniq uniqBy uniqWith unnest update without xprod zip zipObj zipWith
syntax keyword lsRaLogic contained allPass and anyPass both complement cond defaultTo either ifElse isEmpty not or pathSatisfies propSatisfies unless until when
syntax keyword lsRaObject contained assoc assocPath clone dissoc dissocPath eqProps evolve has hasIn invert invertObj keys keysIn lens lensIndex lensPath lensProp mapObjIndexed merge mergeWith mergeWithKey objOf omit over path pathOr pick pickAll pickBy project prop propOr props set toPairs toPairsIn values valuesIn view where whereEq
syntax keyword lsRaRelation contained clamp countBy difference differenceWith eqBy equals gt gte identical intersection intersectionWith lt lte max maxBy min minBy pathEq propEq sortBy symmetricDifference symmetricDifferenceWith union unionWith
syntax keyword lsRaType contained is isArrayLike isNil propIs type
syntax keyword lsRaString contained match replace split test toLower toString toUpper trim


" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_ramda_ls_syntax_inits")
  if version < 508
    let did_ramda_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsRamda            Constant

  HiLink lsRaFunction       PreProc
  HiLink lsRaMath           PreProc
  HiLink lsRaList           PreProc
  HiLink lsRaLogic          PreProc
  HiLink lsRaObject         PreProc
  HiLink lsRaRelation       PreProc
  HiLink lsRaType           PreProc
  HiLink lsRaString         PreProc

  delcommand HiLink
endif
