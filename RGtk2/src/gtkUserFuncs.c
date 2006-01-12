#include "gtkUserFuncs.h"
#include "RGtk2.h"


void
S_GtkAboutDialogActivateLinkFunc(GtkAboutDialog* s_about, gchar* s_link, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_ABOUT_DIALOG);
	g_value_init(&params[1], G_TYPE_STRING);

	g_value_set_object(&params[0], s_about);
	g_value_set_string(&params[1], s_link);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GtkCellLayoutDataFunc(GtkCellLayout* s_cell_layout, GtkCellRenderer* s_cell, GtkTreeModel* s_tree_model, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CELL_LAYOUT);
	g_value_init(&params[1], GTK_TYPE_CELL_RENDERER);
	g_value_init(&params[2], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[3], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_cell_layout);
	g_value_set_object(&params[1], s_cell);
	g_value_set_object(&params[2], s_tree_model);
	g_value_set_boxed(&params[3], s_iter);

	g_closure_invoke(s_data, NULL, 4, params, NULL);
} 


void
S_GtkClipboardGetFunc(GtkClipboard* s_clipboard, GtkSelectionData* s_selection_data, guint s_info, gpointer s_user_data_or_owner)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CLIPBOARD);
	g_value_init(&params[1], GTK_TYPE_SELECTION_DATA);
	g_value_init(&params[2], G_TYPE_UINT);

	g_value_set_object(&params[0], s_clipboard);
	g_value_set_boxed(&params[1], s_selection_data);
	g_value_set_uint(&params[2], s_info);

	g_closure_invoke(s_user_data_or_owner, NULL, 3, params, NULL);
} 


void
S_GtkClipboardReceivedFunc(GtkClipboard* s_clipboard, GtkSelectionData* s_selection_data, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CLIPBOARD);
	g_value_init(&params[1], GTK_TYPE_SELECTION_DATA);

	g_value_set_object(&params[0], s_clipboard);
	g_value_set_boxed(&params[1], s_selection_data);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GtkClipboardImageReceivedFunc(GtkClipboard* s_clipboard, GdkPixbuf* s_image, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CLIPBOARD);
	g_value_init(&params[1], GDK_TYPE_PIXBUF);

	g_value_set_object(&params[0], s_clipboard);
	g_value_set_object(&params[1], s_image);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GtkClipboardTextReceivedFunc(GtkClipboard* s_clipboard, gchar* s_text, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CLIPBOARD);
	g_value_init(&params[1], G_TYPE_STRING);

	g_value_set_object(&params[0], s_clipboard);
	g_value_set_string(&params[1], s_text);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GtkClipboardTargetsReceivedFunc(GtkClipboard* s_clipboard, GdkAtom* s_atoms, gint s_n_atoms, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CLIPBOARD);
	g_value_init(&params[1], G_TYPE_POINTER);
	g_value_init(&params[2], G_TYPE_INT);

	g_value_set_object(&params[0], s_clipboard);
	g_value_set_pointer(&params[1], s_atoms);
	g_value_set_int(&params[2], s_n_atoms);

	g_closure_invoke(s_data, NULL, 3, params, NULL);
} 


	GClosure* GtkColorSelectionChangePaletteFunc_closure;
void
S_GtkColorSelectionChangePaletteFunc(GdkColor* s_colors, gint s_n_colors)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GDK_TYPE_COLOR);
	g_value_init(&params[1], G_TYPE_INT);

	g_value_set_boxed(&params[0], s_colors);
	g_value_set_int(&params[1], s_n_colors);

	g_closure_invoke(GtkColorSelectionChangePaletteFunc_closure, NULL, 2, params, NULL);
} 


	GClosure* GtkColorSelectionChangePaletteWithScreenFunc_closure;
void
S_GtkColorSelectionChangePaletteWithScreenFunc(GdkScreen* s_screen, GdkColor* s_colors, gint s_n_colors)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	g_value_init(&params[0], GDK_TYPE_SCREEN);
	g_value_init(&params[1], GDK_TYPE_COLOR);
	g_value_init(&params[2], G_TYPE_INT);

	g_value_set_object(&params[0], s_screen);
	g_value_set_boxed(&params[1], s_colors);
	g_value_set_int(&params[2], s_n_colors);

	g_closure_invoke(GtkColorSelectionChangePaletteWithScreenFunc_closure, NULL, 3, params, NULL);
} 


