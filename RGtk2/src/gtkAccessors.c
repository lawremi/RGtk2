#include "conversion.h"


#include "RGtk2.h"

USER_OBJECT_
S_GtkAdjustmentGetValue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->value;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAdjustmentGetLower (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->lower;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAdjustmentGetUpper (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->upper;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAdjustmentGetStepIncrement (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->step_increment;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAdjustmentGetPageIncrement (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->page_increment;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAdjustmentGetPageSize (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAdjustment *obj;
   gfloat val;

   obj = GTK_ADJUSTMENT(getPtrValue(s_obj)) ;
   val = obj->page_size;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkBinGetChild (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkBin *obj;
   GtkWidget* val;

   obj = GTK_BIN(getPtrValue(s_obj)) ;
   val = obj->child;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkCheckMenuItemGetActive (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCheckMenuItem *obj;
   gboolean val;

   obj = GTK_CHECK_MENU_ITEM(getPtrValue(s_obj)) ;
   val = obj->active;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GtkColorSelectionDialogGetColorsel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkColorSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_COLOR_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->colorsel;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkColorSelectionDialogGetOkButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkColorSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_COLOR_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->ok_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkColorSelectionDialogGetCancelButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkColorSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_COLOR_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->cancel_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkColorSelectionDialogGetHelpButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkColorSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_COLOR_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->help_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkComboGetEntry (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCombo *obj;
   GtkWidget* val;

   obj = GTK_COMBO(getPtrValue(s_obj)) ;
   val = obj->entry;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkComboGetList (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCombo *obj;
   GtkWidget* val;

   obj = GTK_COMBO(getPtrValue(s_obj)) ;
   val = obj->list;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetFocusChild (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   GtkWidget* val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->focus_child;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetBorderWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   guint val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->border_width;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetNeedResize (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   guint val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->need_resize;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetResizeMode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   guint val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->resize_mode;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetReallocateRedraws (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   guint val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->reallocate_redraws;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkContainerGetHasFocusChain (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkContainer *obj;
   guint val;

   obj = GTK_CONTAINER(getPtrValue(s_obj)) ;
   val = obj->has_focus_chain;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkDialogGetVbox (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkDialog *obj;
   GtkWidget* val;

   obj = GTK_DIALOG(getPtrValue(s_obj)) ;
   val = obj->vbox;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkDialogGetActionArea (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkDialog *obj;
   GtkWidget* val;

   obj = GTK_DIALOG(getPtrValue(s_obj)) ;
   val = obj->action_area;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetDirList (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->dir_list;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileList (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->file_list;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetSelectionEntry (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->selection_entry;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetSelectionText (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->selection_text;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetMainVbox (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->main_vbox;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetOkButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->ok_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetCancelButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->cancel_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetHelpButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->help_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetHistoryPulldown (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->history_pulldown;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetHistoryMenu (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->history_menu;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopDialog (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_dialog;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopEntry (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_entry;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopFile (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   gchar* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_file;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopCDir (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_c_dir;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopDelFile (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_del_file;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetFileopRenFile (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->fileop_ren_file;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetButtonArea (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->button_area;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFileSelectionGetActionArea (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFileSelection *obj;
   GtkWidget* val;

   obj = GTK_FILE_SELECTION(getPtrValue(s_obj)) ;
   val = obj->action_area;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetFontsel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->fontsel;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetMainVbox (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->main_vbox;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetActionArea (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->action_area;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetOkButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->ok_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetApplyButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->apply_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkFontSelectionDialogGetCancelButton (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkFontSelectionDialog *obj;
   GtkWidget* val;

   obj = GTK_FONT_SELECTION_DIALOG(getPtrValue(s_obj)) ;
   val = obj->cancel_button;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkGammaCurveGetTable (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkGammaCurve *obj;
   GtkWidget* val;

   obj = GTK_GAMMA_CURVE(getPtrValue(s_obj)) ;
   val = obj->table;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkGammaCurveGetCurve (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkGammaCurve *obj;
   GtkWidget* val;

   obj = GTK_GAMMA_CURVE(getPtrValue(s_obj)) ;
   val = obj->curve;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkGammaCurveGetGamma (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkGammaCurve *obj;
   gfloat val;

   obj = GTK_GAMMA_CURVE(getPtrValue(s_obj)) ;
   val = obj->gamma;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkGammaCurveGetGammaDialog (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkGammaCurve *obj;
   GtkWidget* val;

   obj = GTK_GAMMA_CURVE(getPtrValue(s_obj)) ;
   val = obj->gamma_dialog;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkGammaCurveGetGammaText (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkGammaCurve *obj;
   GtkWidget* val;

   obj = GTK_GAMMA_CURVE(getPtrValue(s_obj)) ;
   val = obj->gamma_text;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkLayoutGetBinWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkLayout *obj;
   GdkWindow* val;

   obj = GTK_LAYOUT(getPtrValue(s_obj)) ;
   val = obj->bin_window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GtkMessageDialogGetImage (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkMessageDialog *obj;
   GtkWidget* val;

   obj = GTK_MESSAGE_DIALOG(getPtrValue(s_obj)) ;
   val = obj->image;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkMessageDialogGetLabel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkMessageDialog *obj;
   GtkWidget* val;

   obj = GTK_MESSAGE_DIALOG(getPtrValue(s_obj)) ;
   val = obj->label;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkNotebookGetTabPos (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkNotebook *obj;
   GtkPositionType val;

   obj = GTK_NOTEBOOK(getPtrValue(s_obj)) ;
   val = obj->tab_pos;
   _result = asREnum(val, GTK_TYPE_POSITION_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetFg (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->fg;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBg (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->bg;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetLight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->light;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetDark (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->dark;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetMid (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->mid;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetText (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->text;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBase (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->base;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetTextAa (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->text_aa;
   _result = asRArrayRefWithSize(val, asRGdkColor, 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetWhite (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->white;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBlack (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkColor val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->black;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetFontDesc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   PangoFontDescription* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->font_desc;
   _result = toRPointer(val, "PangoFontDescription");

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetXthickness (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   gint val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->xthickness;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetYthickness (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   gint val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->ythickness;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetFgGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->fg_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBgGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->bg_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetLightGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->light_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetDarkGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->dark_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetMidGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->mid_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetTextGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->text_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBaseGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->base_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetTextAaGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->text_aa_gc;
   _result = toRPointerWithRefArrayWithSize(val, "GdkGC", 5);

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetWhiteGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->white_gc;
   _result = toRPointerWithRef(val, "GdkGC");

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBlackGc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkGC* val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->black_gc;
   _result = toRPointerWithRef(val, "GdkGC");

   return(_result);
} 
USER_OBJECT_
S_GtkStyleGetBgPixmap (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkStyle *obj;
   GdkPixmap** val;

   obj = GTK_STYLE(getPtrValue(s_obj)) ;
   val = obj->bg_pixmap;
   _result = toRPointerWithRef(val, "GdkPixmap");

   return(_result);
} 
USER_OBJECT_
S_GtkTextBufferGetTagTable (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextBuffer *obj;
   GtkTextTagTable* val;

   obj = GTK_TEXT_BUFFER(getPtrValue(s_obj)) ;
   val = obj->tag_table;
   _result = toRPointerWithRef(val, "GtkTextTagTable");

   return(_result);
} 
USER_OBJECT_
S_GtkToggleButtonGetDrawIndicator (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkToggleButton *obj;
   gboolean val;

   obj = GTK_TOGGLE_BUTTON(getPtrValue(s_obj)) ;
   val = obj->draw_indicator;
   _result = asRLogical(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   guint8 val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->state;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetSavedState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   guint8 val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->saved_state;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetName (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   gchar* val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->name;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetStyle (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   GtkStyle* val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->style;
   _result = toRPointerWithRef(val, "GtkStyle");

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetAllocation (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   GtkAllocation val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->allocation;
   _result = asRGtkAllocation(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetWindow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   GdkWindow* val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->window;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GtkWidgetGetParent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWidget *obj;
   GtkWidget* val;

   obj = GTK_WIDGET(getPtrValue(s_obj)) ;
   val = obj->parent;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetTitle (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   gchar* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->title;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetWmclassName (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   gchar* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->wmclass_name;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetWmclassClass (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   gchar* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->wmclass_class;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetWmRole (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   gchar* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->wm_role;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFocusWidget (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GtkWidget* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->focus_widget;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetDefaultWidget (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GtkWidget* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->default_widget;
   _result = toRPointer(val, "GtkWidget");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetTransientParent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GtkWindow* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->transient_parent;
   _result = toRPointer(val, "GtkWindow");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFrame (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GdkWindow* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->frame;
   _result = toRPointerWithRef(val, "GdkWindow");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetGroup (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GtkWindowGroup* val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->group;
   _result = toRPointerWithRef(val, "GtkWindowGroup");

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetConfigureRequestCount (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint16 val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->configure_request_count;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetAllowShrink (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->allow_shrink;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetAllowGrow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->allow_grow;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetConfigureNotifyReceived (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->configure_notify_received;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetNeedDefaultPosition (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->need_default_position;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetNeedDefaultSize (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->need_default_size;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetPosition (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->position;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->type;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetHasUserRefCount (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->has_user_ref_count;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetHasFocus (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->has_focus;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetModal (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->modal;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetDestroyWithParent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->destroy_with_parent;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetHasFrame (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->has_frame;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetIconifyInitially (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->iconify_initially;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetStickInitially (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->stick_initially;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetMaximizeInitially (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->maximize_initially;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetDecorated (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->decorated;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetTypeHint (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->type_hint;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetGravity (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->gravity;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFrameLeft (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->frame_left;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFrameTop (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->frame_top;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFrameRight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->frame_right;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetFrameBottom (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->frame_bottom;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetKeysChangedHandler (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   guint val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->keys_changed_handler;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkWindowGetMnemonicModifier (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkWindow *obj;
   GdkModifierType val;

   obj = GTK_WINDOW(getPtrValue(s_obj)) ;
   val = obj->mnemonic_modifier;
   _result = asRFlag(val, GDK_TYPE_MODIFIER_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GtkRequisitionGetWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkRequisition *obj;
   gint val;

   obj = (GtkRequisition*)getPtrValue(s_obj) ;
   val = obj->width;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkRequisitionGetHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkRequisition *obj;
   gint val;

   obj = (GtkRequisition*)getPtrValue(s_obj) ;
   val = obj->height;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkSelectionDataGetSelection (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkSelectionData *obj;
   GdkAtom val;

   obj = (GtkSelectionData*)getPtrValue(s_obj) ;
   val = obj->selection;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GtkSelectionDataGetTarget (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkSelectionData *obj;
   GdkAtom val;

   obj = (GtkSelectionData*)getPtrValue(s_obj) ;
   val = obj->target;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GtkSelectionDataGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkSelectionData *obj;
   GdkAtom val;

   obj = (GtkSelectionData*)getPtrValue(s_obj) ;
   val = obj->type;
   _result = asRGdkAtom(val);

   return(_result);
} 
USER_OBJECT_
S_GtkSelectionDataGetFormat (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkSelectionData *obj;
   gint val;

   obj = (GtkSelectionData*)getPtrValue(s_obj) ;
   val = obj->format;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkSelectionDataGetData (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkSelectionData *obj;
   guchar* val;

   obj = (GtkSelectionData*)getPtrValue(s_obj) ;
   val = obj->data;
   _result = asRIntegerArray(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetAppearance (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   GtkTextAppearance val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->appearance;
   _result = toRPointer(&val, "GtkTextAppearance");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetJustification (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   GtkJustification val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->justification;
   _result = asREnum(val, GTK_TYPE_JUSTIFICATION);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetDirection (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   GtkTextDirection val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->direction;
   _result = asREnum(val, GTK_TYPE_TEXT_DIRECTION);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetFont (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   PangoFontDescription* val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->font;
   _result = toRPointer(val, "PangoFontDescription");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetFontScale (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gdouble val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->font_scale;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetLeftMargin (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->left_margin;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetIndent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->indent;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetRightMargin (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->right_margin;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetPixelsAboveLines (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->pixels_above_lines;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetPixelsBelowLines (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->pixels_below_lines;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetPixelsInsideWrap (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   gint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->pixels_inside_wrap;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetTabs (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   PangoTabArray* val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->tabs;
   _result = toRPointer(val, "PangoTabArray");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetWrapMode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   GtkWrapMode val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->wrap_mode;
   _result = asREnum(val, GTK_TYPE_WRAP_MODE);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetLanguage (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   PangoLanguage* val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->language;
   _result = toRPointer(val, "PangoLanguage");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetInvisible (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   guint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->invisible;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetBgFullHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   guint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->bg_full_height;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetEditable (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   guint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->editable;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAttributesGetRealized (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAttributes *obj;
   guint val;

   obj = (GtkTextAttributes*)getPtrValue(s_obj) ;
   val = obj->realized;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAccelKeyGetAccelKey (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAccelKey *obj;
   guint val;

   obj = (GtkAccelKey*)getPtrValue(s_obj) ;
   val = obj->accel_key;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkAccelKeyGetAccelMods (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAccelKey *obj;
   GdkModifierType val;

   obj = (GtkAccelKey*)getPtrValue(s_obj) ;
   val = obj->accel_mods;
   _result = asRFlag(val, GDK_TYPE_MODIFIER_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GtkAccelKeyGetAccelFlags (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkAccelKey *obj;
   guint val;

   obj = (GtkAccelKey*)getPtrValue(s_obj) ;
   val = obj->accel_flags;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetRow (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GtkCListRow val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->row;
   _result = toRPointer(&val, "GtkCListRow");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetParent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GtkCTreeNode* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->parent;
   _result = toRPointer(val, "GtkCTreeNode");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetSibling (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GtkCTreeNode* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->sibling;
   _result = toRPointer(val, "GtkCTreeNode");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetChildren (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GtkCTreeNode* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->children;
   _result = toRPointer(val, "GtkCTreeNode");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetPixmapClosed (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GdkPixmap* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->pixmap_closed;
   _result = toRPointerWithRef(val, "GdkPixmap");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetMaskClosed (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GdkBitmap* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->mask_closed;
   _result = toRPointerWithRef(val, "GdkBitmap");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetPixmapOpened (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GdkPixmap* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->pixmap_opened;
   _result = toRPointerWithRef(val, "GdkPixmap");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetMaskOpened (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   GdkBitmap* val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->mask_opened;
   _result = toRPointerWithRef(val, "GdkBitmap");

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetLevel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   guint16 val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->level;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetIsLeaf (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   guint val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->is_leaf;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCTreeRowGetExpanded (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCTreeRow *obj;
   guint val;

   obj = (GtkCTreeRow*)getPtrValue(s_obj) ;
   val = obj->expanded;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetCell (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GtkCell* val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->cell;
   _result = toRPointer(val, "GtkCell");

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GtkStateType val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->state;
   _result = asREnum(val, GTK_TYPE_STATE_TYPE);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetForeground (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GdkColor val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->foreground;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetBackground (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GdkColor val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->background;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetStyle (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GtkStyle* val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->style;
   _result = toRPointerWithRef(val, "GtkStyle");

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetData (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   gpointer val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->data;
   _result = val;

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetDestroy (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   GtkDestroyNotify val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->destroy;
   _result = toRPointer(&val, "GtkDestroyNotify");

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetFgSet (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   guint val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->fg_set;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetBgSet (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   guint val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->bg_set;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkCListRowGetSelectable (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkCListRow *obj;
   guint val;

   obj = (GtkCListRow*)getPtrValue(s_obj) ;
   val = obj->selectable;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetBgColor (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   GdkColor val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->bg_color;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetFgColor (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   GdkColor val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->fg_color;
   _result = asRGdkColor(&val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetBgStipple (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   GdkBitmap* val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->bg_stipple;
   _result = toRPointerWithRef(val, "GdkBitmap");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetFgStipple (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   GdkBitmap* val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->fg_stipple;
   _result = toRPointerWithRef(val, "GdkBitmap");

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetRise (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   gint val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->rise;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetUnderline (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   guint val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->underline;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetStrikethrough (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   guint val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->strikethrough;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_GtkTextAppearanceGetDrawBg (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   GtkTextAppearance *obj;
   guint val;

   obj = (GtkTextAppearance*)getPtrValue(s_obj) ;
   val = obj->draw_bg;
   _result = asRNumeric(val);

   return(_result);
} 
