" Vim syntax file
" Language:    d3.v4 for typescript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Sfinktah <sfinktah@othree.spamtrak.org>
" Last Change: 2016/11/11
" Version:     4.2.8.0
" URL:         https://github.com/d3/d3/blob/master/API.md

syntax keyword typescriptD3 d3                      containedin=ALLBUT,typescriptComment,typescriptLineComment,typescriptString,typescriptTemplate,typescriptTemplateSubstitution
syntax cluster typescript_Functions                 contains=@typescriptD3Arrays,typescriptD3Axes,typescriptD3Brushes,typescriptD3Chords,@typescriptD3Collections,typescriptD3Colors,typescriptD3Dispatches,typescriptD3Dragging,typescriptD3DelimiterSeparatedValues,typescriptD3Easings,typescriptD3Forces,typescriptD3NumberFormats,typescriptD3Geographies,typescriptD3GeographiesStreams,typescriptD3GeographiesTransforms,typescriptD3Hierarchies,typescriptD3Interpolators,typescriptD3Paths,typescriptD3Polygons,typescriptD3Quadtrees,typescriptD3Queues,typescriptD3RandomNumbers,typescriptD3Requests,typescriptD3Scales,typescriptD3Selections,typescriptD3Shapes,typescriptD3TimeFormats,typescriptD3TimeIntervals,typescriptD3Timers,typescriptD3Transitions,typescriptD3VoronoiDiagrams,typescriptD3Zooming

syntax cluster typescriptD3Arrays	                  contains=typescriptD3ArraysStatistics,typescriptD3ArraysSearch,typescriptD3ArraysTransformations,typescriptD3ArraysHistograms,typescriptD3Axes,typescriptD3Arrays
syntax keyword typescriptD3ArraysStatistics         contained min max extent sum mean median quantile variance deviation
syntax keyword typescriptD3ArraysSearch             contained scan bisect bisectRight bisectLeft bisector ascending descending
syntax keyword typescriptD3ArraysTransformations    contained merge pairs permute shuffle ticks tickStep range transpose zip
syntax keyword typescriptD3ArraysHistograms         contained histogram thresholdFreedmanDiaconis thresholdScott thresholdSturges
syntax keyword typescriptD3Axes                     contained axisTop axisRight axisBottom axisLeft
syntax keyword typescriptD3Brushes                  contained brush brushX brushY brushSelection
syntax keyword typescriptD3Chords                   contained chord ribbon

syntax cluster typescriptD3Collections              contains=typescriptD3CollectionsObjects,typescriptD3CollectionsMaps,typescriptD3CollectionsSets,typescriptD3CollectionsNests
syntax keyword typescriptD3CollectionsObjects       contained keys values entries
syntax keyword typescriptD3CollectionsMaps          contained map
syntax keyword typescriptD3CollectionsSets          contained set
syntax keyword typescriptD3CollectionsNests         contained nest