gboolean
S_GtkCTreeGNodeFunc(GtkCTree* s_ctree, guint s_depth, GNode* s_gnode, GtkCTreeNode* s_cnode, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_CTREE);
	g_value_init(&params[1], G_TYPE_UINT);
	g_value_init(&params[2], G_TYPE_POINTER);
	g_value_init(&params[3], GTK_TYPE_CTREE_NODE);

	g_value_set_object(&params[0], s_ctree);
	g_value_set_uint(&params[1], s_depth);
	g_value_set_pointer(&params[2], s_gnode);
	g_value_set_pointer(&params[3], s_cnode);

	g_closure_invoke(s_data, ans, 4, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkCTreeFunc(GtkCTree* s_ctree, GtkCTreeNode* s_node, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_CTREE);
	g_value_init(&params[1], GTK_TYPE_CTREE_NODE);

	g_value_set_object(&params[0], s_ctree);
	g_value_set_pointer(&params[1], s_node);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


gboolean
S_GtkEntryCompletionMatchFunc(GtkEntryCompletion* s_completion, gchar* s_key, GtkTreeIter* s_iter, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_ENTRY_COMPLETION);
	g_value_init(&params[1], G_TYPE_STRING);
	g_value_init(&params[2], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_completion);
	g_value_set_string(&params[1], s_key);
	g_value_set_boxed(&params[2], s_iter);

	g_closure_invoke(s_user_data, ans, 3, params, NULL);

	return(g_value_get_boolean(ans));
} 


gboolean
S_GtkFileFilterFunc(GtkFileFilterInfo* s_filter_info, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], G_TYPE_POINTER);

	g_value_set_pointer(&params[0], s_filter_info);

	g_closure_invoke(s_data, ans, 1, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkIconViewForeachFunc(GtkIconView* s_icon_view, GtkTreePath* s_path, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_ICON_VIEW);
	g_value_init(&params[1], GTK_TYPE_TREE_PATH);

	g_value_set_object(&params[0], s_icon_view);
	g_value_set_boxed(&params[1], s_path);

	g_closure_invoke(s_data, NULL, 2, params, NULL);
} 


void
S_GtkTranslateFunc(gchar* s_path, gpointer s_func_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_STRING);

	g_value_set_string(&params[0], s_path);

	g_closure_invoke(s_func_data, NULL, 1, params, NULL);
} 


gboolean
S_GtkFunction(gpointer s_data)
{

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_closure_invoke(s_data, ans, 0, NULL, NULL);

	return(g_value_get_boolean(ans));
} 


gint
S_GtkKeySnoopFunc(GtkWidget* s_grab_widget, GdkEventKey* s_event, gpointer s_func_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_WIDGET);
	g_value_init(&params[1], G_TYPE_POINTER);

	g_value_set_object(&params[0], s_grab_widget);
	g_value_set_pointer(&params[1], s_event);

	g_closure_invoke(s_func_data, ans, 2, params, NULL);

	return(g_value_get_int(ans));
} 


gint
S_GtkMenuPositionFunc(GtkMenu* s_menu, gint* s_x, gint* s_y, gboolean* s_push_in, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_MENU);
	g_value_init(&params[1], G_TYPE_POINTER);
	g_value_init(&params[2], G_TYPE_POINTER);
	g_value_init(&params[3], G_TYPE_POINTER);

	g_value_set_object(&params[0], s_menu);
	g_value_set_pointer(&params[1], s_x);
	g_value_set_pointer(&params[2], s_y);
	g_value_set_pointer(&params[3], s_push_in);

	g_closure_invoke(s_user_data, ans, 4, params, NULL);

	return(g_value_get_int(ans));
} 


gint
S_GtkTreeModelForeachFunc(GtkTreeModel* s_model, GtkTreePath* s_path, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_PATH);
	g_value_init(&params[2], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_path);
	g_value_set_boxed(&params[2], s_iter);

	g_closure_invoke(s_data, ans, 3, params, NULL);

	return(g_value_get_int(ans));
} 


gint
S_GtkTreeModelFilterVisibleFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_iter);

	g_closure_invoke(s_data, ans, 2, params, NULL);

	return(g_value_get_int(ans));
} 


