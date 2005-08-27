atkKeyEventStructGetType <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetType', obj)
  v
} 
atkKeyEventStructGetState <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetState', obj)
  v
} 
atkKeyEventStructGetKeyval <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetKeyval', obj)
  v
} 
atkKeyEventStructGetLength <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetLength', obj)
  v
} 
atkKeyEventStructGetString <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetString', obj)
  v
} 
atkKeyEventStructGetKeycode <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetKeycode', obj)
  v
} 
atkKeyEventStructGetTimestamp <-
function(obj)
{
  checkPtrType(obj, 'AtkKeyEventStruct')
  v <- .Call('S_AtkKeyEventStructGetTimestamp', obj)
  v
} 
