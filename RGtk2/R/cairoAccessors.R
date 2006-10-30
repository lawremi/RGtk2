cairoMatrixGetXx <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetXx', obj, )
  v
} 
cairoMatrixGetYx <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetYx', obj, )
  v
} 
cairoMatrixGetXy <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetXy', obj, )
  v
} 
cairoMatrixGetYy <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetYy', obj, )
  v
} 
cairoMatrixGetX0 <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetX0', obj, )
  v
} 
cairoMatrixGetY0 <-
function(obj)
{
  checkPtrType(obj, 'CairoMatrix')
  v <- .Call('S_CairoMatrixGetY0', obj, )
  v
} 
cairoTextExtentsGetXBearing <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetXBearing', obj, )
  v
} 
cairoTextExtentsGetYBearing <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetYBearing', obj, )
  v
} 
cairoTextExtentsGetWidth <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetWidth', obj, )
  v
} 
cairoTextExtentsGetHeight <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetHeight', obj, )
  v
} 
cairoTextExtentsGetXAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetXAdvance', obj, )
  v
} 
cairoTextExtentsGetYAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoTextExtents')
  v <- .Call('S_CairoTextExtentsGetYAdvance', obj, )
  v
} 
cairoFontExtentsGetAscent <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetAscent', obj, )
  v
} 
cairoFontExtentsGetDescent <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetDescent', obj, )
  v
} 
cairoFontExtentsGetHeight <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetHeight', obj, )
  v
} 
cairoFontExtentsGetMaxXAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetMaxXAdvance', obj, )
  v
} 
cairoFontExtentsGetMaxYAdvance <-
function(obj)
{
  checkPtrType(obj, 'CairoFontExtents')
  v <- .Call('S_CairoFontExtentsGetMaxYAdvance', obj, )
  v
} 
