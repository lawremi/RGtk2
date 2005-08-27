gtkAdjustmentGetValue <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetValue', obj)
  v
} 
gtkAdjustmentGetLower <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetLower', obj)
  v
} 
gtkAdjustmentGetUpper <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetUpper', obj)
  v
} 
gtkAdjustmentGetStepIncrement <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetStepIncrement', obj)
  v
} 
gtkAdjustmentGetPageIncrement <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetPageIncrement', obj)
  v
} 
gtkAdjustmentGetPageSize <-
function(obj)
{
  checkPtrType(obj, 'GtkAdjustment')
  v <- .Call('S_GtkAdjustmentGetPageSize', obj)
  v
} 
gtkBinGetChild <-
function(obj)
{
  checkPtrType(obj, 'GtkBin')
  v <- .Call('S_GtkBinGetChild', obj)
  v
} 
gtkCheckMenuItemGetActive <-
function(obj)
{
  checkPtrType(obj, 'GtkCheckMenuItem')
  v <- .Call('S_GtkCheckMenuItemGetActive', obj)
  v
} 
gtkColorSelectionDialogGetColorsel <-
function(obj)
{
  checkPtrType(obj, 'GtkColorSelectionDialog')
  v <- .Call('S_GtkColorSelectionDialogGetColorsel', obj)
  v
} 
gtkColorSelectionDialogGetOkButton <-
function(obj)
{
  checkPtrType(obj, 'GtkColorSelectionDialog')
  v <- .Call('S_GtkColorSelectionDialogGetOkButton', obj)
  v
} 
gtkColorSelectionDialogGetCancelButton <-
function(obj)
{
  checkPtrType(obj, 'GtkColorSelectionDialog')
  v <- .Call('S_GtkColorSelectionDialogGetCancelButton', obj)
  v
} 
gtkColorSelectionDialogGetHelpButton <-
function(obj)
{
  checkPtrType(obj, 'GtkColorSelectionDialog')
  v <- .Call('S_GtkColorSelectionDialogGetHelpButton', obj)
  v
} 
gtkComboGetEntry <-
function(obj)
{
  checkPtrType(obj, 'GtkCombo')
  v <- .Call('S_GtkComboGetEntry', obj)
  v
} 
gtkComboGetList <-
function(obj)
{
  checkPtrType(obj, 'GtkCombo')
  v <- .Call('S_GtkComboGetList', obj)
  v
} 
gtkContainerGetFocusChild <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetFocusChild', obj)
  v
} 
gtkContainerGetBorderWidth <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetBorderWidth', obj)
  v
} 
gtkContainerGetNeedResize <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetNeedResize', obj)
  v
} 
gtkContainerGetResizeMode <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetResizeMode', obj)
  v
} 
gtkContainerGetReallocateRedraws <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetReallocateRedraws', obj)
  v
} 
gtkContainerGetHasFocusChain <-
function(obj)
{
  checkPtrType(obj, 'GtkContainer')
  v <- .Call('S_GtkContainerGetHasFocusChain', obj)
  v
} 
gtkDialogGetVbox <-
function(obj)
{
  checkPtrType(obj, 'GtkDialog')
  v <- .Call('S_GtkDialogGetVbox', obj)
  v
} 
gtkDialogGetActionArea <-
function(obj)
{
  checkPtrType(obj, 'GtkDialog')
  v <- .Call('S_GtkDialogGetActionArea', obj)
  v
} 
gtkFileSelectionGetDirList <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetDirList', obj)
  v
} 
gtkFileSelectionGetFileList <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileList', obj)
  v
} 
gtkFileSelectionGetSelectionEntry <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetSelectionEntry', obj)
  v
} 
gtkFileSelectionGetSelectionText <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetSelectionText', obj)
  v
} 
gtkFileSelectionGetMainVbox <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetMainVbox', obj)
  v
} 
gtkFileSelectionGetOkButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetOkButton', obj)
  v
} 
gtkFileSelectionGetCancelButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetCancelButton', obj)
  v
} 
gtkFileSelectionGetHelpButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetHelpButton', obj)
  v
} 
gtkFileSelectionGetHistoryPulldown <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetHistoryPulldown', obj)
  v
} 
gtkFileSelectionGetHistoryMenu <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetHistoryMenu', obj)
  v
} 
gtkFileSelectionGetFileopDialog <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopDialog', obj)
  v
} 
gtkFileSelectionGetFileopEntry <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopEntry', obj)
  v
} 
gtkFileSelectionGetFileopFile <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopFile', obj)
  v
} 
gtkFileSelectionGetFileopCDir <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopCDir', obj)
  v
} 
gtkFileSelectionGetFileopDelFile <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopDelFile', obj)
  v
} 
gtkFileSelectionGetFileopRenFile <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetFileopRenFile', obj)
  v
} 
gtkFileSelectionGetButtonArea <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetButtonArea', obj)
  v
} 
gtkFileSelectionGetActionArea <-
function(obj)
{
  checkPtrType(obj, 'GtkFileSelection')
  v <- .Call('S_GtkFileSelectionGetActionArea', obj)
  v
} 
gtkFontSelectionDialogGetFontsel <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetFontsel', obj)
  v
} 
gtkFontSelectionDialogGetMainVbox <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetMainVbox', obj)
  v
} 
gtkFontSelectionDialogGetActionArea <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetActionArea', obj)
  v
} 
gtkFontSelectionDialogGetOkButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetOkButton', obj)
  v
} 
gtkFontSelectionDialogGetApplyButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetApplyButton', obj)
  v
} 
gtkFontSelectionDialogGetCancelButton <-
function(obj)
{
  checkPtrType(obj, 'GtkFontSelectionDialog')
  v <- .Call('S_GtkFontSelectionDialogGetCancelButton', obj)
  v
} 
gtkGammaCurveGetTable <-
function(obj)
{
  checkPtrType(obj, 'GtkGammaCurve')
  v <- .Call('S_GtkGammaCurveGetTable', obj)
  v
} 
gtkGammaCurveGetCurve <-
function(obj)
{
  checkPtrType(obj, 'GtkGammaCurve')
  v <- .Call('S_GtkGammaCurveGetCurve', obj)
  v
} 
gtkGammaCurveGetGamma <-
function(obj)
{
  checkPtrType(obj, 'GtkGammaCurve')
  v <- .Call('S_GtkGammaCurveGetGamma', obj)
  v
} 
gtkGammaCurveGetGammaDialog <-
function(obj)
{
  checkPtrType(obj, 'GtkGammaCurve')
  v <- .Call('S_GtkGammaCurveGetGammaDialog', obj)
  v
} 
gtkGammaCurveGetGammaText <-
function(obj)
{
  checkPtrType(obj, 'GtkGammaCurve')
  v <- .Call('S_GtkGammaCurveGetGammaText', obj)
  v
} 
gtkLayoutGetBinWindow <-
function(obj)
{
  checkPtrType(obj, 'GtkLayout')
  v <- .Call('S_GtkLayoutGetBinWindow', obj)
  v
} 
gtkMessageDialogGetImage <-
function(obj)
{
  checkPtrType(obj, 'GtkMessageDialog')
  v <- .Call('S_GtkMessageDialogGetImage', obj)
  v
} 
gtkMessageDialogGetLabel <-
function(obj)
{
  checkPtrType(obj, 'GtkMessageDialog')
  v <- .Call('S_GtkMessageDialogGetLabel', obj)
  v
} 
gtkNotebookGetTabPos <-
function(obj)
{
  checkPtrType(obj, 'GtkNotebook')
  v <- .Call('S_GtkNotebookGetTabPos', obj)
  v
} 
gtkStyleGetFg <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetFg', obj)
  v
} 
gtkStyleGetBg <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBg', obj)
  v
} 
gtkStyleGetLight <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetLight', obj)
  v
} 
gtkStyleGetDark <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetDark', obj)
  v
} 
gtkStyleGetMid <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetMid', obj)
  v
} 
gtkStyleGetText <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetText', obj)
  v
} 
gtkStyleGetBase <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBase', obj)
  v
} 
gtkStyleGetTextAa <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetTextAa', obj)
  v
} 
gtkStyleGetWhite <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetWhite', obj)
  v
} 
gtkStyleGetBlack <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBlack', obj)
  v
} 
gtkStyleGetFontDesc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetFontDesc', obj)
  v
} 
gtkStyleGetXthickness <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetXthickness', obj)
  v
} 
gtkStyleGetYthickness <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetYthickness', obj)
  v
} 
gtkStyleGetFgGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetFgGc', obj)
  v
} 
gtkStyleGetBgGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBgGc', obj)
  v
} 
gtkStyleGetLightGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetLightGc', obj)
  v
} 
gtkStyleGetDarkGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetDarkGc', obj)
  v
} 
gtkStyleGetMidGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetMidGc', obj)
  v
} 
gtkStyleGetTextGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetTextGc', obj)
  v
} 
gtkStyleGetBaseGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBaseGc', obj)
  v
} 
gtkStyleGetTextAaGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetTextAaGc', obj)
  v
} 
gtkStyleGetWhiteGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetWhiteGc', obj)
  v
} 
gtkStyleGetBlackGc <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBlackGc', obj)
  v
} 
gtkStyleGetBgPixmap <-
function(obj)
{
  checkPtrType(obj, 'GtkStyle')
  v <- .Call('S_GtkStyleGetBgPixmap', obj)
  v
} 
gtkTextBufferGetTagTable <-
function(obj)
{
  checkPtrType(obj, 'GtkTextBuffer')
  v <- .Call('S_GtkTextBufferGetTagTable', obj)
  v
} 
gtkToggleButtonGetDrawIndicator <-
function(obj)
{
  checkPtrType(obj, 'GtkToggleButton')
  v <- .Call('S_GtkToggleButtonGetDrawIndicator', obj)
  v
} 
gtkWidgetGetState <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetState', obj)
  v
} 
gtkWidgetGetSavedState <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetSavedState', obj)
  v
} 
gtkWidgetGetName <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetName', obj)
  v
} 
gtkWidgetGetStyle <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetStyle', obj)
  v
} 
gtkWidgetGetAllocation <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetAllocation', obj)
  v
} 
gtkWidgetGetWindow <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetWindow', obj)
  v
} 
gtkWidgetGetParent <-
function(obj)
{
  checkPtrType(obj, 'GtkWidget')
  v <- .Call('S_GtkWidgetGetParent', obj)
  v
} 
gtkWindowGetTitle <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetTitle', obj)
  v
} 
gtkWindowGetWmclassName <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetWmclassName', obj)
  v
} 
gtkWindowGetWmclassClass <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetWmclassClass', obj)
  v
} 
gtkWindowGetWmRole <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetWmRole', obj)
  v
} 
gtkWindowGetFocusWidget <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFocusWidget', obj)
  v
} 
gtkWindowGetDefaultWidget <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetDefaultWidget', obj)
  v
} 
gtkWindowGetTransientParent <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetTransientParent', obj)
  v
} 
gtkWindowGetFrame <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFrame', obj)
  v
} 
gtkWindowGetGroup <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetGroup', obj)
  v
} 
gtkWindowGetConfigureRequestCount <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetConfigureRequestCount', obj)
  v
} 
gtkWindowGetAllowShrink <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetAllowShrink', obj)
  v
} 
gtkWindowGetAllowGrow <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetAllowGrow', obj)
  v
} 
gtkWindowGetConfigureNotifyReceived <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetConfigureNotifyReceived', obj)
  v
} 
gtkWindowGetNeedDefaultPosition <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetNeedDefaultPosition', obj)
  v
} 
gtkWindowGetNeedDefaultSize <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetNeedDefaultSize', obj)
  v
} 
gtkWindowGetPosition <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetPosition', obj)
  v
} 
gtkWindowGetType <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetType', obj)
  v
} 
gtkWindowGetHasUserRefCount <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetHasUserRefCount', obj)
  v
} 
gtkWindowGetHasFocus <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetHasFocus', obj)
  v
} 
gtkWindowGetModal <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetModal', obj)
  v
} 
gtkWindowGetDestroyWithParent <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetDestroyWithParent', obj)
  v
} 
gtkWindowGetHasFrame <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetHasFrame', obj)
  v
} 
gtkWindowGetIconifyInitially <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetIconifyInitially', obj)
  v
} 
gtkWindowGetStickInitially <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetStickInitially', obj)
  v
} 
gtkWindowGetMaximizeInitially <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetMaximizeInitially', obj)
  v
} 
gtkWindowGetDecorated <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetDecorated', obj)
  v
} 
gtkWindowGetTypeHint <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetTypeHint', obj)
  v
} 
gtkWindowGetGravity <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetGravity', obj)
  v
} 
gtkWindowGetFrameLeft <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFrameLeft', obj)
  v
} 
gtkWindowGetFrameTop <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFrameTop', obj)
  v
} 
gtkWindowGetFrameRight <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFrameRight', obj)
  v
} 
gtkWindowGetFrameBottom <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetFrameBottom', obj)
  v
} 
gtkWindowGetKeysChangedHandler <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetKeysChangedHandler', obj)
  v
} 
gtkWindowGetMnemonicModifier <-
function(obj)
{
  checkPtrType(obj, 'GtkWindow')
  v <- .Call('S_GtkWindowGetMnemonicModifier', obj)
  v
} 
gtkRequisitionGetWidth <-
function(obj)
{
  checkPtrType(obj, 'GtkRequisition')
  v <- .Call('S_GtkRequisitionGetWidth', obj)
  v
} 
gtkRequisitionGetHeight <-
function(obj)
{
  checkPtrType(obj, 'GtkRequisition')
  v <- .Call('S_GtkRequisitionGetHeight', obj)
  v
} 
gtkSelectionDataGetSelection <-
function(obj)
{
  checkPtrType(obj, 'GtkSelectionData')
  v <- .Call('S_GtkSelectionDataGetSelection', obj)
  v
} 
gtkSelectionDataGetTarget <-
function(obj)
{
  checkPtrType(obj, 'GtkSelectionData')
  v <- .Call('S_GtkSelectionDataGetTarget', obj)
  v
} 
gtkSelectionDataGetType <-
function(obj)
{
  checkPtrType(obj, 'GtkSelectionData')
  v <- .Call('S_GtkSelectionDataGetType', obj)
  v
} 
gtkSelectionDataGetFormat <-
function(obj)
{
  checkPtrType(obj, 'GtkSelectionData')
  v <- .Call('S_GtkSelectionDataGetFormat', obj)
  v
} 
gtkSelectionDataGetData <-
function(obj)
{
  checkPtrType(obj, 'GtkSelectionData')
  v <- .Call('S_GtkSelectionDataGetData', obj)
  v
} 
gtkTextAttributesGetAppearance <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetAppearance', obj)
  v
} 
gtkTextAttributesGetJustification <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetJustification', obj)
  v
} 
gtkTextAttributesGetDirection <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetDirection', obj)
  v
} 
gtkTextAttributesGetFont <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetFont', obj)
  v
} 
gtkTextAttributesGetFontScale <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetFontScale', obj)
  v
} 
gtkTextAttributesGetLeftMargin <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetLeftMargin', obj)
  v
} 
gtkTextAttributesGetIndent <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetIndent', obj)
  v
} 
gtkTextAttributesGetRightMargin <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetRightMargin', obj)
  v
} 
gtkTextAttributesGetPixelsAboveLines <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetPixelsAboveLines', obj)
  v
} 
gtkTextAttributesGetPixelsBelowLines <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetPixelsBelowLines', obj)
  v
} 
gtkTextAttributesGetPixelsInsideWrap <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetPixelsInsideWrap', obj)
  v
} 
gtkTextAttributesGetTabs <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetTabs', obj)
  v
} 
gtkTextAttributesGetWrapMode <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetWrapMode', obj)
  v
} 
gtkTextAttributesGetLanguage <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetLanguage', obj)
  v
} 
gtkTextAttributesGetInvisible <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetInvisible', obj)
  v
} 
gtkTextAttributesGetBgFullHeight <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetBgFullHeight', obj)
  v
} 
gtkTextAttributesGetEditable <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetEditable', obj)
  v
} 
gtkTextAttributesGetRealized <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAttributes')
  v <- .Call('S_GtkTextAttributesGetRealized', obj)
  v
} 
gtkAccelKeyGetAccelKey <-
function(obj)
{
  checkPtrType(obj, 'GtkAccelKey')
  v <- .Call('S_GtkAccelKeyGetAccelKey', obj)
  v
} 
gtkAccelKeyGetAccelMods <-
function(obj)
{
  checkPtrType(obj, 'GtkAccelKey')
  v <- .Call('S_GtkAccelKeyGetAccelMods', obj)
  v
} 
gtkAccelKeyGetAccelFlags <-
function(obj)
{
  checkPtrType(obj, 'GtkAccelKey')
  v <- .Call('S_GtkAccelKeyGetAccelFlags', obj)
  v
} 
gtkCTreeRowGetRow <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetRow', obj)
  v
} 
gtkCTreeRowGetParent <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetParent', obj)
  v
} 
gtkCTreeRowGetSibling <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetSibling', obj)
  v
} 
gtkCTreeRowGetChildren <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetChildren', obj)
  v
} 
gtkCTreeRowGetPixmapClosed <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetPixmapClosed', obj)
  v
} 
gtkCTreeRowGetMaskClosed <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetMaskClosed', obj)
  v
} 
gtkCTreeRowGetPixmapOpened <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetPixmapOpened', obj)
  v
} 
gtkCTreeRowGetMaskOpened <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetMaskOpened', obj)
  v
} 
gtkCTreeRowGetLevel <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetLevel', obj)
  v
} 
gtkCTreeRowGetIsLeaf <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetIsLeaf', obj)
  v
} 
gtkCTreeRowGetExpanded <-
function(obj)
{
  checkPtrType(obj, 'GtkCTreeRow')
  v <- .Call('S_GtkCTreeRowGetExpanded', obj)
  v
} 
gtkCListRowGetCell <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetCell', obj)
  v
} 
gtkCListRowGetState <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetState', obj)
  v
} 
gtkCListRowGetForeground <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetForeground', obj)
  v
} 
gtkCListRowGetBackground <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetBackground', obj)
  v
} 
gtkCListRowGetStyle <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetStyle', obj)
  v
} 
gtkCListRowGetData <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetData', obj)
  v
} 
gtkCListRowGetDestroy <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetDestroy', obj)
  v
} 
gtkCListRowGetFgSet <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetFgSet', obj)
  v
} 
gtkCListRowGetBgSet <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetBgSet', obj)
  v
} 
gtkCListRowGetSelectable <-
function(obj)
{
  checkPtrType(obj, 'GtkCListRow')
  v <- .Call('S_GtkCListRowGetSelectable', obj)
  v
} 
gtkTextAppearanceGetBgColor <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetBgColor', obj)
  v
} 
gtkTextAppearanceGetFgColor <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetFgColor', obj)
  v
} 
gtkTextAppearanceGetBgStipple <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetBgStipple', obj)
  v
} 
gtkTextAppearanceGetFgStipple <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetFgStipple', obj)
  v
} 
gtkTextAppearanceGetRise <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetRise', obj)
  v
} 
gtkTextAppearanceGetUnderline <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetUnderline', obj)
  v
} 
gtkTextAppearanceGetStrikethrough <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetStrikethrough', obj)
  v
} 
gtkTextAppearanceGetDrawBg <-
function(obj)
{
  checkPtrType(obj, 'GtkTextAppearance')
  v <- .Call('S_GtkTextAppearanceGetDrawBg', obj)
  v
} 
