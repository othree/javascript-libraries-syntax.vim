" Vim syntax file
" Language:    d3.v4 for javascript
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Sfinktah <sfinktah@othree.spamtrak.org>
" Last Change: 2016/11/11
" Version:     4.2.8.0
" URL:         https://github.com/d3/d3/blob/master/API.md

syntax keyword javascriptD3 d3                      containedin=ALLBUT,javascriptComment,javascriptLineComment,javascriptString,javascriptTemplate,javascriptTemplateSubstitution
syntax cluster javascript_Functions                 contains=@javascriptD3Arrays,javascriptD3Axes,javascriptD3Brushes,javascriptD3Chords,@javascriptD3Collections,javascriptD3Colors,javascriptD3Dispatches,javascriptD3Dragging,javascriptD3DelimiterSeparatedValues,javascriptD3Easings,javascriptD3Forces,javascriptD3NumberFormats,javascriptD3Geographies,javascriptD3GeographiesStreams,javascriptD3GeographiesTransforms,javascriptD3Hierarchies,javascriptD3Interpolators,javascriptD3Paths,javascriptD3Polygons,javascriptD3Quadtrees,javascriptD3Queues,javascriptD3RandomNumbers,javascriptD3Requests,javascriptD3Scales,javascriptD3Selections,javascriptD3Shapes,javascriptD3TimeFormats,javascriptD3TimeIntervals,javascriptD3Timers,javascriptD3Transitions,javascriptD3VoronoiDiagrams,javascriptD3Zooming

syntax cluster javascriptD3Arrays	                  contains=javascriptD3ArraysStatistics,javascriptD3ArraysSearch,javascriptD3ArraysTransformations,javascriptD3ArraysHistograms,javascriptD3Axes,javascriptD3Arrays
syntax keyword javascriptD3ArraysStatistics         contained min max extent sum mean median quantile variance deviation
syntax keyword javascriptD3ArraysSearch             contained scan bisect bisectRight bisectLeft bisector ascending descending
syntax keyword javascriptD3ArraysTransformations    contained merge pairs permute shuffle ticks tickStep range transpose zip
syntax keyword javascriptD3ArraysHistograms         contained histogram thresholdFreedmanDiaconis thresholdScott thresholdSturges
syntax keyword javascriptD3Axes                     contained axisTop axisRight axisBottom axisLeft
syntax keyword javascriptD3Brushes                  contained brush brushX brushY brushSelection
syntax keyword javascriptD3Chords                   contained chord ribbon

syntax cluster javascriptD3Collections              contains=javascriptD3CollectionsObjects,javascriptD3CollectionsMaps,javascriptD3CollectionsSets,javascriptD3CollectionsNests
syntax keyword javascriptD3CollectionsObjects       contained keys values entries
syntax keyword javascriptD3CollectionsMaps          contained map
syntax keyword javascriptD3CollectionsSets          contained set
syntax keyword javascriptD3CollectionsNests         contained nest

