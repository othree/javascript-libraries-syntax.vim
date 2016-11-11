" Vim syntax file
" Language:    d3.v4 for coffee
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Sfinktah <sfinktah@othree.spamtrak.org>
" Last Change: 2016/11/11
" Version:     4.2.8.0
" URL:         https://github.com/d3/d3/blob/master/API.md

syntax keyword coffeeD3 d3                      containedin=ALLBUT,coffeeComment,coffeeLineComment,coffeeString,coffeeTemplate,coffeeTemplateSubstitution
syntax cluster coffee_Functions                 contains=@coffeeD3Arrays,coffeeD3Axes,coffeeD3Brushes,coffeeD3Chords,@coffeeD3Collections,coffeeD3Colors,coffeeD3Dispatches,coffeeD3Dragging,coffeeD3DelimiterSeparatedValues,coffeeD3Easings,coffeeD3Forces,coffeeD3NumberFormats,coffeeD3Geographies,coffeeD3GeographiesStreams,coffeeD3GeographiesTransforms,coffeeD3Hierarchies,coffeeD3Interpolators,coffeeD3Paths,coffeeD3Polygons,coffeeD3Quadtrees,coffeeD3Queues,coffeeD3RandomNumbers,coffeeD3Requests,coffeeD3Scales,coffeeD3Selections,coffeeD3Shapes,coffeeD3TimeFormats,coffeeD3TimeIntervals,coffeeD3Timers,coffeeD3Transitions,coffeeD3VoronoiDiagrams,coffeeD3Zooming

syntax cluster coffeeD3Arrays	                  contains=coffeeD3ArraysStatistics,coffeeD3ArraysSearch,coffeeD3ArraysTransformations,coffeeD3ArraysHistograms,coffeeD3Axes,coffeeD3Arrays
syntax keyword coffeeD3ArraysStatistics         contained min max extent sum mean median quantile variance deviation
syntax keyword coffeeD3ArraysSearch             contained scan bisect bisectRight bisectLeft bisector ascending descending
syntax keyword coffeeD3ArraysTransformations    contained merge pairs permute shuffle ticks tickStep range transpose zip
syntax keyword coffeeD3ArraysHistograms         contained histogram thresholdFreedmanDiaconis thresholdScott thresholdSturges
syntax keyword coffeeD3Axes                     contained axisTop axisRight axisBottom axisLeft
syntax keyword coffeeD3Brushes                  contained brush brushX brushY brushSelection
syntax keyword coffeeD3Chords                   contained chord ribbon

syntax cluster coffeeD3Collections              contains=coffeeD3CollectionsObjects,coffeeD3CollectionsMaps,coffeeD3CollectionsSets,coffeeD3CollectionsNests
syntax keyword coffeeD3CollectionsObjects       contained keys values entries
syntax keyword coffeeD3CollectionsMaps          contained map
syntax keyword coffeeD3CollectionsSets          contained set
syntax keyword coffeeD3CollectionsNests         contained nest

