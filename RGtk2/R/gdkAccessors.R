gdkDeviceGetName <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetName', obj)
  v
} 
gdkDeviceGetSource <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetSource', obj)
  v
} 
gdkDeviceGetMode <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetMode', obj)
  v
} 
gdkDeviceGetHasCursor <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetHasCursor', obj)
  v
} 
gdkDeviceGetNumAxes <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetNumAxes', obj)
  v
} 
gdkDeviceGetAxes <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetAxes', obj)
  v
} 
gdkDeviceGetNumKeys <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetNumKeys', obj)
  v
} 
gdkDeviceGetKeys <-
function(obj)
{
  checkPtrType(obj, 'GdkDevice')
  v <- .Call('S_GdkDeviceGetKeys', obj)
  v
} 
gdkDragContextGetProtocol <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetProtocol', obj)
  v
} 
gdkDragContextGetIsSource <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetIsSource', obj)
  v
} 
gdkDragContextGetSourceWindow <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetSourceWindow', obj)
  v
} 
gdkDragContextGetDestWindow <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetDestWindow', obj)
  v
} 
gdkDragContextGetTargets <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetTargets', obj)
  v
} 
gdkDragContextGetActions <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetActions', obj)
  v
} 
gdkDragContextGetSuggestedAction <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetSuggestedAction', obj)
  v
} 
gdkDragContextGetAction <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetAction', obj)
  v
} 
gdkDragContextGetStartTime <-
function(obj)
{
  checkPtrType(obj, 'GdkDragContext')
  v <- .Call('S_GdkDragContextGetStartTime', obj)
  v
} 
gdkVisualGetType <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetType', obj)
  v
} 
gdkVisualGetDepth <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetDepth', obj)
  v
} 
gdkVisualGetByteOrder <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetByteOrder', obj)
  v
} 
gdkVisualGetColormapSize <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetColormapSize', obj)
  v
} 
gdkVisualGetBitsPerRgb <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetBitsPerRgb', obj)
  v
} 
gdkVisualGetRedMask <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetRedMask', obj)
  v
} 
gdkVisualGetRedShift <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetRedShift', obj)
  v
} 
gdkVisualGetRedPrec <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetRedPrec', obj)
  v
} 
gdkVisualGetGreenMask <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetGreenMask', obj)
  v
} 
gdkVisualGetGreenShift <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetGreenShift', obj)
  v
} 
gdkVisualGetGreenPrec <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetGreenPrec', obj)
  v
} 
gdkVisualGetBlueMask <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetBlueMask', obj)
  v
} 
gdkVisualGetBlueShift <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetBlueShift', obj)
  v
} 
gdkVisualGetBluePrec <-
function(obj)
{
  checkPtrType(obj, 'GdkVisual')
  v <- .Call('S_GdkVisualGetBluePrec', obj)
  v
} 
gdkFontGetType <-
function(obj)
{
  checkPtrType(obj, 'GdkFont')
  v <- .Call('S_GdkFontGetType', obj)
  v
} 
gdkFontGetAscent <-
function(obj)
{
  checkPtrType(obj, 'GdkFont')
  v <- .Call('S_GdkFontGetAscent', obj)
  v
} 
gdkFontGetDescent <-
function(obj)
{
  checkPtrType(obj, 'GdkFont')
  v <- .Call('S_GdkFontGetDescent', obj)
  v
} 
gdkCursorGetType <-
function(obj)
{
  checkPtrType(obj, 'GdkCursor')
  v <- .Call('S_GdkCursorGetType', obj)
  v
} 
gdkEventAnyGetType <-
function(obj)
{
  checkPtrType(obj, 'GdkEventAny')
  v <- .Call('S_GdkEventAnyGetType', obj)
  v
} 
gdkEventAnyGetWindow <-
function(obj)
{
  checkPtrType(obj, 'GdkEventAny')
  v <- .Call('S_GdkEventAnyGetWindow', obj)
  v
} 
gdkEventAnyGetSendEvent <-
function(obj)
{
  checkPtrType(obj, 'GdkEventAny')
  v <- .Call('S_GdkEventAnyGetSendEvent', obj)
  v
} 
gdkEventKeyGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetTime', obj)
  v
} 
gdkEventKeyGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetState', obj)
  v
} 
gdkEventKeyGetKeyval <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetKeyval', obj)
  v
} 
gdkEventKeyGetLength <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetLength', obj)
  v
} 
gdkEventKeyGetString <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetString', obj)
  v
} 
gdkEventKeyGetHardwareKeycode <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetHardwareKeycode', obj)
  v
} 
gdkEventKeyGetGroup <-
function(obj)
{
  checkPtrType(obj, 'GdkEventKey')
  v <- .Call('S_GdkEventKeyGetGroup', obj)
  v
} 
gdkEventSelectionGetSelection <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSelection')
  v <- .Call('S_GdkEventSelectionGetSelection', obj)
  v
} 
gdkEventSelectionGetTarget <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSelection')
  v <- .Call('S_GdkEventSelectionGetTarget', obj)
  v
} 
gdkEventSelectionGetProperty <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSelection')
  v <- .Call('S_GdkEventSelectionGetProperty', obj)
  v
} 
gdkEventSelectionGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSelection')
  v <- .Call('S_GdkEventSelectionGetTime', obj)
  v
} 
gdkEventSelectionGetRequestor <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSelection')
  v <- .Call('S_GdkEventSelectionGetRequestor', obj)
  v
} 
gdkEventExposeGetArea <-
function(obj)
{
  checkPtrType(obj, 'GdkEventExpose')
  v <- .Call('S_GdkEventExposeGetArea', obj)
  v
} 
gdkEventExposeGetRegion <-
function(obj)
{
  checkPtrType(obj, 'GdkEventExpose')
  v <- .Call('S_GdkEventExposeGetRegion', obj)
  v
} 
gdkEventExposeGetCount <-
function(obj)
{
  checkPtrType(obj, 'GdkEventExpose')
  v <- .Call('S_GdkEventExposeGetCount', obj)
  v
} 
gdkEventButtonGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetTime', obj)
  v
} 
gdkEventButtonGetX <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetX', obj)
  v
} 
gdkEventButtonGetY <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetY', obj)
  v
} 
gdkEventButtonGetAxes <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetAxes', obj)
  v
} 
gdkEventButtonGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetState', obj)
  v
} 
gdkEventButtonGetButton <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetButton', obj)
  v
} 
gdkEventButtonGetDevice <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetDevice', obj)
  v
} 
gdkEventButtonGetXRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetXRoot', obj)
  v
} 
gdkEventButtonGetYRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventButton')
  v <- .Call('S_GdkEventButtonGetYRoot', obj)
  v
} 
gdkEventScrollGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetTime', obj)
  v
} 
gdkEventScrollGetX <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetX', obj)
  v
} 
gdkEventScrollGetY <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetY', obj)
  v
} 
gdkEventScrollGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetState', obj)
  v
} 
gdkEventScrollGetDirection <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetDirection', obj)
  v
} 
gdkEventScrollGetDevice <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetDevice', obj)
  v
} 
gdkEventScrollGetXRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetXRoot', obj)
  v
} 
gdkEventScrollGetYRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventScroll')
  v <- .Call('S_GdkEventScrollGetYRoot', obj)
  v
} 
gdkEventMotionGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetTime', obj)
  v
} 
gdkEventMotionGetX <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetX', obj)
  v
} 
gdkEventMotionGetY <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetY', obj)
  v
} 
gdkEventMotionGetAxes <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetAxes', obj)
  v
} 
gdkEventMotionGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetState', obj)
  v
} 
gdkEventMotionGetIsHint <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetIsHint', obj)
  v
} 
gdkEventMotionGetDevice <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetDevice', obj)
  v
} 
gdkEventMotionGetXRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetXRoot', obj)
  v
} 
gdkEventMotionGetYRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventMotion')
  v <- .Call('S_GdkEventMotionGetYRoot', obj)
  v
} 
gdkEventVisibilityGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventVisibility')
  v <- .Call('S_GdkEventVisibilityGetState', obj)
  v
} 
gdkEventCrossingGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetTime', obj)
  v
} 
gdkEventCrossingGetX <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetX', obj)
  v
} 
gdkEventCrossingGetY <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetY', obj)
  v
} 
gdkEventCrossingGetXRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetXRoot', obj)
  v
} 
gdkEventCrossingGetYRoot <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetYRoot', obj)
  v
} 
gdkEventCrossingGetMode <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetMode', obj)
  v
} 
gdkEventCrossingGetDetail <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetDetail', obj)
  v
} 
gdkEventCrossingGetFocus <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetFocus', obj)
  v
} 
gdkEventCrossingGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventCrossing')
  v <- .Call('S_GdkEventCrossingGetState', obj)
  v
} 
gdkEventFocusGetIn <-
function(obj)
{
  checkPtrType(obj, 'GdkEventFocus')
  v <- .Call('S_GdkEventFocusGetIn', obj)
  v
} 
gdkEventConfigureGetX <-
function(obj)
{
  checkPtrType(obj, 'GdkEventConfigure')
  v <- .Call('S_GdkEventConfigureGetX', obj)
  v
} 
gdkEventConfigureGetY <-
function(obj)
{
  checkPtrType(obj, 'GdkEventConfigure')
  v <- .Call('S_GdkEventConfigureGetY', obj)
  v
} 
gdkEventConfigureGetWidth <-
function(obj)
{
  checkPtrType(obj, 'GdkEventConfigure')
  v <- .Call('S_GdkEventConfigureGetWidth', obj)
  v
} 
gdkEventConfigureGetHeight <-
function(obj)
{
  checkPtrType(obj, 'GdkEventConfigure')
  v <- .Call('S_GdkEventConfigureGetHeight', obj)
  v
} 
gdkEventPropertyGetAtom <-
function(obj)
{
  checkPtrType(obj, 'GdkEventProperty')
  v <- .Call('S_GdkEventPropertyGetAtom', obj)
  v
} 
gdkEventPropertyGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventProperty')
  v <- .Call('S_GdkEventPropertyGetTime', obj)
  v
} 
gdkEventPropertyGetState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventProperty')
  v <- .Call('S_GdkEventPropertyGetState', obj)
  v
} 
gdkEventProximityGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventProximity')
  v <- .Call('S_GdkEventProximityGetTime', obj)
  v
} 
gdkEventProximityGetDevice <-
function(obj)
{
  checkPtrType(obj, 'GdkEventProximity')
  v <- .Call('S_GdkEventProximityGetDevice', obj)
  v
} 
gdkEventWindowStateGetChangedMask <-
function(obj)
{
  checkPtrType(obj, 'GdkEventWindowState')
  v <- .Call('S_GdkEventWindowStateGetChangedMask', obj)
  v
} 
gdkEventWindowStateGetNewWindowState <-
function(obj)
{
  checkPtrType(obj, 'GdkEventWindowState')
  v <- .Call('S_GdkEventWindowStateGetNewWindowState', obj)
  v
} 
gdkEventSettingGetAction <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSetting')
  v <- .Call('S_GdkEventSettingGetAction', obj)
  v
} 
gdkEventSettingGetName <-
function(obj)
{
  checkPtrType(obj, 'GdkEventSetting')
  v <- .Call('S_GdkEventSettingGetName', obj)
  v
} 
gdkEventOwnerChangeGetOwner <-
function(obj)
{
  checkPtrType(obj, 'GdkEventOwnerChange')
  v <- .Call('S_GdkEventOwnerChangeGetOwner', obj)
  v
} 
gdkEventOwnerChangeGetReason <-
function(obj)
{
  checkPtrType(obj, 'GdkEventOwnerChange')
  v <- .Call('S_GdkEventOwnerChangeGetReason', obj)
  v
} 
gdkEventOwnerChangeGetSelection <-
function(obj)
{
  checkPtrType(obj, 'GdkEventOwnerChange')
  v <- .Call('S_GdkEventOwnerChangeGetSelection', obj)
  v
} 
gdkEventOwnerChangeGetTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventOwnerChange')
  v <- .Call('S_GdkEventOwnerChangeGetTime', obj)
  v
} 
gdkEventOwnerChangeGetSelectionTime <-
function(obj)
{
  checkPtrType(obj, 'GdkEventOwnerChange')
  v <- .Call('S_GdkEventOwnerChangeGetSelectionTime', obj)
  v
} 
gdkEventClientGetMessageType <-
function(obj)
{
  checkPtrType(obj, 'GdkEventClient')
  v <- .Call('S_GdkEventClientGetMessageType', obj)
  v
} 
