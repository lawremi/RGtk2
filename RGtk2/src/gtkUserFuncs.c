#include "RGtk2/gtkUserFuncs.h"

void
S_GtkAboutDialogActivateLinkFunc(GtkAboutDialog* s_about, const gchar* s_link, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_about, "GtkAboutDialog"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_link));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkCellLayoutDataFunc(GtkCellLayout* s_cell_layout, GtkCellRenderer* s_cell, GtkTreeModel* s_tree_model, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_cell_layout, "GtkCellLayout"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tree_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkClipboardGetFunc(GtkClipboard* s_clipboard, GtkSelectionData* s_selection_data, guint s_info, gpointer s_user_data_or_owner)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_user_data_or_owner)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data_or_owner)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_info));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data_or_owner)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data_or_owner)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkClipboardReceivedFunc(GtkClipboard* s_clipboard, GtkSelectionData* s_selection_data, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_selection_data ? gtk_selection_data_copy(s_selection_data) : NULL, "GtkSelectionData", (RPointerFinalizer) gtk_selection_data_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkClipboardImageReceivedFunc(GtkClipboard* s_clipboard, GdkPixbuf* s_image, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_image, "GdkPixbuf"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkClipboardTextReceivedFunc(GtkClipboard* s_clipboard, const gchar* s_text, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_text));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkClipboardTargetsReceivedFunc(GtkClipboard* s_clipboard, GdkAtom* s_atoms, gint s_n_atoms, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayWithSize(s_atoms, asRGdkAtom, s_n_atoms));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n_atoms));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


  R_CallbackData * GtkColorSelectionChangePaletteFunc_cbdata;