gint
S_GtkTreeModelFilterModifyFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, GValue* s_value, gint s_column, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_ITER);
	g_value_init(&params[2], G_TYPE_VALUE);
	g_value_init(&params[3], G_TYPE_INT);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_iter);
	g_value_set_pointer(&params[2], s_value);
	g_value_set_int(&params[3], s_column);

	g_closure_invoke(s_data, ans, 4, params, NULL);

	return(g_value_get_int(ans));
} 


gboolean
S_GtkTreeSelectionFunc(GtkTreeSelection* s_selection, GtkTreeModel* s_model, GtkTreePath* s_path, gboolean s_path_currently_selected, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_TREE_SELECTION);
	g_value_init(&params[1], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[2], GTK_TYPE_TREE_PATH);
	g_value_init(&params[3], G_TYPE_BOOLEAN);

	g_value_set_object(&params[0], s_selection);
	g_value_set_object(&params[1], s_model);
	g_value_set_boxed(&params[2], s_path);
	g_value_set_boolean(&params[3], s_path_currently_selected);

	g_closure_invoke(s_data, ans, 4, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkTreeSelectionForeachFunc(GtkTreeModel* s_model, GtkTreePath* s_path, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_PATH);
	g_value_init(&params[2], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_path);
	g_value_set_boxed(&params[2], s_iter);

	g_closure_invoke(s_data, NULL, 3, params, NULL);
} 


gint
S_GtkTreeIterCompareFunc(GtkTreeModel* s_model, GtkTreeIter* s_a, GtkTreeIter* s_b, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_INT);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_ITER);
	g_value_init(&params[2], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_a);
	g_value_set_boxed(&params[2], s_b);

	g_closure_invoke(s_user_data, ans, 3, params, NULL);

	return(g_value_get_int(ans));
} 


void
S_GtkTreeCellDataFunc(GtkTreeViewColumn* s_tree_column, GtkCellRenderer* s_cell, GtkTreeModel* s_tree_model, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_TREE_VIEW_COLUMN);
	g_value_init(&params[1], GTK_TYPE_CELL_RENDERER);
	g_value_init(&params[2], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[3], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_tree_column);
	g_value_set_object(&params[1], s_cell);
	g_value_set_object(&params[2], s_tree_model);
	g_value_set_boxed(&params[3], s_iter);

	g_closure_invoke(s_data, NULL, 4, params, NULL);
} 


gboolean
S_GtkTreeViewColumnDropFunc(GtkTreeView* s_tree_view, GtkTreeViewColumn* s_column, GtkTreeViewColumn* s_prev_column, GtkTreeViewColumn* s_next_column, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_TREE_VIEW);
	g_value_init(&params[1], GTK_TYPE_TREE_VIEW_COLUMN);
	g_value_init(&params[2], GTK_TYPE_TREE_VIEW_COLUMN);
	g_value_init(&params[3], GTK_TYPE_TREE_VIEW_COLUMN);

	g_value_set_object(&params[0], s_tree_view);
	g_value_set_object(&params[1], s_column);
	g_value_set_object(&params[2], s_prev_column);
	g_value_set_object(&params[3], s_next_column);

	g_closure_invoke(s_data, ans, 4, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkTreeViewMappingFunc(GtkTreeView* s_tree_view, GtkTreePath* s_path, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_TREE_VIEW);
	g_value_init(&params[1], GTK_TYPE_TREE_PATH);

	g_value_set_object(&params[0], s_tree_view);
	g_value_set_boxed(&params[1], s_path);

	g_closure_invoke(s_user_data, NULL, 2, params, NULL);
} 