syntax keyword coffeeD3Colors                   contained color rgb hsl lab hcl cubehelix
syntax keyword coffeeD3Dispatches               contained dispatch
syntax keyword coffeeD3Dragging                 contained drag dragDisable dragEnable
syntax keyword coffeeD3DelimiterSeparatedValues contained dsvFormat csvParse csvParseRows csvFormat csvFormatRows tsvParse tsvParseRows tsvFormat tsvFormatRows
syntax keyword coffeeD3Easings                  contained easeLinear easePolyIn easePolyOut easePolyInOut easeQuad easeQuadIn easeQuadOut easeQuadInOut easeCubic easeCubicIn easeCubicOut easeCubicInOut easeSin easeSinIn easeSinOut easeSinInOut easeExp easeExpIn easeExpOut easeExpInOut easeCircle easeCircleIn easeCircleOut easeCircleInOut easeElastic easeElasticIn easeElasticOut easeElasticInOut easeBack easeBackIn easeBackOut easeBackInOut easeBounce easeBounceIn easeBounceOut easeBounceInOut
syntax keyword coffeeD3Forces                   contained forceSimulation forceCenter forceCollide forceLink forceManyBody forceX forceY
syntax keyword coffeeD3NumberFormats            contained format formatPrefix formatSpecifier formatLocale formatDefaultLocale precisionFixed precisionPrefix precisionRound
syntax keyword coffeeD3Geographies              contained geoPath geoAlbers geoAlbersUsa geoAzimuthalEqualArea geoAzimuthalEquidistant geoConicConformal geoConicEqualArea geoConicEquidistant geoEquirectangular geoGnomonic geoMercator geoOrthographic geoStereographic geoTransverseMercator geoProjection geoProjectionMutator geoAzimuthalEqualAreaRaw geoAzimuthalEquidistantRaw geoConicConformalRaw geoConicEqualAreaRaw geoConicEquidistantRaw geoEquirectangularRaw geoGnomonicRaw geoMercatorRaw geoOrthographicRaw geoStereographicRaw geoTransverseMercatorRaw geoArea geoBounds geoCentroid geoDistance geoLength geoInterpolate geoRotation geoCircle geoGraticule geoClipExtent
syntax keyword coffeeD3GeographiesStreams       contained geoStream
syntax keyword coffeeD3GeographiesTransforms    contained geoIdentity geoTransform
syntax keyword coffeeD3Hierarchies              contained hierarchy stratify cluster tree treemap treemapBinary treemapDice treemapSlice treemapSliceDice treemapSquarify treemapResquarify partition pack packSiblings packEnclose
syntax keyword coffeeD3Interpolators            contained interpolate interpolateArray interpolateDate interpolateNumber interpolateObject interpolateRound interpolateString interpolateTransformCss interpolateTransformSvg interpolateZoom interpolateRgb interpolateRgbBasis interpolateRgbBasisClosed interpolateHsl interpolateHslLong interpolateLab interpolateHcl interpolateHclLong interpolateCubehelix interpolateCubehelixLong interpolateBasis interpolateBasisClosed quantize
syntax keyword coffeeD3Paths                    contained path
syntax keyword coffeeD3Polygons                 contained polygonArea polygonCentroid polygonHull polygonContains polygonLength
syntax keyword coffeeD3Quadtrees                contained quadtree
syntax keyword coffeeD3Queues                   contained queue
syntax keyword coffeeD3RandomNumbers            contained randomUniform randomNormal randomLogNormal randomBates randomIrwinHall randomExponential
syntax keyword coffeeD3Requests                 contained request csv html json text tsv xml
syntax keyword coffeeD3Scales                   contained scaleLinear scalePow scaleSqrt scaleLog scaleIdentity scaleTime scaleUtc scaleSequential interpolateViridis interpolateInferno interpolateMagma interpolatePlasma interpolateWarm interpolateCool interpolateRainbow interpolateCubehelixDefault scaleQuantize scaleQuantile scaleThreshold scaleOrdinal scaleImplicit scaleBand scalePoint schemeCategory10 schemeCategory20 schemeCategory20b schemeCategory20c
syntax keyword coffeeD3Selections               contained selection select selectAll matcher selector selectorAll window creator event customEvent mouse touch touches local namespace namespaces
syntax keyword coffeeD3Shapes                   contained arc pie line radialLine area radialArea curveBasis curveBasisClosed curveBasisOpen curveBundle curveCardinal curveCardinalClosed curveCardinalOpen curveCatmullRom curveCatmullRomClosed curveCatmullRomOpen curveLinear curveLinearClosed curveMonotoneX curveMonotoneY curveNatural curveStep curveStepAfter curveStepBefore symbol symbols symbolCircle symbolCross symbolDiamond symbolSquare symbolStar symbolTriangle symbolWye stack stackOrderAscending stackOrderDescending stackOrderInsideOut stackOrderNone stackOrderReverse stackOffsetExpand stackOffsetNone stackOffsetSilhouette stackOffsetWiggle
syntax keyword coffeeD3TimeFormats              contained timeFormat timeParse utcFormat utcParse isoFormat isoParse timeFormatLocale timeFormatDefaultLocale
syntax keyword coffeeD3TimeIntervals            contained timeInterval timeMillisecond utcMillisecond timeMilliseconds utcMilliseconds timeSecond utcSecond timeSeconds utcSeconds timeMinute utcMinute timeMinutes utcMinutes timeHour utcHour timeHours utcHours timeDay utcDay timeDays utcDays timeWeek utcWeek timeWeeks utcWeeks timeSunday utcSunday timeSundays utcSundays timeMonday utcMonday timeMondays utcMondays timeTuesday utcTuesday timeTuesdays utcTuesdays timeWednesday utcWednesday timeWednesdays utcWednesdays timeThursday utcThursday timeThursdays utcThursdays timeFriday utcFriday timeFridays utcFridays timeSaturday utcSaturday timeSaturdays utcSaturdays timeMonth utcMonth timeMonths utcMonths timeYear utcYear timeYears utcYears
syntax keyword coffeeD3Timers                   contained now timer timerFlush timeout interval
syntax keyword coffeeD3Transitions              contained transition active interrupt
syntax keyword coffeeD3VoronoiDiagrams          contained voronoi
syntax keyword coffeeD3Zooming                  contained zoom zoomTransform zoomIdentity

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_coffee_syntax_inits")
  if version < 508
    let did_underscore_coffee_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink coffeeD3                         Constant
  HiLink coffeeD3ArraysStatistics         PreProc
  HiLink coffeeD3ArraysSearch             PreProc
  HiLink coffeeD3ArraysTransformations    PreProc
  HiLink coffeeD3ArraysHistograms         PreProc
  HiLink coffeeD3Axes                     PreProc
  HiLink coffeeD3Brushes                  PreProc
  HiLink coffeeD3Chords                   PreProc
  HiLink coffeeD3CollectionsObjects       PreProc
  HiLink coffeeD3CollectionsMaps          PreProc
  HiLink coffeeD3CollectionsSets          PreProc
  HiLink coffeeD3CollectionsNests         PreProc
  HiLink coffeeD3Colors                   PreProc
  HiLink coffeeD3Dispatches               PreProc
  HiLink coffeeD3Dragging                 PreProc
  HiLink coffeeD3DelimiterSeparatedValues PreProc
  HiLink coffeeD3Easings                  PreProc
  HiLink coffeeD3Forces                   PreProc
  HiLink coffeeD3NumberFormats            PreProc
  HiLink coffeeD3Geographies              PreProc
  HiLink coffeeD3GeographiesStreams       PreProc
  HiLink coffeeD3GeographiesTransforms    PreProc
  HiLink coffeeD3Hierarchies              PreProc
  HiLink coffeeD3Interpolators            PreProc
  HiLink coffeeD3Paths                    PreProc
  HiLink coffeeD3Polygons                 PreProc
  HiLink coffeeD3Quadtrees                PreProc
  HiLink coffeeD3Queues                   PreProc
  HiLink coffeeD3RandomNumbers            PreProc
  HiLink coffeeD3Requests                 PreProc
  HiLink coffeeD3Scales                   PreProc
  HiLink coffeeD3Selections               PreProc
  HiLink coffeeD3Shapes                   PreProc
  HiLink coffeeD3TimeFormats              PreProc
  HiLink coffeeD3TimeIntervals            PreProc
  HiLink coffeeD3Timers                   PreProc
  HiLink coffeeD3Transitions              PreProc
  HiLink coffeeD3VoronoiDiagrams          PreProc
  HiLink coffeeD3Zooming                  PreProc

  delcommand HiLink
endif


