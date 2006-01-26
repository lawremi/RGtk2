atkKeyEventStructGetType <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetType', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetState <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetState', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetKeyval <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetKeyval', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetLength <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetLength', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetString <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetString', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetKeycode <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetKeycode', obj, PACKAGE = "RGtk2")
  v
} 
atkKeyEventStructGetTimestamp <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetTimestamp', obj, PACKAGE = "RGtk2")
  v
} 