syntax keyword typescriptD3Colors                   contained color rgb hsl lab hcl cubehelix
syntax keyword typescriptD3Dispatches               contained dispatch
syntax keyword typescriptD3Dragging                 contained drag dragDisable dragEnable
syntax keyword typescriptD3DelimiterSeparatedValues contained dsvFormat csvParse csvParseRows csvFormat csvFormatRows tsvParse tsvParseRows tsvFormat tsvFormatRows
syntax keyword typescriptD3Easings                  contained easeLinear easePolyIn easePolyOut easePolyInOut easeQuad easeQuadIn easeQuadOut easeQuadInOut easeCubic easeCubicIn easeCubicOut easeCubicInOut easeSin easeSinIn easeSinOut easeSinInOut easeExp easeExpIn easeExpOut easeExpInOut easeCircle easeCircleIn easeCircleOut easeCircleInOut easeElastic easeElasticIn easeElasticOut easeElasticInOut easeBack easeBackIn easeBackOut easeBackInOut easeBounce easeBounceIn easeBounceOut easeBounceInOut
syntax keyword typescriptD3Forces                   contained forceSimulation forceCenter forceCollide forceLink forceManyBody forceX forceY
syntax keyword typescriptD3NumberFormats            contained format formatPrefix formatSpecifier formatLocale formatDefaultLocale precisionFixed precisionPrefix precisionRound
syntax keyword typescriptD3Geographies              contained geoPath geoAlbers geoAlbersUsa geoAzimuthalEqualArea geoAzimuthalEquidistant geoConicConformal geoConicEqualArea geoConicEquidistant geoEquirectangular geoGnomonic geoMercator geoOrthographic geoStereographic geoTransverseMercator geoProjection geoProjectionMutator geoAzimuthalEqualAreaRaw geoAzimuthalEquidistantRaw geoConicConformalRaw geoConicEqualAreaRaw geoConicEquidistantRaw geoEquirectangularRaw geoGnomonicRaw geoMercatorRaw geoOrthographicRaw geoStereographicRaw geoTransverseMercatorRaw geoArea geoBounds geoCentroid geoDistance geoLength geoInterpolate geoRotation geoCircle geoGraticule geoClipExtent
syntax keyword typescriptD3GeographiesStreams       contained geoStream
syntax keyword typescriptD3GeographiesTransforms    contained geoIdentity geoTransform
syntax keyword typescriptD3Hierarchies              contained hierarchy stratify cluster tree treemap treemapBinary treemapDice treemapSlice treemapSliceDice treemapSquarify treemapResquarify partition pack packSiblings packEnclose
syntax keyword typescriptD3Interpolators            contained interpolate interpolateArray interpolateDate interpolateNumber interpolateObject interpolateRound interpolateString interpolateTransformCss interpolateTransformSvg interpolateZoom interpolateRgb interpolateRgbBasis interpolateRgbBasisClosed interpolateHsl interpolateHslLong interpolateLab interpolateHcl interpolateHclLong interpolateCubehelix interpolateCubehelixLong interpolateBasis interpolateBasisClosed quantize
syntax keyword typescriptD3Paths                    contained path
syntax keyword typescriptD3Polygons                 contained polygonArea polygonCentroid polygonHull polygonContains polygonLength
syntax keyword typescriptD3Quadtrees                contained quadtree
syntax keyword typescriptD3Queues                   contained queue
syntax keyword typescriptD3RandomNumbers            contained randomUniform randomNormal randomLogNormal randomBates randomIrwinHall randomExponential
syntax keyword typescriptD3Requests                 contained request csv html json text tsv xml
syntax keyword typescriptD3Scales                   contained scaleLinear scalePow scaleSqrt scaleLog scaleIdentity scaleTime scaleUtc scaleSequential interpolateViridis interpolateInferno interpolateMagma interpolatePlasma interpolateWarm interpolateCool interpolateRainbow interpolateCubehelixDefault scaleQuantize scaleQuantile scaleThreshold scaleOrdinal scaleImplicit scaleBand scalePoint schemeCategory10 schemeCategory20 schemeCategory20b schemeCategory20c
syntax keyword typescriptD3Selections               contained selection select selectAll matcher selector selectorAll window creator event customEvent mouse touch touches local namespace namespaces
syntax keyword typescriptD3Shapes                   contained arc pie line radialLine area radialArea curveBasis curveBasisClosed curveBasisOpen curveBundle curveCardinal curveCardinalClosed curveCardinalOpen curveCatmullRom curveCatmullRomClosed curveCatmullRomOpen curveLinear curveLinearClosed curveMonotoneX curveMonotoneY curveNatural curveStep curveStepAfter curveStepBefore symbol symbols symbolCircle symbolCross symbolDiamond symbolSquare symbolStar symbolTriangle symbolWye stack stackOrderAscending stackOrderDescending stackOrderInsideOut stackOrderNone stackOrderReverse stackOffsetExpand stackOffsetNone stackOffsetSilhouette stackOffsetWiggle
syntax keyword typescriptD3TimeFormats              contained timeFormat timeParse utcFormat utcParse isoFormat isoParse timeFormatLocale timeFormatDefaultLocale
syntax keyword typescriptD3TimeIntervals            contained timeInterval timeMillisecond utcMillisecond timeMilliseconds utcMilliseconds timeSecond utcSecond timeSeconds utcSeconds timeMinute utcMinute timeMinutes utcMinutes timeHour utcHour timeHours utcHours timeDay utcDay timeDays utcDays timeWeek utcWeek timeWeeks utcWeeks timeSunday utcSunday timeSundays utcSundays timeMonday utcMonday timeMondays utcMondays timeTuesday utcTuesday timeTuesdays utcTuesdays timeWednesday utcWednesday timeWednesdays utcWednesdays timeThursday utcThursday timeThursdays utcThursdays timeFriday utcFriday timeFridays utcFridays timeSaturday utcSaturday timeSaturdays utcSaturdays timeMonth utcMonth timeMonths utcMonths timeYear utcYear timeYears utcYears
syntax keyword typescriptD3Timers                   contained now timer timerFlush timeout interval
syntax keyword typescriptD3Transitions              contained transition active interrupt
syntax keyword typescriptD3VoronoiDiagrams          contained voronoi
syntax keyword typescriptD3Zooming                  contained zoom zoomTransform zoomIdentity

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_typescript_syntax_inits")
  if version < 508
    let did_underscore_typescript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink typescriptD3                         Constant
  HiLink typescriptD3ArraysStatistics         PreProc
  HiLink typescriptD3ArraysSearch             PreProc
  HiLink typescriptD3ArraysTransformations    PreProc
  HiLink typescriptD3ArraysHistograms         PreProc
  HiLink typescriptD3Axes                     PreProc
  HiLink typescriptD3Brushes                  PreProc
  HiLink typescriptD3Chords                   PreProc
  HiLink typescriptD3CollectionsObjects       PreProc
  HiLink typescriptD3CollectionsMaps          PreProc
  HiLink typescriptD3CollectionsSets          PreProc
  HiLink typescriptD3CollectionsNests         PreProc
  HiLink typescriptD3Colors                   PreProc
  HiLink typescriptD3Dispatches               PreProc
  HiLink typescriptD3Dragging                 PreProc
  HiLink typescriptD3DelimiterSeparatedValues PreProc
  HiLink typescriptD3Easings                  PreProc
  HiLink typescriptD3Forces                   PreProc
  HiLink typescriptD3NumberFormats            PreProc
  HiLink typescriptD3Geographies              PreProc
  HiLink typescriptD3GeographiesStreams       PreProc
  HiLink typescriptD3GeographiesTransforms    PreProc
  HiLink typescriptD3Hierarchies              PreProc
  HiLink typescriptD3Interpolators            PreProc
  HiLink typescriptD3Paths                    PreProc
  HiLink typescriptD3Polygons                 PreProc
  HiLink typescriptD3Quadtrees                PreProc
  HiLink typescriptD3Queues                   PreProc
  HiLink typescriptD3RandomNumbers            PreProc
  HiLink typescriptD3Requests                 PreProc
  HiLink typescriptD3Scales                   PreProc
  HiLink typescriptD3Selections               PreProc
  HiLink typescriptD3Shapes                   PreProc
  HiLink typescriptD3TimeFormats              PreProc
  HiLink typescriptD3TimeIntervals            PreProc
  HiLink typescriptD3Timers                   PreProc
  HiLink typescriptD3Transitions              PreProc
  HiLink typescriptD3VoronoiDiagrams          PreProc
  HiLink typescriptD3Zooming                  PreProc

  delcommand HiLink
endif


