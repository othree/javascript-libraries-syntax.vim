" Vim syntax file
" Language:    d3.v4 for ls
" Maintainer:  othree <othree@gmail.com>
" Maintainer:  Sfinktah <sfinktah@othree.spamtrak.org>
" Last Change: 2016/11/11
" Version:     4.2.8.0
" URL:         https://github.com/d3/d3/blob/master/API.md

syntax keyword lsD3 d3                      containedin=ALLBUT,lsComment,lsLineComment,lsString,lsTemplate,lsTemplateSubstitution
syntax cluster ls_Functions                 contains=@lsD3Arrays,lsD3Axes,lsD3Brushes,lsD3Chords,@lsD3Collections,lsD3Colors,lsD3Dispatches,lsD3Dragging,lsD3DelimiterSeparatedValues,lsD3Easings,lsD3Forces,lsD3NumberFormats,lsD3Geographies,lsD3GeographiesStreams,lsD3GeographiesTransforms,lsD3Hierarchies,lsD3Interpolators,lsD3Paths,lsD3Polygons,lsD3Quadtrees,lsD3Queues,lsD3RandomNumbers,lsD3Requests,lsD3Scales,lsD3Selections,lsD3Shapes,lsD3TimeFormats,lsD3TimeIntervals,lsD3Timers,lsD3Transitions,lsD3VoronoiDiagrams,lsD3Zooming

syntax cluster lsD3Arrays	                  contains=lsD3ArraysStatistics,lsD3ArraysSearch,lsD3ArraysTransformations,lsD3ArraysHistograms,lsD3Axes,lsD3Arrays
syntax keyword lsD3ArraysStatistics         contained min max extent sum mean median quantile variance deviation
syntax keyword lsD3ArraysSearch             contained scan bisect bisectRight bisectLeft bisector ascending descending
syntax keyword lsD3ArraysTransformations    contained merge pairs permute shuffle ticks tickStep range transpose zip
syntax keyword lsD3ArraysHistograms         contained histogram thresholdFreedmanDiaconis thresholdScott thresholdSturges
syntax keyword lsD3Axes                     contained axisTop axisRight axisBottom axisLeft
syntax keyword lsD3Brushes                  contained brush brushX brushY brushSelection
syntax keyword lsD3Chords                   contained chord ribbon

syntax cluster lsD3Collections              contains=lsD3CollectionsObjects,lsD3CollectionsMaps,lsD3CollectionsSets,lsD3CollectionsNests
syntax keyword lsD3CollectionsObjects       contained keys values entries
syntax keyword lsD3CollectionsMaps          contained map
syntax keyword lsD3CollectionsSets          contained set
syntax keyword lsD3CollectionsNests         contained nest