void
S_GtkColorSelectionChangePaletteFunc(const GdkColor* s_colors, gint s_n_colors)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+GtkColorSelectionChangePaletteFunc_cbdata->useData));
  tmp = e;

  SETCAR(tmp, GtkColorSelectionChangePaletteFunc_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRArrayRefWithSize(s_colors, asRGdkColor, s_n_colors));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n_colors));
  tmp = CDR(tmp);
  if(GtkColorSelectionChangePaletteFunc_cbdata->useData)
  {
    SETCAR(tmp, GtkColorSelectionChangePaletteFunc_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


  R_CallbackData * GtkColorSelectionChangePaletteWithScreenFunc_cbdata;
void
S_GtkColorSelectionChangePaletteWithScreenFunc(GdkScreen* s_screen, const GdkColor* s_colors, gint s_n_colors)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+GtkColorSelectionChangePaletteWithScreenFunc_cbdata->useData));
  tmp = e;

  SETCAR(tmp, GtkColorSelectionChangePaletteWithScreenFunc_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_screen, "GdkScreen"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRArrayRefWithSize(s_colors, asRGdkColor, s_n_colors));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_n_colors));
  tmp = CDR(tmp);
  if(GtkColorSelectionChangePaletteWithScreenFunc_cbdata->useData)
  {
    SETCAR(tmp, GtkColorSelectionChangePaletteWithScreenFunc_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkCTreeGNodeFunc(GtkCTree* s_ctree, guint s_depth, GNode* s_gnode, GtkCTreeNode* s_cnode, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_ctree, "GtkCTree"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_depth));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_gnode, "GNode"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_cnode, "GtkCTreeNode"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkCTreeFunc(GtkCTree* s_ctree, GtkCTreeNode* s_node, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_ctree, "GtkCTree"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointer(s_node, "GtkCTreeNode"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkEntryCompletionMatchFunc(GtkEntryCompletion* s_completion, const gchar* s_key, GtkTreeIter* s_iter, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_completion, "GtkEntryCompletion"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_key));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


gboolean
S_GtkFileFilterFunc(const GtkFileFilterInfo* s_filter_info, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRGtkFileFilterInfo(s_filter_info));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkIconViewForeachFunc(GtkIconView* s_icon_view, GtkTreePath* s_path, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_icon_view, "GtkIconView"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkTranslateFunc(const gchar* s_path, gpointer s_func_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_func_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_func_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRString(s_path));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_func_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_func_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkFunction(gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 1+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  ;
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


gint
S_GtkKeySnoopFunc(GtkWidget* s_grab_widget, GdkEventKey* s_event, gpointer s_func_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_func_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_func_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_grab_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRGdkEvent(((GdkEvent *)s_event), FALSE));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_func_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_func_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 


gint
S_GtkMenuPositionFunc(GtkMenu* s_menu, gint* s_x, gint* s_y, gboolean* s_push_in, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_menu, "GtkMenu"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  *s_x = ((gint)asCInteger(VECTOR_ELT(s_ans, 1)));
  *s_y = ((gint)asCInteger(VECTOR_ELT(s_ans, 2)));
  *s_push_in = ((gboolean)asCLogical(VECTOR_ELT(s_ans, 3)));
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
} 


gint
S_GtkTreeModelForeachFunc(GtkTreeModel* s_model, GtkTreePath* s_path, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 


gint
S_GtkTreeModelFilterVisibleFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 


gint
S_GtkTreeModelFilterModifyFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, GValue* s_value, gint s_column, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGValue(s_value));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 


gboolean
S_GtkTreeSelectionFunc(GtkTreeSelection* s_selection, GtkTreeModel* s_model, GtkTreePath* s_path, gboolean s_path_currently_selected, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_selection, "GtkTreeSelection"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_path_currently_selected));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkTreeSelectionForeachFunc(GtkTreeModel* s_model, GtkTreePath* s_path, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gint
S_GtkTreeIterCompareFunc(GtkTreeModel* s_model, GtkTreeIter* s_a, GtkTreeIter* s_b, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_a ? gtk_tree_iter_copy(s_a) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_b ? gtk_tree_iter_copy(s_b) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
} 


void
S_GtkTreeCellDataFunc(GtkTreeViewColumn* s_tree_column, GtkCellRenderer* s_cell, GtkTreeModel* s_tree_model, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_tree_column, "GtkTreeViewColumn"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_cell, "GtkCellRenderer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_tree_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkTreeViewColumnDropFunc(GtkTreeView* s_tree_view, GtkTreeViewColumn* s_column, GtkTreeViewColumn* s_prev_column, GtkTreeViewColumn* s_next_column, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_tree_view, "GtkTreeView"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_column, "GtkTreeViewColumn"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_prev_column, "GtkTreeViewColumn"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_next_column, "GtkTreeViewColumn"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkTreeViewMappingFunc(GtkTreeView* s_tree_view, GtkTreePath* s_path, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_tree_view, "GtkTreeView"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkTreeViewSearchEqualFunc(GtkTreeModel* s_model, gint s_column, const gchar* s_key, GtkTreeIter* s_iter, gpointer s_search_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_search_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_search_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_column));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_key));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_search_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_search_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkTreeDestroyCountFunc(GtkTreeView* s_tree_view, GtkTreePath* s_path, gint s_children, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 4+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_tree_view, "GtkTreeView"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_path ? gtk_tree_path_copy(s_path) : NULL, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_children));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkTreeViewRowSeparatorFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_model, "GtkTreeModel"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_tree_iter_copy(s_iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkCallback(GtkWidget* s_child, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_child, "GtkWidget"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkAccelMapForeach(gpointer s_data, const gchar* s_accel_path, guint s_accel_key, GdkModifierType s_accel_mods, gboolean s_changed)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRString(s_accel_path));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_accel_key));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_accel_mods, GDK_TYPE_MODIFIER_TYPE));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_changed));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkAccelGroupFindFunc(GtkAccelKey* s_key, GClosure* s_closure, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRGtkAccelKey(s_key));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGClosure(s_closure));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


  R_CallbackData * GtkAccelGroupActivate_cbdata;
gboolean
S_GtkAccelGroupActivate(GtkAccelGroup* s_accel_group, GObject* s_acceleratable, guint s_keyval, GdkModifierType s_modifier)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+GtkAccelGroupActivate_cbdata->useData));
  tmp = e;

  SETCAR(tmp, GtkAccelGroupActivate_cbdata->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_accel_group, "GtkAccelGroup"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_acceleratable, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_keyval));
  tmp = CDR(tmp);
  SETCAR(tmp, asRFlag(s_modifier, GDK_TYPE_MODIFIER_TYPE));
  tmp = CDR(tmp);
  if(GtkAccelGroupActivate_cbdata->useData)
  {
    SETCAR(tmp, GtkAccelGroupActivate_cbdata->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkTextTagTableForeach(GtkTextTag* s_tag, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_tag, "GtkTextTag"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


gboolean
S_GtkTextCharPredicate(gunichar s_ch, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_ch));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
} 


void
S_GtkItemFactoryCallback1(gpointer s_callback_data, guint s_callback_action, GtkWidget* s_widget)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_callback_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_callback_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_callback_action));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_callback_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_callback_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 


void
S_GtkItemFactoryCallback2(GtkWidget* s_widget, gpointer s_callback_data, guint s_callback_action)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_callback_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_callback_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_widget, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_callback_action));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_callback_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_callback_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
} 

#if GTK_CHECK_VERSION(2, 10, 0)