gboolean
S_GtkTreeViewSearchEqualFunc(GtkTreeModel* s_model, gint s_column, gchar* s_key, GtkTreeIter* s_iter, gpointer s_search_data)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], G_TYPE_INT);
	g_value_init(&params[2], G_TYPE_STRING);
	g_value_init(&params[3], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_int(&params[1], s_column);
	g_value_set_string(&params[2], s_key);
	g_value_set_boxed(&params[3], s_iter);

	g_closure_invoke(s_search_data, ans, 4, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkTreeDestroyCountFunc(GtkTreeView* s_tree_view, GtkTreePath* s_path, gint s_children, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(3, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_TREE_VIEW);
	g_value_init(&params[1], GTK_TYPE_TREE_PATH);
	g_value_init(&params[2], G_TYPE_INT);

	g_value_set_object(&params[0], s_tree_view);
	g_value_set_boxed(&params[1], s_path);
	g_value_set_int(&params[2], s_children);

	g_closure_invoke(s_user_data, NULL, 3, params, NULL);
} 


gboolean
S_GtkTreeViewRowSeparatorFunc(GtkTreeModel* s_model, GtkTreeIter* s_iter, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_TREE_MODEL);
	g_value_init(&params[1], GTK_TYPE_TREE_ITER);

	g_value_set_object(&params[0], s_model);
	g_value_set_boxed(&params[1], s_iter);

	g_closure_invoke(s_data, ans, 2, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkCallback(GtkWidget* s_child, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_WIDGET);

	g_value_set_object(&params[0], s_child);

	g_closure_invoke(s_data, NULL, 1, params, NULL);
} 


void
S_GtkAccelMapForeach(gpointer s_data, gchar* s_accel_path, guint s_accel_key, GdkModifierType s_accel_mods, gboolean s_changed)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_STRING);
	g_value_init(&params[1], G_TYPE_UINT);
	g_value_init(&params[2], GDK_TYPE_MODIFIER_TYPE);
	g_value_init(&params[3], G_TYPE_BOOLEAN);

	g_value_set_string(&params[0], s_accel_path);
	g_value_set_uint(&params[1], s_accel_key);
	g_value_set_flags(&params[2], s_accel_mods);
	g_value_set_boolean(&params[3], s_changed);

	g_closure_invoke(s_data, NULL, 4, params, NULL);
} 


gboolean
S_GtkAccelGroupFindFunc(GtkAccelKey* s_key, GClosure* s_closure, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], G_TYPE_POINTER);
	g_value_init(&params[1], G_TYPE_POINTER);

	g_value_set_pointer(&params[0], s_key);
	g_value_set_pointer(&params[1], s_closure);

	g_closure_invoke(s_data, ans, 2, params, NULL);

	return(g_value_get_boolean(ans));
} 


	GClosure* GtkAccelGroupActivate_closure;
gboolean
S_GtkAccelGroupActivate(GtkAccelGroup* s_accel_group, GObject* s_acceleratable, guint s_keyval, GdkModifierType s_modifier)
{
	GValue * params = (GValue *)S_alloc(4, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], GTK_TYPE_ACCEL_GROUP);
	g_value_init(&params[1], G_TYPE_OBJECT);
	g_value_init(&params[2], G_TYPE_UINT);
	g_value_init(&params[3], GDK_TYPE_MODIFIER_TYPE);

	g_value_set_object(&params[0], s_accel_group);
	g_value_set_pointer(&params[1], s_acceleratable);
	g_value_set_uint(&params[2], s_keyval);
	g_value_set_flags(&params[3], s_modifier);

	g_closure_invoke(GtkAccelGroupActivate_closure, ans, 4, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkTextTagTableForeach(GtkTextTag* s_tag, gpointer s_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_TEXT_TAG);

	g_value_set_object(&params[0], s_tag);

	g_closure_invoke(s_data, NULL, 1, params, NULL);
} 


gboolean
S_GtkTextCharPredicate(gunichar s_ch, gpointer s_user_data)
{
	GValue * params = (GValue *)S_alloc(1, sizeof(GValue));

	GValue * ans = (GValue *)S_alloc(1, sizeof(GValue));

	g_value_init(ans, G_TYPE_BOOLEAN);

	g_value_init(&params[0], G_TYPE_UINT);

	g_value_set_uint(&params[0], s_ch);

	g_closure_invoke(s_user_data, ans, 1, params, NULL);

	return(g_value_get_boolean(ans));
} 


void
S_GtkItemFactoryCallback1(gpointer s_callback_data, guint s_callback_action, GtkWidget* s_widget)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], G_TYPE_UINT);
	g_value_init(&params[1], GTK_TYPE_WIDGET);

	g_value_set_uint(&params[0], s_callback_action);
	g_value_set_object(&params[1], s_widget);

	g_closure_invoke(s_callback_data, NULL, 2, params, NULL);
} 


void
S_GtkItemFactoryCallback2(GtkWidget* s_widget, gpointer s_callback_data, guint s_callback_action)
{
	GValue * params = (GValue *)S_alloc(2, sizeof(GValue));

	g_value_init(&params[0], GTK_TYPE_WIDGET);
	g_value_init(&params[1], G_TYPE_UINT);

	g_value_set_object(&params[0], s_widget);
	g_value_set_uint(&params[1], s_callback_action);

	g_closure_invoke(s_callback_data, NULL, 2, params, NULL);
} 