syntax keyword javascriptD3Colors                   contained color rgb hsl lab hcl cubehelix
syntax keyword javascriptD3Dispatches               contained dispatch
syntax keyword javascriptD3Dragging                 contained drag dragDisable dragEnable
syntax keyword javascriptD3DelimiterSeparatedValues contained dsvFormat csvParse csvParseRows csvFormat csvFormatRows tsvParse tsvParseRows tsvFormat tsvFormatRows
syntax keyword javascriptD3Easings                  contained easeLinear easePolyIn easePolyOut easePolyInOut easeQuad easeQuadIn easeQuadOut easeQuadInOut easeCubic easeCubicIn easeCubicOut easeCubicInOut easeSin easeSinIn easeSinOut easeSinInOut easeExp easeExpIn easeExpOut easeExpInOut easeCircle easeCircleIn easeCircleOut easeCircleInOut easeElastic easeElasticIn easeElasticOut easeElasticInOut easeBack easeBackIn easeBackOut easeBackInOut easeBounce easeBounceIn easeBounceOut easeBounceInOut
syntax keyword javascriptD3Forces                   contained forceSimulation forceCenter forceCollide forceLink forceManyBody forceX forceY
syntax keyword javascriptD3NumberFormats            contained format formatPrefix formatSpecifier formatLocale formatDefaultLocale precisionFixed precisionPrefix precisionRound
syntax keyword javascriptD3Geographies              contained geoPath geoAlbers geoAlbersUsa geoAzimuthalEqualArea geoAzimuthalEquidistant geoConicConformal geoConicEqualArea geoConicEquidistant geoEquirectangular geoGnomonic geoMercator geoOrthographic geoStereographic geoTransverseMercator geoProjection geoProjectionMutator geoAzimuthalEqualAreaRaw geoAzimuthalEquidistantRaw geoConicConformalRaw geoConicEqualAreaRaw geoConicEquidistantRaw geoEquirectangularRaw geoGnomonicRaw geoMercatorRaw geoOrthographicRaw geoStereographicRaw geoTransverseMercatorRaw geoArea geoBounds geoCentroid geoDistance geoLength geoInterpolate geoRotation geoCircle geoGraticule geoClipExtent
syntax keyword javascriptD3GeographiesStreams       contained geoStream
syntax keyword javascriptD3GeographiesTransforms    contained geoIdentity geoTransform
syntax keyword javascriptD3Hierarchies              contained hierarchy stratify cluster tree treemap treemapBinary treemapDice treemapSlice treemapSliceDice treemapSquarify treemapResquarify partition pack packSiblings packEnclose
syntax keyword javascriptD3Interpolators            contained interpolate interpolateArray interpolateDate interpolateNumber interpolateObject interpolateRound interpolateString interpolateTransformCss interpolateTransformSvg interpolateZoom interpolateRgb interpolateRgbBasis interpolateRgbBasisClosed interpolateHsl interpolateHslLong interpolateLab interpolateHcl interpolateHclLong interpolateCubehelix interpolateCubehelixLong interpolateBasis interpolateBasisClosed quantize
syntax keyword javascriptD3Paths                    contained path
syntax keyword javascriptD3Polygons                 contained polygonArea polygonCentroid polygonHull polygonContains polygonLength
syntax keyword javascriptD3Quadtrees                contained quadtree
syntax keyword javascriptD3Queues                   contained queue
syntax keyword javascriptD3RandomNumbers            contained randomUniform randomNormal randomLogNormal randomBates randomIrwinHall randomExponential
syntax keyword javascriptD3Requests                 contained request csv html json text tsv xml
syntax keyword javascriptD3Scales                   contained scaleLinear scalePow scaleSqrt scaleLog scaleIdentity scaleTime scaleUtc scaleSequential interpolateViridis interpolateInferno interpolateMagma interpolatePlasma interpolateWarm interpolateCool interpolateRainbow interpolateCubehelixDefault scaleQuantize scaleQuantile scaleThreshold scaleOrdinal scaleImplicit scaleBand scalePoint schemeCategory10 schemeCategory20 schemeCategory20b schemeCategory20c
syntax keyword javascriptD3Selections               contained selection select selectAll matcher selector selectorAll window creator event customEvent mouse touch touches local namespace namespaces
syntax keyword javascriptD3Shapes                   contained arc pie line radialLine area radialArea curveBasis curveBasisClosed curveBasisOpen curveBundle curveCardinal curveCardinalClosed curveCardinalOpen curveCatmullRom curveCatmullRomClosed curveCatmullRomOpen curveLinear curveLinearClosed curveMonotoneX curveMonotoneY curveNatural curveStep curveStepAfter curveStepBefore symbol symbols symbolCircle symbolCross symbolDiamond symbolSquare symbolStar symbolTriangle symbolWye stack stackOrderAscending stackOrderDescending stackOrderInsideOut stackOrderNone stackOrderReverse stackOffsetExpand stackOffsetNone stackOffsetSilhouette stackOffsetWiggle
syntax keyword javascriptD3TimeFormats              contained timeFormat timeParse utcFormat utcParse isoFormat isoParse timeFormatLocale timeFormatDefaultLocale
syntax keyword javascriptD3TimeIntervals            contained timeInterval timeMillisecond utcMillisecond timeMilliseconds utcMilliseconds timeSecond utcSecond timeSeconds utcSeconds timeMinute utcMinute timeMinutes utcMinutes timeHour utcHour timeHours utcHours timeDay utcDay timeDays utcDays timeWeek utcWeek timeWeeks utcWeeks timeSunday utcSunday timeSundays utcSundays timeMonday utcMonday timeMondays utcMondays timeTuesday utcTuesday timeTuesdays utcTuesdays timeWednesday utcWednesday timeWednesdays utcWednesdays timeThursday utcThursday timeThursdays utcThursdays timeFriday utcFriday timeFridays utcFridays timeSaturday utcSaturday timeSaturdays utcSaturdays timeMonth utcMonth timeMonths utcMonths timeYear utcYear timeYears utcYears
syntax keyword javascriptD3Timers                   contained now timer timerFlush timeout interval
syntax keyword javascriptD3Transitions              contained transition active interrupt
syntax keyword javascriptD3VoronoiDiagrams          contained voronoi
syntax keyword javascriptD3Zooming                  contained zoom zoomTransform zoomIdentity

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_javascript_syntax_inits")
  if version < 508
    let did_underscore_javascript_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink javascriptD3                         Constant
  HiLink javascriptD3ArraysStatistics         PreProc
  HiLink javascriptD3ArraysSearch             PreProc
  HiLink javascriptD3ArraysTransformations    PreProc
  HiLink javascriptD3ArraysHistograms         PreProc
  HiLink javascriptD3Axes                     PreProc
  HiLink javascriptD3Brushes                  PreProc
  HiLink javascriptD3Chords                   PreProc
  HiLink javascriptD3CollectionsObjects       PreProc
  HiLink javascriptD3CollectionsMaps          PreProc
  HiLink javascriptD3CollectionsSets          PreProc
  HiLink javascriptD3CollectionsNests         PreProc
  HiLink javascriptD3Colors                   PreProc
  HiLink javascriptD3Dispatches               PreProc
  HiLink javascriptD3Dragging                 PreProc
  HiLink javascriptD3DelimiterSeparatedValues PreProc
  HiLink javascriptD3Easings                  PreProc
  HiLink javascriptD3Forces                   PreProc
  HiLink javascriptD3NumberFormats            PreProc
  HiLink javascriptD3Geographies              PreProc
  HiLink javascriptD3GeographiesStreams       PreProc
  HiLink javascriptD3GeographiesTransforms    PreProc
  HiLink javascriptD3Hierarchies              PreProc
  HiLink javascriptD3Interpolators            PreProc
  HiLink javascriptD3Paths                    PreProc
  HiLink javascriptD3Polygons                 PreProc
  HiLink javascriptD3Quadtrees                PreProc
  HiLink javascriptD3Queues                   PreProc
  HiLink javascriptD3RandomNumbers            PreProc
  HiLink javascriptD3Requests                 PreProc
  HiLink javascriptD3Scales                   PreProc
  HiLink javascriptD3Selections               PreProc
  HiLink javascriptD3Shapes                   PreProc
  HiLink javascriptD3TimeFormats              PreProc
  HiLink javascriptD3TimeIntervals            PreProc
  HiLink javascriptD3Timers                   PreProc
  HiLink javascriptD3Transitions              PreProc
  HiLink javascriptD3VoronoiDiagrams          PreProc
  HiLink javascriptD3Zooming                  PreProc

  delcommand HiLink
endif