syntax keyword lsD3Colors                   contained color rgb hsl lab hcl cubehelix
syntax keyword lsD3Dispatches               contained dispatch
syntax keyword lsD3Dragging                 contained drag dragDisable dragEnable
syntax keyword lsD3DelimiterSeparatedValues contained dsvFormat csvParse csvParseRows csvFormat csvFormatRows tsvParse tsvParseRows tsvFormat tsvFormatRows
syntax keyword lsD3Easings                  contained easeLinear easePolyIn easePolyOut easePolyInOut easeQuad easeQuadIn easeQuadOut easeQuadInOut easeCubic easeCubicIn easeCubicOut easeCubicInOut easeSin easeSinIn easeSinOut easeSinInOut easeExp easeExpIn easeExpOut easeExpInOut easeCircle easeCircleIn easeCircleOut easeCircleInOut easeElastic easeElasticIn easeElasticOut easeElasticInOut easeBack easeBackIn easeBackOut easeBackInOut easeBounce easeBounceIn easeBounceOut easeBounceInOut
syntax keyword lsD3Forces                   contained forceSimulation forceCenter forceCollide forceLink forceManyBody forceX forceY
syntax keyword lsD3NumberFormats            contained format formatPrefix formatSpecifier formatLocale formatDefaultLocale precisionFixed precisionPrefix precisionRound
syntax keyword lsD3Geographies              contained geoPath geoAlbers geoAlbersUsa geoAzimuthalEqualArea geoAzimuthalEquidistant geoConicConformal geoConicEqualArea geoConicEquidistant geoEquirectangular geoGnomonic geoMercator geoOrthographic geoStereographic geoTransverseMercator geoProjection geoProjectionMutator geoAzimuthalEqualAreaRaw geoAzimuthalEquidistantRaw geoConicConformalRaw geoConicEqualAreaRaw geoConicEquidistantRaw geoEquirectangularRaw geoGnomonicRaw geoMercatorRaw geoOrthographicRaw geoStereographicRaw geoTransverseMercatorRaw geoArea geoBounds geoCentroid geoDistance geoLength geoInterpolate geoRotation geoCircle geoGraticule geoClipExtent
syntax keyword lsD3GeographiesStreams       contained geoStream
syntax keyword lsD3GeographiesTransforms    contained geoIdentity geoTransform
syntax keyword lsD3Hierarchies              contained hierarchy stratify cluster tree treemap treemapBinary treemapDice treemapSlice treemapSliceDice treemapSquarify treemapResquarify partition pack packSiblings packEnclose
syntax keyword lsD3Interpolators            contained interpolate interpolateArray interpolateDate interpolateNumber interpolateObject interpolateRound interpolateString interpolateTransformCss interpolateTransformSvg interpolateZoom interpolateRgb interpolateRgbBasis interpolateRgbBasisClosed interpolateHsl interpolateHslLong interpolateLab interpolateHcl interpolateHclLong interpolateCubehelix interpolateCubehelixLong interpolateBasis interpolateBasisClosed quantize
syntax keyword lsD3Paths                    contained path
syntax keyword lsD3Polygons                 contained polygonArea polygonCentroid polygonHull polygonContains polygonLength
syntax keyword lsD3Quadtrees                contained quadtree
syntax keyword lsD3Queues                   contained queue
syntax keyword lsD3RandomNumbers            contained randomUniform randomNormal randomLogNormal randomBates randomIrwinHall randomExponential
syntax keyword lsD3Requests                 contained request csv html json text tsv xml
syntax keyword lsD3Scales                   contained scaleLinear scalePow scaleSqrt scaleLog scaleIdentity scaleTime scaleUtc scaleSequential interpolateViridis interpolateInferno interpolateMagma interpolatePlasma interpolateWarm interpolateCool interpolateRainbow interpolateCubehelixDefault scaleQuantize scaleQuantile scaleThreshold scaleOrdinal scaleImplicit scaleBand scalePoint schemeCategory10 schemeCategory20 schemeCategory20b schemeCategory20c
syntax keyword lsD3Selections               contained selection select selectAll matcher selector selectorAll window creator event customEvent mouse touch touches local namespace namespaces
syntax keyword lsD3Shapes                   contained arc pie line radialLine area radialArea curveBasis curveBasisClosed curveBasisOpen curveBundle curveCardinal curveCardinalClosed curveCardinalOpen curveCatmullRom curveCatmullRomClosed curveCatmullRomOpen curveLinear curveLinearClosed curveMonotoneX curveMonotoneY curveNatural curveStep curveStepAfter curveStepBefore symbol symbols symbolCircle symbolCross symbolDiamond symbolSquare symbolStar symbolTriangle symbolWye stack stackOrderAscending stackOrderDescending stackOrderInsideOut stackOrderNone stackOrderReverse stackOffsetExpand stackOffsetNone stackOffsetSilhouette stackOffsetWiggle
syntax keyword lsD3TimeFormats              contained timeFormat timeParse utcFormat utcParse isoFormat isoParse timeFormatLocale timeFormatDefaultLocale
syntax keyword lsD3TimeIntervals            contained timeInterval timeMillisecond utcMillisecond timeMilliseconds utcMilliseconds timeSecond utcSecond timeSeconds utcSeconds timeMinute utcMinute timeMinutes utcMinutes timeHour utcHour timeHours utcHours timeDay utcDay timeDays utcDays timeWeek utcWeek timeWeeks utcWeeks timeSunday utcSunday timeSundays utcSundays timeMonday utcMonday timeMondays utcMondays timeTuesday utcTuesday timeTuesdays utcTuesdays timeWednesday utcWednesday timeWednesdays utcWednesdays timeThursday utcThursday timeThursdays utcThursdays timeFriday utcFriday timeFridays utcFridays timeSaturday utcSaturday timeSaturdays utcSaturdays timeMonth utcMonth timeMonths utcMonths timeYear utcYear timeYears utcYears
syntax keyword lsD3Timers                   contained now timer timerFlush timeout interval
syntax keyword lsD3Transitions              contained transition active interrupt
syntax keyword lsD3VoronoiDiagrams          contained voronoi
syntax keyword lsD3Zooming                  contained zoom zoomTransform zoomIdentity

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_underscore_ls_syntax_inits")
  if version < 508
    let did_underscore_ls_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink lsD3                         Constant
  HiLink lsD3ArraysStatistics         PreProc
  HiLink lsD3ArraysSearch             PreProc
  HiLink lsD3ArraysTransformations    PreProc
  HiLink lsD3ArraysHistograms         PreProc
  HiLink lsD3Axes                     PreProc
  HiLink lsD3Brushes                  PreProc
  HiLink lsD3Chords                   PreProc
  HiLink lsD3CollectionsObjects       PreProc
  HiLink lsD3CollectionsMaps          PreProc
  HiLink lsD3CollectionsSets          PreProc
  HiLink lsD3CollectionsNests         PreProc
  HiLink lsD3Colors                   PreProc
  HiLink lsD3Dispatches               PreProc
  HiLink lsD3Dragging                 PreProc
  HiLink lsD3DelimiterSeparatedValues PreProc
  HiLink lsD3Easings                  PreProc
  HiLink lsD3Forces                   PreProc
  HiLink lsD3NumberFormats            PreProc
  HiLink lsD3Geographies              PreProc
  HiLink lsD3GeographiesStreams       PreProc
  HiLink lsD3GeographiesTransforms    PreProc
  HiLink lsD3Hierarchies              PreProc
  HiLink lsD3Interpolators            PreProc
  HiLink lsD3Paths                    PreProc
  HiLink lsD3Polygons                 PreProc
  HiLink lsD3Quadtrees                PreProc
  HiLink lsD3Queues                   PreProc
  HiLink lsD3RandomNumbers            PreProc
  HiLink lsD3Requests                 PreProc
  HiLink lsD3Scales                   PreProc
  HiLink lsD3Selections               PreProc
  HiLink lsD3Shapes                   PreProc
  HiLink lsD3TimeFormats              PreProc
  HiLink lsD3TimeIntervals            PreProc
  HiLink lsD3Timers                   PreProc
  HiLink lsD3Transitions              PreProc
  HiLink lsD3VoronoiDiagrams          PreProc
  HiLink lsD3Zooming                  PreProc

  delcommand HiLink
endif


