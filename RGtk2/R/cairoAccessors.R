cairoMatrixGetXx <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetXx', obj, PACKAGE = "RGtk2")
  v
} 
cairoMatrixGetYx <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetYx', obj, PACKAGE = "RGtk2")
  v
} 
cairoMatrixGetXy <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetXy', obj, PACKAGE = "RGtk2")
  v
} 
cairoMatrixGetYy <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetYy', obj, PACKAGE = "RGtk2")
  v
} 
cairoMatrixGetX0 <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetX0', obj, PACKAGE = "RGtk2")
  v
} 
cairoMatrixGetY0 <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetY0', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetXBearing <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetXBearing', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetYBearing <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetYBearing', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetWidth <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetWidth', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetHeight <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetHeight', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetXAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetXAdvance', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextExtentsGetYAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetYAdvance', obj, PACKAGE = "RGtk2")
  v
} 
cairoFontExtentsGetAscent <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetAscent', obj, PACKAGE = "RGtk2")
  v
} 
cairoFontExtentsGetDescent <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetDescent', obj, PACKAGE = "RGtk2")
  v
} 
cairoFontExtentsGetHeight <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetHeight', obj, PACKAGE = "RGtk2")
  v
} 
cairoFontExtentsGetMaxXAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetMaxXAdvance', obj, PACKAGE = "RGtk2")
  v
} 
cairoFontExtentsGetMaxYAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetMaxYAdvance', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextClusterGetNumBytes <-
function(obj)
{
  checkPtrType(obj, 'CairoTextCluster')
  v <- .Call('S_CairoTextClusterGetNumBytes', obj, PACKAGE = "RGtk2")
  v
} 
cairoTextClusterGetNumGlyphs <-
function(obj)
{
  checkPtrType(obj, 'CairoTextCluster')
  v <- .Call('S_CairoTextClusterGetNumGlyphs', obj, PACKAGE = "RGtk2")
  v
} 