gint
S_GtkAssistantPageFunc(gint s_current_page, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRInteger(s_current_page));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

void
S_GtkClipboardRichTextReceivedFunc(GtkClipboard* s_clipboard, GdkAtom s_format, const guint8* s_text, gsize s_length, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRGdkAtom(s_format));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRawArrayWithSize(s_text, s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_length));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

void
S_GtkLinkButtonUriFunc(GtkLinkButton* s_button, const gchar* s_link, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_button, "GtkLinkButton"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_link));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

GtkNotebook*
S_GtkNotebookWindowCreationFunc(GtkNotebook* s_source, GtkWidget* s_page, gint s_x, gint s_y, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_source, "GtkNotebook"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_page, "GtkWidget"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_x));
  tmp = CDR(tmp);
  SETCAR(tmp, asRInteger(s_y));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((GtkNotebook*)0));
  return(GTK_NOTEBOOK(getPtrValue(s_ans)));
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

void
S_GtkPageSetupDoneFunc(GtkPageSetup* s_page_setup, gpointer s_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_page_setup, "GtkPageSetup"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

void
S_GtkPrintSettingsFunc(const gchar* s_key, const gchar* s_value, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRString(s_key));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_value));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

gint
S_GtkRecentSortFunc(GtkRecentInfo* s_a, GtkRecentInfo* s_b, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithFinalizer(s_a ? gtk_recent_info_ref(s_a) : NULL, "GtkRecentInfo", (RPointerFinalizer) gtk_recent_info_unref));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_b ? gtk_recent_info_ref(s_b) : NULL, "GtkRecentInfo", (RPointerFinalizer) gtk_recent_info_unref));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gint)0));
  return(((gint)asCInteger(s_ans)));
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

gboolean
S_GtkRecentFilterFunc(const GtkRecentFilterInfo* s_filter_info, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 2+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRGtkRecentFilterInfo(s_filter_info));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  return(((gboolean)asCLogical(s_ans)));
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

gboolean
S_GtkTextBufferDeserializeFunc(GtkTextBuffer* s_register_buffer, GtkTextBuffer* s_content_buffer, GtkTextIter* s_iter, const guint8* s_data, gsize s_length, gboolean s_create_tags, gpointer s_user_data, GError** s_error)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_register_buffer, "GtkTextBuffer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_content_buffer, "GtkTextBuffer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(s_iter ? gtk_text_iter_copy(s_iter) : NULL, "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, asRRawArrayWithSize(s_data, s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, asRLogical(s_create_tags));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gboolean)0));
  *s_error = asCGError(VECTOR_ELT(s_ans, 1));
  return(((gboolean)asCLogical(VECTOR_ELT(s_ans, 0))));
}
#endif 

#if GTK_CHECK_VERSION(2, 10, 0)

void
S_GtkTreeViewSearchPositionFunc(GtkTreeView* s_tree_view, GtkWidget* s_search_dialog, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_tree_view, "GtkTreeView"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithSink(s_search_dialog, "GtkWidget"));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 12, 0)

void
S_GtkBuilderConnectFunc(GtkBuilder* s_builder, GObject* s_object, const gchar* s_signal_name, const gchar* s_handler_name, GObject* s_connect_object, guint s_flags, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 7+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_builder, "GtkBuilder"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_signal_name));
  tmp = CDR(tmp);
  SETCAR(tmp, asRString(s_handler_name));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_connect_object, "GObject"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_flags));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

#if GTK_CHECK_VERSION(2, 14, 0)

gchar*
S_GtkCalendarDetailFunc(GtkCalendar* s_calendar, guint s_year, guint s_month, guint s_day, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 5+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_calendar, "GtkCalendar"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_year));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_month));
  tmp = CDR(tmp);
  SETCAR(tmp, asRNumeric(s_day));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return(((gchar*)0));
  return(((gchar*)g_strdup(asCString(s_ans))));
}
#endif 

#if GTK_CHECK_VERSION(2, 14, 0)

void
S_GtkClipboardURIReceivedFunc(GtkClipboard* s_clipboard, gchar** s_uris, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  gint err;

  PROTECT(e = allocVector(LANGSXP, 3+((R_CallbackData *)s_user_data)->useData));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_clipboard, "GtkClipboard"));
  tmp = CDR(tmp);
  SETCAR(tmp, asRStringArray(s_uris));
  tmp = CDR(tmp);
  if(((R_CallbackData *)s_user_data)->useData)
  {
    SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
    tmp = CDR(tmp);
  }

  s_ans = R_tryEval(e, R_GlobalEnv, &err);

  UNPROTECT(1);

  if(err)
    return;
}
#endif 

