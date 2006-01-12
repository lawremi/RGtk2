pangoColorGetRed <-
function(obj)
{
  checkPtrType(obj, 'PangoColor')
  v <- .Call('S_PangoColorGetRed', obj)
  v
} 
pangoColorGetGreen <-
function(obj)
{
  checkPtrType(obj, 'PangoColor')
  v <- .Call('S_PangoColorGetGreen', obj)
  v
} 
pangoColorGetBlue <-
function(obj)
{
  checkPtrType(obj, 'PangoColor')
  v <- .Call('S_PangoColorGetBlue', obj)
  v
} 
pangoGlyphStringGetNumGlyphs <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphString')
  v <- .Call('S_PangoGlyphStringGetNumGlyphs', obj)
  v
} 
pangoGlyphStringGetGlyphs <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphString')
  v <- .Call('S_PangoGlyphStringGetGlyphs', obj)
  v
} 
pangoGlyphStringGetLogClusters <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphString')
  v <- .Call('S_PangoGlyphStringGetLogClusters', obj)
  v
} 
pangoItemGetOffset <-
function(obj)
{
  checkPtrType(obj, 'PangoItem')
  v <- .Call('S_PangoItemGetOffset', obj)
  v
} 
pangoItemGetLength <-
function(obj)
{
  checkPtrType(obj, 'PangoItem')
  v <- .Call('S_PangoItemGetLength', obj)
  v
} 
pangoItemGetNumChars <-
function(obj)
{
  checkPtrType(obj, 'PangoItem')
  v <- .Call('S_PangoItemGetNumChars', obj)
  v
} 
pangoItemGetAnalysis <-
function(obj)
{
  checkPtrType(obj, 'PangoItem')
  v <- .Call('S_PangoItemGetAnalysis', obj)
  v
} 
pangoLayoutLineGetLayout <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetLayout', obj)
  v
} 
pangoLayoutLineGetStartIndex <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetStartIndex', obj)
  v
} 
pangoLayoutLineGetLength <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetLength', obj)
  v
} 
pangoLayoutLineGetRuns <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetRuns', obj)
  v
} 
pangoLayoutLineGetIsParagraphStart <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetIsParagraphStart', obj)
  v
} 
pangoLayoutLineGetResolvedDir <-
function(obj)
{
  checkPtrType(obj, 'PangoLayoutLine')
  v <- .Call('S_PangoLayoutLineGetResolvedDir', obj)
  v
} 
pangoAnalysisGetFont <-
function(obj)
{
  checkPtrType(obj, 'PangoAnalysis')
  v <- .Call('S_PangoAnalysisGetFont', obj)
  v
} 
pangoAnalysisGetLevel <-
function(obj)
{
  checkPtrType(obj, 'PangoAnalysis')
  v <- .Call('S_PangoAnalysisGetLevel', obj)
  v
} 
pangoAnalysisGetLanguage <-
function(obj)
{
  checkPtrType(obj, 'PangoAnalysis')
  v <- .Call('S_PangoAnalysisGetLanguage', obj)
  v
} 
pangoAnalysisGetExtraAttrs <-
function(obj)
{
  checkPtrType(obj, 'PangoAnalysis')
  v <- .Call('S_PangoAnalysisGetExtraAttrs', obj)
  v
} 
pangoLogAttrGetIsLineBreak <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsLineBreak', obj)
  v
} 
pangoLogAttrGetIsMandatoryBreak <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsMandatoryBreak', obj)
  v
} 
pangoLogAttrGetIsCharBreak <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsCharBreak', obj)
  v
} 
pangoLogAttrGetIsWhite <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsWhite', obj)
  v
} 
pangoLogAttrGetIsCursorPosition <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsCursorPosition', obj)
  v
} 
pangoLogAttrGetIsWordStart <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsWordStart', obj)
  v
} 
pangoLogAttrGetIsWordEnd <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsWordEnd', obj)
  v
} 
pangoLogAttrGetIsSentenceBoundary <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsSentenceBoundary', obj)
  v
} 
pangoLogAttrGetIsSentenceStart <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsSentenceStart', obj)
  v
} 
pangoLogAttrGetIsSentenceEnd <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetIsSentenceEnd', obj)
  v
} 
pangoLogAttrGetBackspaceDeletesCharacter <-
function(obj)
{
  checkPtrType(obj, 'PangoLogAttr')
  v <- .Call('S_PangoLogAttrGetBackspaceDeletesCharacter', obj)
  v
} 
pangoAttributeGetKlass <-
function(obj)
{
  checkPtrType(obj, 'PangoAttribute')
  v <- .Call('S_PangoAttributeGetKlass', obj)
  v
} 
pangoAttributeGetStartIndex <-
function(obj)
{
  checkPtrType(obj, 'PangoAttribute')
  v <- .Call('S_PangoAttributeGetStartIndex', obj)
  v
} 
pangoAttributeGetEndIndex <-
function(obj)
{
  checkPtrType(obj, 'PangoAttribute')
  v <- .Call('S_PangoAttributeGetEndIndex', obj)
  v
} 
pangoAttrClassGetType <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrClass')
  v <- .Call('S_PangoAttrClassGetType', obj)
  v
} 
pangoGlyphItemGetItem <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphItem')
  v <- .Call('S_PangoGlyphItemGetItem', obj)
  v
} 
pangoGlyphItemGetGlyphs <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphItem')
  v <- .Call('S_PangoGlyphItemGetGlyphs', obj)
  v
} 
pangoGlyphInfoGetGlyph <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphInfo')
  v <- .Call('S_PangoGlyphInfoGetGlyph', obj)
  v
} 
pangoGlyphInfoGetGeometry <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphInfo')
  v <- .Call('S_PangoGlyphInfoGetGeometry', obj)
  v
} 
pangoGlyphInfoGetAttr <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphInfo')
  v <- .Call('S_PangoGlyphInfoGetAttr', obj)
  v
} 
pangoGlyphGeometryGetWidth <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphGeometry')
  v <- .Call('S_PangoGlyphGeometryGetWidth', obj)
  v
} 
pangoGlyphGeometryGetXOffset <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphGeometry')
  v <- .Call('S_PangoGlyphGeometryGetXOffset', obj)
  v
} 
pangoGlyphGeometryGetYOffset <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphGeometry')
  v <- .Call('S_PangoGlyphGeometryGetYOffset', obj)
  v
} 
pangoGlyphVisAttrGetIsClusterStart <-
function(obj)
{
  checkPtrType(obj, 'PangoGlyphVisAttr')
  v <- .Call('S_PangoGlyphVisAttrGetIsClusterStart', obj)
  v
} 
pangoAttrStringGetValue <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrString')
  v <- .Call('S_PangoAttrStringGetValue', obj)
  v
} 
pangoAttrLanguageGetValue <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrLanguage')
  v <- .Call('S_PangoAttrLanguageGetValue', obj)
  v
} 
pangoAttrColorGetColor <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrColor')
  v <- .Call('S_PangoAttrColorGetColor', obj)
  v
} 
pangoAttrIntGetValue <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrInt')
  v <- .Call('S_PangoAttrIntGetValue', obj)
  v
} 
pangoAttrFloatGetValue <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrFloat')
  v <- .Call('S_PangoAttrFloatGetValue', obj)
  v
} 
pangoAttrFontDescGetDesc <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrFontDesc')
  v <- .Call('S_PangoAttrFontDescGetDesc', obj)
  v
} 
pangoAttrShapeGetInkRect <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrShape')
  v <- .Call('S_PangoAttrShapeGetInkRect', obj)
  v
} 
pangoAttrShapeGetLogicalRect <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrShape')
  v <- .Call('S_PangoAttrShapeGetLogicalRect', obj)
  v
} 
pangoAttrSizeGetSize <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrSize')
  v <- .Call('S_PangoAttrSizeGetSize', obj)
  v
} 
pangoAttrSizeGetAbsolute <-
function(obj)
{
  checkPtrType(obj, 'PangoAttrSize')
  v <- .Call('S_PangoAttrSizeGetAbsolute', obj)
  v
} 
