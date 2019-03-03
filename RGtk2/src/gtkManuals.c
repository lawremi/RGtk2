#include "RGtk2/gtk.h"
#include "gtkFuncs.h"

/* reason: needs to serve as a finalizer for the user data to the clipboard user funcs */
void S_GtkClipboardClearFunc(GtkClipboard *clipboard, gpointer user_data_or_owner)
{
    R_freeCBData(user_data_or_owner);
}

/* reason: primarily because GtkToggleActionEntry contains a GCallback,
    but there are many other inconvenient things about this function.
    note: the following two functions have the same args, because the user
    should not be bothered with memory destruction.
*/
USER_OBJECT_
S_gtk_action_group_add_toggle_actions_full(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_user_data)
{
    int i;
    GtkActionGroup* group = GTK_ACTION_GROUP(getPtrValue(s_action_group));

    for (i = 0; i < GET_LENGTH(s_entries); i++) {
        GtkToggleAction *action;
        USER_OBJECT_ s_entry = VECTOR_ELT(s_entries, i), callback = VECTOR_ELT(s_entry, 5);
        const gchar* accel = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 3)));
        const gchar* tooltip = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 4)));
        action = gtk_toggle_action_new(asCString(VECTOR_ELT(s_entry, 0)), asCString(VECTOR_ELT(s_entry, 2)),
                tooltip, asCString(VECTOR_ELT(s_entry, 1)));
        gtk_toggle_action_set_active(action, asCLogical(VECTOR_ELT(s_entry, 6)));
        if (GET_LENGTH(callback) > 0)
            g_signal_connect_closure(action, "toggled", R_createGClosure(callback, s_user_data), (gboolean)1);

        gtk_action_group_add_action_with_accel(group, (GtkAction *)action, accel);

        g_object_unref(action);
    }

    return(NULL_USER_OBJECT);
}
USER_OBJECT_
S_gtk_action_group_add_toggle_actions(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_user_data)
{
    return(S_gtk_action_group_add_toggle_actions_full(s_action_group, s_entries, s_user_data));
}

/* reason: same as above basically
*/
USER_OBJECT_
S_gtk_action_group_add_radio_actions_full(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_value, USER_OBJECT_ s_on_change, USER_OBJECT_ s_user_data)
{
    GtkRadioAction* first = NULL;
    GSList *group_list = NULL;
    int i;

    GtkActionGroup* group = GTK_ACTION_GROUP(getPtrValue(s_action_group));
    int value = asCInteger(s_value);
    GtkRadioAction *action = NULL;

    for (i = 0; i < GET_LENGTH(s_entries); i++) {

        USER_OBJECT_ s_entry = VECTOR_ELT(s_entries, i);
        const gchar* accel = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 3)));
        const gchar* tooltip = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 4)));
        action = gtk_radio_action_new(asCString(VECTOR_ELT(s_entry, 0)), asCString(VECTOR_ELT(s_entry, 2)),
                tooltip, asCString(VECTOR_ELT(s_entry, 1)), asCInteger(VECTOR_ELT(s_entry,5)));
        /* add this radio action to the group list */
        gtk_radio_action_set_group(action, group_list);
        group_list = gtk_radio_action_get_group(action);
        if (i == 0)
            first = action;
        if (value == asCInteger(VECTOR_ELT(s_entry,5)))
            gtk_toggle_action_set_active((GtkToggleAction *)action, TRUE);

        gtk_action_group_add_action_with_accel(group, (GtkAction*)action, accel);

        g_object_unref(action);
    }

    if(GET_LENGTH(s_on_change) > 0 && first)
        g_signal_connect_closure(action, "changed", R_createGClosure(s_on_change, s_user_data), TRUE);

    return(NULL_USER_OBJECT);
}
USER_OBJECT_
S_gtk_action_group_add_radio_actions(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_value, USER_OBJECT_ s_on_change, USER_OBJECT_ s_user_data)
{
    return(S_gtk_action_group_add_radio_actions_full(s_action_group, s_entries, s_value, s_on_change, s_user_data));
}

/* reason: same as above
*/
USER_OBJECT_
S_gtk_action_group_add_actions_full(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_user_data)
{
    int i;

    GtkActionGroup* group = GTK_ACTION_GROUP(getPtrValue(s_action_group));

    for (i = 0; i < GET_LENGTH(s_entries); i++) {
        GtkAction *action;
        USER_OBJECT_ s_entry = VECTOR_ELT(s_entries, i), callback = VECTOR_ELT(s_entry, 5);
        const gchar* accel = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 3)));
        const gchar* tooltip = gtk_action_group_translate_string(group, asCString(VECTOR_ELT(s_entry, 4)));
        action = gtk_action_new(asCString(VECTOR_ELT(s_entry, 0)), asCString(VECTOR_ELT(s_entry, 2)),
                tooltip, asCString(VECTOR_ELT(s_entry, 1)));
        if (GET_LENGTH(callback) > 0)
            g_signal_connect_closure(action, "activate", R_createGClosure(callback, s_user_data), TRUE);

        gtk_action_group_add_action_with_accel(group, (GtkAction *)action, accel);

        g_object_unref(action);
    }

    return(NULL_USER_OBJECT);
}
USER_OBJECT_
S_gtk_action_group_add_actions(USER_OBJECT_ s_action_group, USER_OBJECT_ s_entries, USER_OBJECT_ s_user_data)
{
    return(S_gtk_action_group_add_actions_full(s_action_group, s_entries, s_user_data));
}

/* Cannot set row data without a finalizer */

USER_OBJECT_
 S_gtk_clist_set_row_data ( USER_OBJECT_ s_object, USER_OBJECT_ s_row, USER_OBJECT_ s_data )
{
         GtkCList* object = GTK_CLIST(getPtrValue(s_object)) ;
         gint row = INTEGER_DATA(s_row)[0] ;
         gpointer data = asCGenericData(s_data) ;

        USER_OBJECT_ _result = NULL_USER_OBJECT;

          gtk_clist_set_row_data_full ( object, row, data, (GtkDestroyNotify)R_ReleaseObject );

        return(_result);
}
USER_OBJECT_
 S_gtk_ctree_node_set_row_data ( USER_OBJECT_ s_object, USER_OBJECT_ s_node, USER_OBJECT_ s_data )
{
         GtkCTree* object = GTK_CTREE(getPtrValue(s_object)) ;
         GtkCTreeNode* node = GTK_CTREE_NODE(getPtrValue(s_node)) ;
         gpointer data = asCGenericData(s_data) ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

          gtk_ctree_node_set_row_data_full ( object, node, data, (GtkDestroyNotify)R_ReleaseObject );

        return(_result);
}

/* reason: GtkSignalFunc is a generic user-func, cannot auto-convert
   (even though at least in the defs it is always treated as a GtkCallback)
USER_OBJECT_
 S_gtk_toolbar_append_element ( USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data )
{
         GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object)) ;
         GtkToolbarChildType type = (GtkToolbarChildType)INTEGER_DATA(s_type)[0];
         GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget)) ;
         const char* text = CHAR_DEREF(STRING_ELT(s_text, 0)) ;
         const char* tooltip_text = CHAR_DEREF(STRING_ELT(s_tooltip_text, 0)) ;
         const char* tooltip_private_text = CHAR_DEREF(STRING_ELT(s_tooltip_private_text, 0)) ;
         GtkWidget* icon = GTK_WIDGET(getPtrValue(s_icon)) ;
         GtkSignalFunc callback = (GtkSignalFunc)S_GtkCallback ;
         gpointer user_data = R_createGClosure(s_callback, s_user_data) ;
         GtkWidget* ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         ans =  gtk_toolbar_append_element ( object, type, widget, text, tooltip_text, tooltip_private_text, icon, callback, user_data );
        _result = toRPointerWithRef ( ans, "GtkWidget" );


        return(_result);
}

USER_OBJECT_
 S_gtk_toolbar_prepend_element ( USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data )
{
         GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object)) ;
         GtkToolbarChildType type = (GtkToolbarChildType)INTEGER_DATA(s_type)[0];
         GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget)) ;
         const char* text = CHAR_DEREF(STRING_ELT(s_text, 0)) ;
         const char* tooltip_text = CHAR_DEREF(STRING_ELT(s_tooltip_text, 0)) ;
         const char* tooltip_private_text = CHAR_DEREF(STRING_ELT(s_tooltip_private_text, 0)) ;
         GtkWidget* icon = GTK_WIDGET(getPtrValue(s_icon)) ;
         GtkSignalFunc callback = (GtkSignalFunc)S_GtkCallback ;
         gpointer user_data = R_createGClosure(s_callback, s_user_data) ;
         GtkWidget* ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         ans =  gtk_toolbar_prepend_element ( object, type, widget, text, tooltip_text, tooltip_private_text, icon, callback, user_data );
        _result = toRPointerWithRef ( ans, "GtkWidget" );


        return(_result);
}
USER_OBJECT_
 S_gtk_toolbar_insert_element ( USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_widget, USER_OBJECT_ s_text, USER_OBJECT_ s_tooltip_text, USER_OBJECT_ s_tooltip_private_text, USER_OBJECT_ s_icon, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_position )
{
         GtkToolbar* object = GTK_TOOLBAR(getPtrValue(s_object)) ;
         GtkToolbarChildType type = (GtkToolbarChildType)INTEGER_DATA(s_type)[0] ;
         GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget)) ;
         const char* text = CHAR_DEREF(STRING_ELT(s_text, 0)) ;
         const char* tooltip_text = CHAR_DEREF(STRING_ELT(s_tooltip_text, 0)) ;
         const char* tooltip_private_text = CHAR_DEREF(STRING_ELT(s_tooltip_private_text, 0)) ;
         GtkWidget* icon = GTK_WIDGET(getPtrValue(s_icon)) ;
         GtkSignalFunc callback = (GtkSignalFunc)S_GtkCallback;
         gpointer user_data = R_createGClosure(s_callback, s_user_data) ;
         gint position = INTEGER_DATA(s_position)[0] ;
         GtkWidget* ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         ans =  gtk_toolbar_insert_element ( object, type, widget, text, tooltip_text, tooltip_private_text, icon, callback, user_data, position );
        _result = toRPointerWithRef ( ans, "GtkWidget" );


        return(_result);
}*/

/* reason: GtkItemFactoryEntry has a context-dependent GCallback
    Also, the callback data is external to the struct...
*/
USER_OBJECT_
 S_gtk_item_factory_create_item ( USER_OBJECT_ s_object, USER_OBJECT_ s_entry, USER_OBJECT_ s_callback_data, USER_OBJECT_ s_callback_type )
{
         GtkItemFactory* object = GTK_ITEM_FACTORY(getPtrValue(s_object)) ;
         GtkItemFactoryEntry* entry;
         R_CallbackData* callback_data = R_createCBData(VECTOR_ELT(s_entry, 3), s_callback_data) ;
         guint callback_type = (guint)NUMERIC_DATA(s_callback_type)[0] ;

         USER_OBJECT_ _result = NULL_USER_OBJECT;

         entry = R_createGtkItemFactoryEntry(s_entry, callback_type) ;

         gtk_item_factory_create_item ( object, entry, callback_data, callback_type );

        return(_result);
}
USER_OBJECT_
 S_gtk_item_factory_create_items_ac ( USER_OBJECT_ s_object, USER_OBJECT_ s_entries, USER_OBJECT_ s_callback_data, USER_OBJECT_ s_callback_type )
{
         GtkItemFactory* object = GTK_ITEM_FACTORY(getPtrValue(s_object)) ;
         guint n_entries = GET_LENGTH(s_entries) ;
         GtkItemFactoryEntry* entries;
         R_CallbackData* callback_data = R_createCBData(VECTOR_ELT(s_entries, 3), s_callback_data) ;
         guint callback_type = (guint)NUMERIC_DATA(s_callback_type)[0] ;

         USER_OBJECT_ _result = NULL_USER_OBJECT;

         GtkItemFactoryEntry* (*convert)(USER_OBJECT_ s_entry);

        if (callback_type == 1)
            convert = asCGtkItemFactoryEntry;
        else convert = asCGtkItemFactoryEntry2;

        entries = asCArrayRef(s_entries, GtkItemFactoryEntry, convert) ;

          gtk_item_factory_create_items_ac ( object, n_entries, entries, callback_data, callback_type );

        return(_result);
}
USER_OBJECT_
 S_gtk_item_factory_create_items ( USER_OBJECT_ s_object, USER_OBJECT_ s_entries, USER_OBJECT_ s_callback_data )
{
    USER_OBJECT_ s_callback_type = PROTECT(asRInteger(1));
    USER_OBJECT_ ans = S_gtk_item_factory_create_items_ac(s_object, s_entries,
							  s_callback_data,
							  s_callback_type);
    UNPROTECT(1);
    return ans;
}
/* reason: array must be pre-allocated */
USER_OBJECT_
 S_gtk_curve_get_vector ( USER_OBJECT_ s_object, USER_OBJECT_ s_veclen )
{
         GtkCurve* object = GTK_CURVE(getPtrValue(s_object)) ;
         int veclen = INTEGER_DATA(s_veclen)[0] ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         gfloat* vector = g_malloc(sizeof(gfloat)*veclen) ;
          gtk_curve_get_vector ( object, veclen, vector );

	  _result = retByVal(_result, "vector", PROTECT(asRNumericArrayWithSize ( vector, veclen )), NULL);
        g_free(vector);

	UNPROTECT(1);
        return(_result);
}

/* reason: Code generator gets confused about array size variable (also need to init GValues) */
USER_OBJECT_
 S_gtk_list_store_insert_with_valuesv ( USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_columns, USER_OBJECT_ s_values )
{
         GtkListStore* object = GTK_LIST_STORE(getPtrValue(s_object)) ;
         gint position = INTEGER_DATA(s_position)[0] ;
         gint* columns = INTEGER_DATA(s_columns) ;
		 gint n_values = GET_LENGTH(s_values), i;
		 
         GValue* values = (GValue*)g_new0(GValue, n_values);
		 for (i = 0; i < n_values; i++) {
			 g_value_init(&values[i], gtk_tree_model_get_column_type(GTK_TREE_MODEL(object), columns[i]));
			 R_setGValueFromSValue(&values[i], VECTOR_ELT(s_values, i));
		 }
			 
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         GtkTreeIter iter;
          gtk_list_store_insert_with_valuesv ( object, &iter, position, columns, values, n_values );

	  _result = retByVal(_result, "iter", PROTECT(toRPointerWithFinalizer ( gtk_tree_iter_copy(&iter), "GtkTreeIter", (RPointerFinalizer)gtk_tree_iter_free )), NULL);
	  UNPROTECT(1);

		for (i = 0; i < n_values; i++)
			g_value_unset(&values[i]);
		g_free(values);
		
        return(_result);
}
#if GTK_CHECK_VERSION(2,10,0)
USER_OBJECT_
 S_gtk_tree_store_insert_with_valuesv ( USER_OBJECT_ s_object, USER_OBJECT_ s_parent, USER_OBJECT_ s_position, USER_OBJECT_ s_columns, USER_OBJECT_ s_values )
{
 GtkTreeStore* object = GTK_TREE_STORE(getPtrValue(s_object)) ;
 GtkTreeIter *parent = (GtkTreeIter *)getPtrValue(s_parent);
 gint position = INTEGER_DATA(s_position)[0] ;
 gint* columns = INTEGER_DATA(s_columns) ;
 gint n_values = GET_LENGTH(s_values), i;
		 
 GValue* values = (GValue*)g_new0(GValue, n_values);
 for (i = 0; i < n_values; i++) {
   g_value_init(&values[i], gtk_tree_model_get_column_type(GTK_TREE_MODEL(object), columns[i]));
   R_setGValueFromSValue(&values[i], VECTOR_ELT(s_values, i));
 }
			 
 USER_OBJECT_ _result = NULL_USER_OBJECT;

 GtkTreeIter iter;
 gtk_tree_store_insert_with_valuesv ( object, &iter, parent, position, columns, values, n_values );

 _result = retByVal(_result, "iter", PROTECT(toRPointerWithFinalizer ( gtk_tree_iter_copy(&iter), "GtkTreeIter", (RPointerFinalizer)gtk_tree_iter_free )), NULL);
 UNPROTECT(1);
 
 for (i = 0; i < n_values; i++)
    g_value_unset(&values[i]);
 g_free(values);
		
 return(_result);
}
#endif

/* reason: need to set mask on the fly - also, handle object pool */
USER_OBJECT_
 S_gtk_gc_get ( USER_OBJECT_ s_depth, USER_OBJECT_ s_colormap, USER_OBJECT_ s_values )
{
     gint depth = (gint)INTEGER_DATA(s_depth)[0] ;
     GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap)) ;
     GdkGCValues* values;
     GdkGCValuesMask values_mask;
     GdkGC* ans ;
    USER_OBJECT_ _result = NULL_USER_OBJECT;

    values = asCGdkGCValuesWithMask(s_values, &values_mask) ;
     ans =  gtk_gc_get ( depth, colormap, values, values_mask );
    _result = toRPointerWithFinalizer ( ans, "GdkGC", (RPointerFinalizer)gtk_gc_release );

    return(_result);
}

/* reason: var args function, but no changes necessary */
USER_OBJECT_
S_gtk_message_dialog_new(USER_OBJECT_ s_parent, USER_OBJECT_ s_flags, USER_OBJECT_ s_type, USER_OBJECT_ s_buttons, USER_OBJECT_ s_message_format)
{
        GtkWindow* parent = GET_LENGTH(s_parent) == 0 ? NULL : GTK_WINDOW(getPtrValue(s_parent));
        GtkDialogFlags flags = (GtkDialogFlags)asCFlag(s_flags, GTK_TYPE_DIALOG_FLAGS);
        GtkMessageType type = (GtkMessageType)asCEnum(s_type, GTK_TYPE_MESSAGE_TYPE);
        GtkButtonsType buttons = (GtkButtonsType)asCEnum(s_buttons, GTK_TYPE_BUTTONS_TYPE);
        const gchar* message_format = (const gchar*)asCString(s_message_format);

        GtkWidget* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        if (!message_format)
          message_format = "";
        ans = gtk_message_dialog_new(parent, flags, type, buttons, "%s",
                                     message_format);

        _result = toRPointerWithSink(ans, "GtkWidget");

        return(_result);
}
/* reason: same as above */
USER_OBJECT_
S_gtk_message_dialog_new_with_markup(USER_OBJECT_ s_parent, USER_OBJECT_ s_flags, USER_OBJECT_ s_type, USER_OBJECT_ s_buttons, USER_OBJECT_ s_message_format)
{
        GtkWindow* parent = GTK_WINDOW(getPtrValue(s_parent));
        GtkDialogFlags flags = (GtkDialogFlags)asCFlag(s_flags, GTK_TYPE_DIALOG_FLAGS);
        GtkMessageType type = (GtkMessageType)asCEnum(s_type, GTK_TYPE_MESSAGE_TYPE);
        GtkButtonsType buttons = (GtkButtonsType)asCEnum(s_buttons, GTK_TYPE_BUTTONS_TYPE);
        const gchar* message_format = (const gchar*)asCString(s_message_format);

        GtkWidget* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        if (!message_format)
          message_format = "";
        ans = gtk_message_dialog_new_with_markup(parent, flags, type, buttons,
                                                 "%s", message_format);

        _result = toRPointerWithSink(ans, "GtkWidget");

        return(_result);
}
/* reason: same as above */
USER_OBJECT_
S_gtk_message_dialog_format_secondary_text(USER_OBJECT_ s_object, USER_OBJECT_ s_message_format)
{
        GtkMessageDialog* object = GTK_MESSAGE_DIALOG(getPtrValue(s_object));
        const gchar* message_format = (const gchar*)asCString(s_message_format);

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        if (!message_format)
          message_format = "";
        gtk_message_dialog_format_secondary_text(object, "%s", message_format);


        return(_result);
}
/* reason: same as above */
USER_OBJECT_
S_gtk_message_dialog_format_secondary_markup(USER_OBJECT_ s_object, USER_OBJECT_ s_message_format)
{
        GtkMessageDialog* object = GTK_MESSAGE_DIALOG(getPtrValue(s_object));
        const gchar* message_format = (const gchar*)asCString(s_message_format);

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        if (!message_format)
          message_format = "";
        gtk_message_dialog_format_secondary_markup(object, "%s",
                                                   message_format);


        return(_result);
}

/* reason: var args, take lists of labels and responses from R */
USER_OBJECT_
S_gtk_dialog_add_buttons(USER_OBJECT_ s_object, USER_OBJECT_ s_labels,
                         USER_OBJECT_ s_responses)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  gint i;
  
  for (i = 0; i < GET_LENGTH(s_labels); i++)
    S_gtk_dialog_add_button(s_object, STRING_ELT(s_labels, i),
                            VECTOR_ELT(s_responses, i));
  
  return(_result);
}

/* reason: var args, take lists of labels and responses describing the buttons */
USER_OBJECT_
S_gtk_file_chooser_dialog_new_with_backend(USER_OBJECT_ s_title, USER_OBJECT_ s_parent, USER_OBJECT_ s_action, USER_OBJECT_ s_backend, USER_OBJECT_ s_labels, USER_OBJECT_ s_responses)
{
  const gchar* title = (const gchar*)asCString(s_title);
  GtkWindow* parent = s_parent == NULL_USER_OBJECT ? NULL : GTK_WINDOW(getPtrValue(s_parent));
  GtkFileChooserAction action = (GtkFileChooserAction)asCEnum(s_action, GTK_TYPE_FILE_CHOOSER_ACTION);
  const gchar* backend = (const gchar*)asCString(s_backend);

  GtkWidget* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = g_object_new(GTK_TYPE_FILE_CHOOSER_DIALOG, "title", title, "action", action, 
    "file-system-backend", backend, NULL);
  if (parent)
    gtk_window_set_transient_for(GTK_WINDOW(ans), parent);

  _result = PROTECT(toRPointerWithSink(ans, "GtkWidget"));

  S_gtk_dialog_add_buttons(_result, s_labels, s_responses);
  
  UNPROTECT(1);

  return(_result);
}
#if GTK_CHECK_VERSION(2,10,0)
USER_OBJECT_
S_gtk_recent_chooser_dialog_new_for_manager(USER_OBJECT_ s_title, USER_OBJECT_ s_parent, USER_OBJECT_ s_manager, USER_OBJECT_ s_labels, USER_OBJECT_ s_responses)
{
  const gchar* title = (const gchar*)asCString(s_title);
  GtkWindow* parent = s_parent == NULL_USER_OBJECT ? NULL : GTK_WINDOW(getPtrValue(s_parent));
  GtkRecentManager *manager = s_manager == NULL_USER_OBJECT ? NULL : GTK_RECENT_MANAGER(getPtrValue(s_manager));

  GtkWidget* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = gtk_recent_chooser_dialog_new_for_manager(title, parent, manager, NULL,
                                                  NULL);

  _result = PROTECT(toRPointerWithSink(ans, "GtkWidget"));

  S_gtk_dialog_add_buttons(_result, s_labels, s_responses);
  
  UNPROTECT(1);

  return(_result);
}
#endif
/* reason: var args, receive two vectors from R */
USER_OBJECT_
S_gtk_file_chooser_dialog_new(USER_OBJECT_ s_title, USER_OBJECT_ s_parent, USER_OBJECT_ s_action, USER_OBJECT_ s_labels, USER_OBJECT_ s_responses)
{
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        _result = S_gtk_file_chooser_dialog_new_with_backend(s_title, s_parent, s_action, NULL, s_labels, s_responses);

        return(_result);
}

USER_OBJECT_
S_gtk_show_about_dialog(USER_OBJECT_ s_parent, USER_OBJECT_ s_props)
{
    GtkWindow* parent = GET_LENGTH(s_parent) == 0 ? NULL : GTK_WINDOW(getPtrValue(s_parent));
    static GtkWidget *global_about_dialog = NULL;
    GtkWidget *dialog = NULL;
    USER_OBJECT_ s_dialog;

    if (parent)
        dialog = g_object_get_data (G_OBJECT (parent), "gtk-about-dialog");
    else
        dialog = global_about_dialog;

  if (!dialog)
    {
        dialog = gtk_about_dialog_new ();

        g_object_ref (dialog);
        gtk_object_sink (GTK_OBJECT (dialog));

        g_signal_connect (dialog, "delete_event", G_CALLBACK (gtk_widget_hide_on_delete), NULL);

        /* Close dialog on user response */
        g_signal_connect (dialog, "response", G_CALLBACK (gtk_widget_hide), NULL);
        
        PROTECT(s_dialog = toRPointer(dialog, "GtkAboutDialog"));
        R_setGObjectProps (s_dialog, s_props);
        UNPROTECT(1);

      if (parent)
        {
          gtk_window_set_transient_for (GTK_WINDOW (dialog), parent);
          gtk_window_set_destroy_with_parent (GTK_WINDOW (dialog), TRUE);
          g_object_set_data_full (G_OBJECT (parent), "gtk-about-dialog",
                                  dialog, g_object_unref);
        }
      else
        global_about_dialog = dialog;

    }

  gtk_window_present (GTK_WINDOW (dialog));

  return(NULL_USER_OBJECT);

}

/* reason: var-args convenience function, reimplement */

USER_OBJECT_
S_gtk_text_buffer_create_tag(USER_OBJECT_ s_object, USER_OBJECT_ s_tag_name, USER_OBJECT_ s_props)
{
        GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
        const gchar* tag_name = (const gchar*)asCString(s_tag_name);
		
        GtkTextTag* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

		ans = gtk_text_tag_new(tag_name);
		gtk_text_tag_table_add(gtk_text_buffer_get_tag_table(object), ans);
		
		PROTECT(_result = toRPointerWithFinalizer(ans, "GtkTextTag", g_object_unref));
        R_setGObjectProps (_result, s_props);
        UNPROTECT(1);
		
        return(_result);
}

/* reason: var-args, reimplemented using a list from R */

USER_OBJECT_
S_gtk_text_buffer_insert_with_tags_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_text, USER_OBJECT_ s_tag_names)
{
        GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
        GtkTextIter* iter = (GtkTextIter*)getPtrValue(s_iter);
        const gchar* text = (const gchar*)asCString(s_text);
        gint len = -1;
		
		gint start_offset, i;
		GtkTextIter start;
		
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        start_offset = gtk_text_iter_get_offset(iter);

		gtk_text_buffer_insert(object, iter, text, len);

		gtk_text_buffer_get_iter_at_offset(object, &start, start_offset);

		for (i = 0; i < GET_LENGTH(s_tag_names); i++) {
			gtk_text_buffer_apply_tag_by_name(object, (const gchar*)asCString(STRING_ELT(s_tag_names, i)), &start, iter);
		}
		
		return(_result);
}

/* reason: var-args, reimplemented using a list from R */
USER_OBJECT_
S_gtk_text_buffer_insert_with_tags(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_text, USER_OBJECT_ s_len, USER_OBJECT_ s_tags)
{
        GtkTextBuffer* object = GTK_TEXT_BUFFER(getPtrValue(s_object));
        GtkTextIter* iter = (GtkTextIter*)getPtrValue(s_iter);
        const gchar* text = (const gchar*)asCString(s_text);
        gint len = (gint)asCInteger(s_len);
        
		gint start_offset, i;
		GtkTextIter start;

        USER_OBJECT_ _result = NULL_USER_OBJECT;

		start_offset = gtk_text_iter_get_offset(iter);

		gtk_text_buffer_insert(object, iter, text, len);

		gtk_text_buffer_get_iter_at_offset(object, &start, start_offset);
		
        for (i = 0; i < Rf_length(s_tags); i++) {
			gtk_text_buffer_apply_tag(object, GTK_TEXT_TAG(getPtrValue(VECTOR_ELT(s_tags, i))), &start, iter);
		}
		
		return(_result);
}


/* supporting function for adding buttons to a dialog */
USER_OBJECT_
S_gtk_dialog_add_buttons_valist(GtkDialog *dialog, const gchar *first_button_text, va_list args)
{
  const gchar* text;
  gint response_id;

  g_return_val_if_fail(GTK_IS_DIALOG (dialog), NULL_USER_OBJECT);

  if (first_button_text == NULL)
    return NULL_USER_OBJECT;

  text = first_button_text;
  response_id = asCInteger(va_arg(args, USER_OBJECT_));

  while (text != NULL)
    {
      gtk_dialog_add_button(dialog, text, response_id);
      text = asCString(va_arg(args, USER_OBJECT_));
      if (text == NULL)
        break;
      response_id = asCInteger(va_arg(args, USER_OBJECT_));
    }

	return(NULL_USER_OBJECT);
}

/* reason: var args, must reimplement */
USER_OBJECT_
S_gtk_dialog_new_with_buttons(USER_OBJECT_ s_title, USER_OBJECT_ s_parent, USER_OBJECT_ s_flags, USER_OBJECT_ s_labels, USER_OBJECT_ s_responses)
{
        const gchar* title = (const gchar*)asCString(s_title);
        GtkWindow* parent = GET_LENGTH(s_parent) == 0 ? NULL : GTK_WINDOW(getPtrValue(s_parent));
        GtkDialogFlags flags = (GtkDialogFlags)asCFlag(s_flags, GTK_TYPE_DIALOG_FLAGS);
        
        GtkDialog* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = GTK_DIALOG(gtk_dialog_new());
		
		gtk_window_set_title(GTK_WINDOW(ans), title);
		if (parent)
			gtk_window_set_transient_for(GTK_WINDOW(ans), parent);
		gtk_window_set_modal(GTK_WINDOW(ans), flags & GTK_DIALOG_MODAL);
		gtk_window_set_destroy_with_parent(GTK_WINDOW(ans), flags & GTK_DIALOG_DESTROY_WITH_PARENT);
		gtk_dialog_set_has_separator(ans, !(flags & GTK_DIALOG_NO_SEPARATOR));
		
        _result = PROTECT(toRPointerWithSink(ans, "GtkWidget"));
		
		S_gtk_dialog_add_buttons(_result, s_labels, s_responses);

		UNPROTECT(1);
		
        return(_result);
}

/* reason: var args, need to reimplement */
/* doesn't work right now - needs to much internal GTK stuff */
/*USER_OBJECT_
S_gtk_dialog_set_alternative_button_order(USER_OBJECT_ s_object, USER_OBJECT_ s_first_response_id, ...)
{
        GtkDialog* object = GTK_DIALOG(getPtrValue(s_object));
        gint first_response_id = (gint)asCInteger(s_first_response_id);
        GdkScreen *screen;
        va_list args;

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        screen = gtk_widget_get_screen(GTK_WIDGET(object));
        if (!gtk_alternative_dialog_button_order(screen))
            return(_result);

        va_start(args, s_first_response_id);

        GtkWidget *child;
        gint response_id = first_response_id;
        gint position = 0;

        while (response_id != -1) {
            // reorder child with response_id to position
            // dialog_find_button is internal to GTK
            child = dialog_find_button(object, response_id);
            gtk_box_reorder_child(GTK_BOX(object->action_area), child, position);
            response_id = asCInteger(va_arg(args, USER_OBJECT_));
            position++;
        }

        va_end(args);

        return(_result);
}*/

/* reason: need to coerce GValue to type of column */
USER_OBJECT_
S_gtk_list_store_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_column, USER_OBJECT_ s_value)
{
	GtkListStore* object = GTK_LIST_STORE(getPtrValue(s_object));
	GtkTreeIter* iter = (GtkTreeIter*)getPtrValue(s_iter);
	gint column = (gint)asCInteger(s_column);
	GValue value = { 0, };
	
	USER_OBJECT_ _result = NULL_USER_OBJECT;
        
	g_value_init(&value, gtk_tree_model_get_column_type(GTK_TREE_MODEL(object), column));
	R_setGValueFromSValue(&value, s_value);
	gtk_list_store_set_value(object, iter, column, &value);
	CLEANUP(g_value_unset, &value);
	return(_result);
}

/* reason: more varargs */

USER_OBJECT_
S_gtk_list_store_set(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_cols, USER_OBJECT_ s_values)
{
		gint i;
        USER_OBJECT_ _result = NULL_USER_OBJECT;
        for (i = 0; i < GET_LENGTH(s_cols); i++)
            S_gtk_list_store_set_value(s_object, s_iter, asRInteger(INTEGER_DATA(s_cols)[i]), 
				VECTOR_ELT(s_values, i));

        return(_result);
}

/* reason: var args, need to build a list of converted GValues */
USER_OBJECT_
S_gtk_tree_model_get(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_cols)
{
        gint n = GET_LENGTH(s_cols), i;

        USER_OBJECT_ s_values;

        PROTECT(s_values = NEW_LIST(n));
        for(i = 0; i < n; i++)
            SET_VECTOR_ELT(s_values, i,
                VECTOR_ELT(S_gtk_tree_model_get_value(s_object, s_iter, 
				 	asRInteger(INTEGER_DATA(s_cols)[i])), 1));

        UNPROTECT(1);

        return(s_values);
}

/* reason: var-args, reimplemented */
USER_OBJECT_
S_gtk_cell_layout_set_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_cell, USER_OBJECT_ s_attributes)
{
        GtkCellLayout* object = GTK_CELL_LAYOUT(getPtrValue(s_object));
        GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
	USER_OBJECT_ names = PROTECT(GET_NAMES(s_attributes));
		gint i;
		
        USER_OBJECT_ _result = NULL_USER_OBJECT;

		for (i = 0; i < GET_LENGTH(s_attributes); i++)
			gtk_cell_layout_add_attribute(object, cell, asCString(STRING_ELT(names, i)), 
				asCInteger(VECTOR_ELT(s_attributes, i)));

	UNPROTECT(1);
        return(_result);
}

/* reason: var-args */
USER_OBJECT_
S_gtk_container_child_set(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_props)
{
        GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
        GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
        USER_OBJECT_ names = PROTECT(GET_NAMES(s_props));
		gint i;

        USER_OBJECT_ _result = NULL_USER_OBJECT;

		for (i = 0; i < GET_LENGTH(s_props); i++)
			gtk_container_child_set_property(object, child, asCString(STRING_ELT(names, i)), 
				asCGValue(VECTOR_ELT(s_props, i)));

        UNPROTECT(1);
        return(_result);
}

/* reason: var-args */
USER_OBJECT_
S_gtk_container_add_with_properties(USER_OBJECT_ s_object, USER_OBJECT_ s_widget, USER_OBJECT_ s_properties)
{
        GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
        GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));
		
        USER_OBJECT_ _result = NULL_USER_OBJECT;

		gtk_container_add(object, widget);
		S_gtk_container_child_set(s_object, s_widget, s_properties);
		
        return(_result);
}

/* reason: more var-args */
USER_OBJECT_
S_gtk_container_child_get(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_names)
{
		gint i;

        USER_OBJECT_ _result;
		PROTECT(_result = NEW_LIST(GET_LENGTH(s_names)));
		
		for (i = 0; i < GET_LENGTH(s_names); i++)
			SET_VECTOR_ELT(_result, i, VECTOR_ELT(
				S_gtk_container_child_get_property(s_object, s_child, STRING_ELT(s_names, i)), 1));

	UNPROTECT(1);
        return(_result);
}


/* reason: var-args, reimplemented */

USER_OBJECT_
S_gtk_tree_view_insert_column_with_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_position, USER_OBJECT_ s_title, USER_OBJECT_ s_cell, USER_OBJECT_ s_attributes)
{
        GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
        gint position = (gint)asCInteger(s_position), i;
        const gchar* title = (const gchar*)asCString(s_title);
        GtkCellRenderer* cell = GTK_CELL_RENDERER(getPtrValue(s_cell));
		GtkTreeViewColumn *column;
		USER_OBJECT_ s_names;
		
        gint ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;
		
        column = gtk_tree_view_column_new();
		gtk_tree_view_column_set_title(column, title);
		gtk_tree_view_column_pack_start(column, cell, TRUE);

		s_names = PROTECT(GET_NAMES(s_attributes));
		for (i = 0; i < GET_LENGTH(s_attributes); i++) {
			gtk_tree_view_column_add_attribute(column, cell, asCString(STRING_ELT(s_names, i)), 
				asCInteger(VECTOR_ELT(s_attributes, i)));
		}
		ans = gtk_tree_view_insert_column(object, column, position);
		
        _result = asRInteger(ans);

	UNPROTECT(1);
        return(_result);
}

/* reason: var-args, receive vector of indices from R */
USER_OBJECT_
S_gtk_tree_path_new_from_indices(USER_OBJECT_ s_indices)
{
        gint i;
		GtkTreePath* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gtk_tree_path_new();
		for (i = 0; i < GET_LENGTH(s_indices); i++)
			gtk_tree_path_append_index(ans, INTEGER_DATA(s_indices)[i]);

        _result = toRPointerWithFinalizer(ans, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free);

        return(_result);
}


/* reason: property constructor system doesn't treat text asC mnemonic */
USER_OBJECT_
S_gtk_label_new_with_mnemonic(USER_OBJECT_ s_str)
{
    const char* str = (const char*)asCString(s_str);

    GtkWidget* ans;
    USER_OBJECT_ _result = NULL_USER_OBJECT;

    ans = gtk_label_new_with_mnemonic(str);

    _result = toRPointerWithSink(ans, "GtkWidget");

    return(_result);
}

/* reason: 1) should not free this array 2) the length of array is the depth of the path */
USER_OBJECT_
S_gtk_tree_path_get_indices(USER_OBJECT_ s_object)
{
	GtkTreePath* object = (GtkTreePath*)getPtrValue(s_object);

	gint* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_tree_path_get_indices(object);

	_result = asRIntegerArrayWithSize(ans, gtk_tree_path_get_depth(object));

	return(_result);
}

/* reason: discard text length parameter and handle in-out position
	it's probably too much trouble to add automatic in-out support, especially
	because it only affects primitive types
	- why couldn't they just return that by value? C-level convenience.. */
USER_OBJECT_
S_gtk_editable_insert_text(USER_OBJECT_ s_object, USER_OBJECT_ s_new_text, USER_OBJECT_ s_position)
{
        GtkEditable* object = GTK_EDITABLE(getPtrValue(s_object));
        const gchar* new_text = (const gchar*)asCString(s_new_text);
        gint* position = (gint*)asCArray(s_position, gint, asCInteger);
		gint new_text_length = strlen(new_text);
		
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        gtk_editable_insert_text(object, new_text, new_text_length, position);

	_result = retByVal(_result, "position", PROTECT(asRInteger(*position)), NULL);
	UNPROTECT(1);
        return(_result);
}

/* reason: need to include max_seq_len asC a parameter (left off by array length detection) */
USER_OBJECT_
S_gtk_im_context_simple_add_table(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_max_seq_len, USER_OBJECT_ s_n_seqs)
{
        GtkIMContextSimple* object = GTK_IM_CONTEXT_SIMPLE(getPtrValue(s_object));
        guint16* data = (guint16*)asCArray(s_data, guint16, asCInteger);
        gint max_seq_len = (gint)asCInteger(s_max_seq_len);
        gint n_seqs = (gint)asCInteger(s_n_seqs);

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        gtk_im_context_simple_add_table(object, data, max_seq_len, n_seqs);


        return(_result);
}

/* reason: need to hide geometry hints from user */
USER_OBJECT_
S_gtk_window_set_geometry_hints(USER_OBJECT_ s_object, USER_OBJECT_ s_geometry_widget, USER_OBJECT_ s_geometry)
{
        GtkWindow* object = GTK_WINDOW(getPtrValue(s_object));
        GtkWidget* geometry_widget = GTK_WIDGET(getPtrValue(s_geometry_widget));
        GdkGeometry* geometry;
        GdkWindowHints geom_mask;

        USER_OBJECT_ _result = NULL_USER_OBJECT;

		geometry = asCGdkGeometry(s_geometry, &geom_mask);
		
        gtk_window_set_geometry_hints(object, geometry_widget, geometry, geom_mask);


        return(_result);
}

/* reason: the following functions require special handling for returned G(S)Lists 
	- mostly just need to avoid finalization */
USER_OBJECT_
S_gtk_ui_manager_get_action_groups(USER_OBJECT_ s_object)
{
        GtkUIManager* object = GTK_UI_MANAGER(getPtrValue(s_object));

        GList* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gtk_ui_manager_get_action_groups(object);

        _result = asRGListWithRef(ans, "GtkActionGroup");
		/* Do NOT free the GList */
        return(_result);
}
USER_OBJECT_
S_gtk_menu_get_for_attach_widget(USER_OBJECT_ s_object)
{
        GtkWidget* object = GTK_WIDGET(getPtrValue(s_object));

        GList* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gtk_menu_get_for_attach_widget(object);

        _result = asRGList(ans, "GtkMenu");

        return(_result);
}

/* reason: normally string arrays are NULL-terminated, but this one isn't */
USER_OBJECT_
S_gtk_icon_theme_set_search_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
        GtkIconTheme* object = GTK_ICON_THEME(getPtrValue(s_object));
        const gchar** path = (const gchar**)asCStringArray(s_path);
        gint n_elements = GET_LENGTH(s_path);

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        gtk_icon_theme_set_search_path(object, path, n_elements);

        return(_result);
}

/* reason: need to initialize GValue with correct type */
USER_OBJECT_
S_gtk_tree_store_set_value(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_column, USER_OBJECT_ s_value)
{
	GtkTreeStore* object = GTK_TREE_STORE(getPtrValue(s_object));
	GtkTreeIter* iter = (GtkTreeIter*)getPtrValue(s_iter);
	gint column = (gint)asCInteger(s_column);
	GValue value = { 0, };

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	g_value_init(&value, gtk_tree_model_get_column_type(GTK_TREE_MODEL(object), column));
	R_setGValueFromSValue(&value, s_value);
	gtk_tree_store_set_value(object, iter, column, &value);

	CLEANUP(g_value_unset, &value);

	return(_result);
}

/* reason: varargs, this time for tree store */
USER_OBJECT_
S_gtk_tree_store_set(USER_OBJECT_ s_object, USER_OBJECT_ s_iter, USER_OBJECT_ s_cols, USER_OBJECT_ s_values)
{
		gint i;
        USER_OBJECT_ _result = NULL_USER_OBJECT;
        for (i = 0; i < GET_LENGTH(s_cols); i++)
            S_gtk_tree_store_set_value(s_object, s_iter, asRInteger(INTEGER_DATA(s_cols)[i]), 
				VECTOR_ELT(s_values, i));

        return(_result);
}

USER_OBJECT_
S_gtk_container_child_set_property(USER_OBJECT_ s_object, USER_OBJECT_ s_child, USER_OBJECT_ s_property_name, USER_OBJECT_ s_value)
{
	GtkContainer* object = GTK_CONTAINER(getPtrValue(s_object));
	GtkWidget* child = GTK_WIDGET(getPtrValue(s_child));
	const gchar* property_name = (const gchar*)asCString(s_property_name);
	GValue value = { 0, };

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	GParamSpec *spec = gtk_container_class_find_child_property(G_OBJECT_GET_CLASS(object), property_name);
	g_value_init(&value, G_PARAM_SPEC_VALUE_TYPE(spec));
	R_setGValueFromSValue(&value, s_value);
	
	gtk_container_child_set_property(object, child, property_name, &value);

	CLEANUP(g_value_unset, &value);

	return(_result);
}

/* reason: need to leave off the callback because no user data */
USER_OBJECT_
S_gtk_menu_attach_to_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_attach_widget)
{
        GtkMenu* object = GTK_MENU(getPtrValue(s_object));
        GtkWidget* attach_widget = GTK_WIDGET(getPtrValue(s_attach_widget));

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        gtk_menu_attach_to_widget(object, attach_widget, NULL);

        return(_result);
}

/* reason: all of these need group passed by reference - not a newly converted list */
USER_OBJECT_
S_gtk_radio_action_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group)
{
	GtkRadioAction* object = GTK_RADIO_ACTION(getPtrValue(s_object));
	GSList* group = GET_LENGTH(s_group) == 0 ? NULL : asCGSList(s_group);
  GSList* real_group = NULL;
  
	USER_OBJECT_ _result = NULL_USER_OBJECT;
  
  if (group)
    real_group = gtk_radio_action_get_group(GTK_RADIO_ACTION(group->data));

	gtk_radio_action_set_group(object, real_group);

	CLEANUP(g_slist_free, (GSList*)group);

	return(_result);
}

USER_OBJECT_
S_gtk_radio_button_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group)
{
	GtkRadioButton* object = GTK_RADIO_BUTTON(getPtrValue(s_object));
	GSList* group = GET_LENGTH(s_group) == 0 ? NULL : asCGSList(s_group);
  GSList* real_group = NULL;
  
	USER_OBJECT_ _result = NULL_USER_OBJECT;
  
  if (group)
    real_group = gtk_radio_button_get_group(GTK_RADIO_BUTTON(group->data));

	gtk_radio_button_set_group(object, real_group);

	CLEANUP(g_slist_free, (GSList*)group);

	return(_result);
}

USER_OBJECT_
S_gtk_radio_menu_item_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group)
{
	GtkRadioMenuItem* object = GTK_RADIO_MENU_ITEM(getPtrValue(s_object));
	GSList* group = GET_LENGTH(s_group) == 0 ? NULL : asCGSList(s_group);
  GSList* real_group = NULL;
  
	USER_OBJECT_ _result = NULL_USER_OBJECT;
  
  if (group)
    real_group = gtk_radio_menu_item_get_group(GTK_RADIO_MENU_ITEM(group->data));

	gtk_radio_menu_item_set_group(object, real_group);

	CLEANUP(g_slist_free, (GSList*)group);

	return(_result);
}

USER_OBJECT_
S_gtk_radio_tool_button_set_group(USER_OBJECT_ s_object, USER_OBJECT_ s_group)
{
	GtkRadioToolButton* object = GTK_RADIO_TOOL_BUTTON(getPtrValue(s_object));
	GSList* group = GET_LENGTH(s_group) == 0 ? NULL : asCGSList(s_group);
  GSList* real_group = NULL;
  
	USER_OBJECT_ _result = NULL_USER_OBJECT;
  
  if (group)
    real_group = gtk_radio_tool_button_get_group(GTK_RADIO_TOOL_BUTTON(group->data));

	gtk_radio_tool_button_set_group(object, real_group);

	CLEANUP(g_slist_free, (GSList*)group);

	return(_result);
}

/* reason: while GtkSignalFunc is a void function, the only place the bindings
	use it is with the gtk_toolbar_* functions. in that case, it takes a 
	widget and a user data pointer, just like GtkCallback.
*/
void
S_GtkSignalFunc(GtkWidget* s_child, gpointer s_data)
{
	S_GtkCallback(s_child, s_data);
}

/* need to return the length of the serialized data */

guint8*
S_GtkTextBufferSerializeFunc(GtkTextBuffer* s_register_buffer, GtkTextBuffer* s_content_buffer, GtkTextIter* s_start, GtkTextIter* s_end, gsize* s_length, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  PROTECT(e = allocVector(LANGSXP, 6));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithRef(s_register_buffer, "GtkTextBuffer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithRef(s_content_buffer, "GtkTextBuffer"));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(gtk_text_iter_copy(s_start), "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, toRPointerWithFinalizer(gtk_text_iter_copy(s_end), "GtkTextIter", (RPointerFinalizer) gtk_text_iter_free));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  *s_length = GET_LENGTH(s_ans);
  
  guint8 *ans = g_malloc_n(*s_length, sizeof(guint8));
  memcpy(ans, RAW(s_ans), *s_length);

  UNPROTECT(1);
  return ans;
}

/* need to return the x, y, and in_push params */
/*
gint
S_GtkMenuPositionFunc(GtkMenu* s_menu, gint* s_x, gint* s_y, gboolean* s_push_in, gpointer s_user_data)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;

  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;

  SETCAR(tmp, ((R_CallbackData *)s_user_data)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, toRPointerWithSink(s_menu, "GtkMenu"));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_user_data)->data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  *s_x = asCInteger(VECTOR_ELT(s_ans, 1));
  *s_y = asCInteger(VECTOR_ELT(s_ans, 2));
  *s_push_in = asCLogical(VECTOR_ELT(s_ans, 3));
  
  UNPROTECT(1);
  return(((gint)asCInteger(VECTOR_ELT(s_ans, 0))));
}
*/

/* GtkBuilder helpers */
#if GTK_CHECK_VERSION(2,12,0)
void
S_GtkBuilderConnectFuncDefault(GtkBuilder* builder, GObject* object, 
  const gchar* signal_name, const gchar* handler_name, 
  GObject* connect_object, guint flags, gpointer s_user_data)
{	
  USER_OBJECT_ s_func = PROTECT(Rf_findFun(install(handler_name), R_GlobalEnv));
  GClosure *closure;
  
	if (connect_object) /* FIXME: we can't use g_signal_connect_object */
		s_user_data = toRPointer(connect_object, "GObject");
	
  closure = R_createGClosure(s_func, s_user_data);
	((R_CallbackData *)closure->data)->userDataFirst = flags & G_CONNECT_SWAPPED;
  
  UNPROTECT(1);
  g_signal_connect_closure(object, signal_name, closure, flags & G_CONNECT_AFTER);
}

USER_OBJECT_
S_gtk_builder_connect_signals(USER_OBJECT_ s_object, USER_OBJECT_ s_user_data)
{
  GtkBuilder* object = GTK_BUILDER(getPtrValue(s_object));
  
  USER_OBJECT_ _result = NULL_USER_OBJECT;
  
  gtk_builder_connect_signals_full(object, 
    (GtkBuilderConnectFunc)S_GtkBuilderConnectFuncDefault, s_user_data);
  
  return(_result);
}
#endif


/* Tooltip contexts due to in/out parameters */
USER_OBJECT_
S_gtk_tree_view_get_tooltip_context(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_keyboard_tip)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkTreeView* object = GTK_TREE_VIEW(getPtrValue(s_object));
  gint x = asCInteger(s_x);
  gint y = asCInteger(s_y);
  gboolean keyboard_tip = ((gboolean)asCLogical(s_keyboard_tip));

  gboolean ans;
  GtkTreeModel* model = NULL;
  GtkTreePath* path = NULL;
  GtkTreeIter iter;

  ans = gtk_tree_view_get_tooltip_context(object, &x, &y, keyboard_tip, &model, &path, &iter);

  _result = asRLogical(ans);

  _result = retByVal(_result, "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "model", PROTECT(toRPointerWithRef(model, "GtkTreeModel")), "path", PROTECT(toRPointerWithFinalizer(path, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free)), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(5);
  ;
  ;
#else
  error("gtk_tree_view_get_tooltip_context exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}
USER_OBJECT_
S_gtk_icon_view_get_tooltip_context(USER_OBJECT_ s_object, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_keyboard_tip)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GTK_CHECK_VERSION(2, 12, 0)
  GtkIconView* object = GTK_ICON_VIEW(getPtrValue(s_object));
  gint x = asCInteger(s_x);
  gint y = asCInteger(s_y);
  gboolean keyboard_tip = ((gboolean)asCLogical(s_keyboard_tip));

  gboolean ans;
  GtkTreeModel* model = NULL;
  GtkTreePath* path = NULL;
  GtkTreeIter iter;

  ans = gtk_icon_view_get_tooltip_context(object, &x, &y, keyboard_tip, &model, &path, &iter);

  _result = asRLogical(ans);

  _result = retByVal(_result, "x", PROTECT(asRInteger(x)), "y", PROTECT(asRInteger(y)), "model", PROTECT(toRPointerWithRef(model, "GtkTreeModel")), "path", PROTECT(toRPointerWithFinalizer(path, "GtkTreePath", (RPointerFinalizer) gtk_tree_path_free)), "iter", PROTECT(toRPointerWithFinalizer(&iter ? gtk_tree_iter_copy(&iter) : NULL, "GtkTreeIter", (RPointerFinalizer) gtk_tree_iter_free)), NULL);
  UNPROTECT(5);
  ;
  ;
#else
  error("gtk_icon_view_get_tooltip_context exists only in Gtk >= 2.12.0");
#endif

  return(_result);
}

/* This provides a quick way to convert GtkTreePaths to indices.
   Such an operation is necessary when interpreting selections, for example.
*/
USER_OBJECT_
R_gtk_tree_paths_to_indices(USER_OBJECT_ paths) {
	gint i;
	USER_OBJECT_ indices = NEW_INTEGER(GET_LENGTH(paths));
	for (i = 0; i < GET_LENGTH(paths); i++)
	  INTEGER_DATA(indices)[i] = gtk_tree_path_get_indices(getPtrValue(VECTOR_ELT(paths, i)))[0];
	return(indices);
}
		
/* some functions for fast GtkTreeModel access */
USER_OBJECT_
S_gtk_list_store_load_paths(USER_OBJECT_ s_model, USER_OBJECT_ s_data, USER_OBJECT_ s_paths, USER_OBJECT_ s_cols, USER_OBJECT_ s_append)
{
	GtkListStore *model = GTK_LIST_STORE(getPtrValue(s_model));
	gboolean append = asCLogical(s_append);
	GtkTreeIter iter;
	GValue value = { 0, };
	USER_OBJECT_ col;
	
	int i, j;
	int ncols = GET_LENGTH(s_cols);
	int nrows = GET_LENGTH(s_paths);

	if (append)
		nrows = GET_LENGTH(s_data);
	
	for (i = 0; i < ncols; i++) {
		GType vtype = gtk_tree_model_get_column_type(GTK_TREE_MODEL(model), INTEGER_DATA(s_cols)[i]);
		col = VECTOR_ELT(s_data, i);
		/*Rprintf("col: %d\n", INTEGER_DATA(s_cols)[i]);*/
		for (j = 0; j < nrows; j++) {
			/*Rprintf("row: %d\n", j);*/
			if (append || !gtk_tree_model_get_iter(GTK_TREE_MODEL(model), &iter, 
					(GtkTreePath*)getPtrValue(VECTOR_ELT(s_paths, j))))
				gtk_list_store_append(model, &iter);
			g_value_init(&value, vtype);
			R_setGValueFromSValue(&value, VECTOR_ELT(col, j));
			gtk_list_store_set_value(model, &iter, INTEGER_DATA(s_cols)[i], &value);
			g_value_unset(&value);
		}
	}
	
	return(NULL_USER_OBJECT);
}
USER_OBJECT_
S_gtk_list_store_load(USER_OBJECT_ s_model, USER_OBJECT_ s_data, USER_OBJECT_ s_rows, USER_OBJECT_ s_cols, USER_OBJECT_ s_append)
{
	int i;
	int nrows = GET_LENGTH(s_rows);
	
	USER_OBJECT_ s_paths;
	
	PROTECT(s_paths = NEW_LIST(nrows));
	/*Rprintf("Loading %d paths\n", nrows);*/
	for (i = 0; i < nrows; i++)
		SET_VECTOR_ELT(s_paths, i, 
			toRPointerWithFinalizer(gtk_tree_path_new_from_indices(INTEGER_DATA(s_rows)[i], -1), 
				"GtkTreePath", (RPointerFinalizer)gtk_tree_path_free));
	
	S_gtk_list_store_load_paths(s_model, s_data, s_paths, s_cols, asRLogical(FALSE));
	
	UNPROTECT(1);
	
	return(NULL_USER_OBJECT);
}

/* Assumes there is a flat data frame with paths specifying structure */
USER_OBJECT_
S_gtk_tree_store_load_paths(USER_OBJECT_ s_model, USER_OBJECT_ s_data, USER_OBJECT_ s_paths, USER_OBJECT_ s_cols, USER_OBJECT_ s_append)
{
	GtkTreeStore *model = GTK_TREE_STORE(getPtrValue(s_model));
	gboolean append = asCLogical(s_append);
	GtkTreeIter iter;
	GValue value = { 0, };
	USER_OBJECT_ col;
	
	int i, j;
	int ncols = GET_LENGTH(s_cols);
	int nrows = GET_LENGTH(s_paths);

	if (append)
		nrows = GET_LENGTH(s_data);
	
	for (i = 0; i < ncols; i++) {
		GType vtype = gtk_tree_model_get_column_type(GTK_TREE_MODEL(model), INTEGER_DATA(s_cols)[i]);
		col = VECTOR_ELT(s_data, i);
		/*Rprintf("col: %d\n", INTEGER_DATA(s_cols)[i]);*/
		for (j = 0; j < nrows; j++) {
			GtkTreePath *path = (GtkTreePath*)getPtrValue(VECTOR_ELT(s_paths, j));
			if (!gtk_tree_model_get_iter(GTK_TREE_MODEL(model), &iter, path) || append) {
				GtkTreeIter parent;
				gtk_tree_path_up(path);
				gtk_tree_model_get_iter(GTK_TREE_MODEL(model), &parent, path);
				gtk_tree_store_append(model, &iter, &parent);
			}
			g_value_init(&value, vtype);
			R_setGValueFromSValue(&value, VECTOR_ELT(col, j));
			gtk_tree_store_set_value(model, &iter, INTEGER_DATA(s_cols)[i], &value);
			g_value_unset(&value);
		}
	}
	
	return(NULL_USER_OBJECT);
}

/* Rows specify the vector equivalents of tree paths */
USER_OBJECT_
S_gtk_tree_store_load(USER_OBJECT_ s_model, USER_OBJECT_ s_data, USER_OBJECT_ s_rows, USER_OBJECT_ s_cols, USER_OBJECT_ s_append)
{
	int i, j;
	int nrows = GET_LENGTH(s_rows);
	
	USER_OBJECT_ s_paths;
	
	PROTECT(s_paths = NEW_LIST(nrows));
	/*Rprintf("Loading %d paths\n", nrows);*/
	for (i = 0; i < nrows; i++) {
		GtkTreePath *path = gtk_tree_path_new();
		for (j = 0; j < GET_LENGTH(VECTOR_ELT(s_rows, i)); j++) 
			gtk_tree_path_append_index(path, INTEGER_DATA(VECTOR_ELT(s_rows, i))[j]);
		gtk_tree_path_append_index(path, i);
		SET_VECTOR_ELT(s_paths, i, 	toRPointerWithFinalizer(path, "GtkTreePath", 
			(RPointerFinalizer)gtk_tree_path_free));
	}
	
	S_gtk_list_store_load_paths(s_model, s_data, s_paths, s_cols, s_append);
	
	UNPROTECT(1);
	
	return(NULL_USER_OBJECT);
}

USER_OBJECT_
S_gtk_tree_model_unload_paths(USER_OBJECT_ s_model, USER_OBJECT_ s_paths, USER_OBJECT_ s_cols)
{
	GtkTreeModel *model = GTK_TREE_MODEL(getPtrValue(s_model));
	GtkTreeIter iter;
	GValue value = { 0, };
	
	USER_OBJECT_ list, s_indices, result;
	
	int i, j;
	int ncols = GET_LENGTH(s_cols);
	int nrows = GET_LENGTH(s_paths);
	
	PROTECT(list = NEW_LIST(ncols));
	for (i = 0; i < ncols; i++)
		SET_VECTOR_ELT(list, i, NEW_LIST(nrows));
	PROTECT(s_indices = NEW_LIST(nrows)); 
		
	for (i = 0; i < nrows; i++) {
		USER_OBJECT_ s_index;
		GtkTreePath *path = getPtrValue(VECTOR_ELT(s_paths, i));
		gtk_tree_model_get_iter(model, &iter, path);
		for (j = 0; j < ncols; j++) {
			gtk_tree_model_get_value(model, &iter, INTEGER_DATA(s_cols)[j], &value);
			SET_VECTOR_ELT(VECTOR_ELT(list, j), i, asRGValue(&value));
			g_value_unset(&value);
		}
		s_index = asRIntegerArrayWithSize(gtk_tree_path_get_indices(path), 
					gtk_tree_path_get_depth(path));
		SET_VECTOR_ELT(s_indices, i, s_index);
	}
	
	result = NEW_LIST(2);
	SET_VECTOR_ELT(result, 0, list);
	SET_VECTOR_ELT(result, 1, s_indices);
		
	UNPROTECT(2);
	
	return(result);
}

gboolean
get_tree_model_paths(GtkTreeModel *model, GtkTreePath *path, GtkTreeIter *iter, GList **paths)
{
	*paths = g_list_append(*paths, gtk_tree_path_copy(path));
	return(FALSE);
}

USER_OBJECT_
S_gtk_tree_model_unload(USER_OBJECT_ s_model, USER_OBJECT_ s_rows, USER_OBJECT_ s_cols)
{
	USER_OBJECT_ result;
	USER_OBJECT_ s_paths;
	gint i, j;
	gint nrows = GET_LENGTH(s_rows), npaths;
	
	if (!nrows) {
		GtkTreeModel *model = GTK_TREE_MODEL(getPtrValue(s_model));
		GList *paths = NULL;
		gtk_tree_model_foreach(model, (GtkTreeModelForeachFunc)get_tree_model_paths, &paths);
		npaths = g_list_length(paths);
		PROTECT(s_paths = NEW_LIST(npaths));
		for (i = 0; i < npaths; i++, paths = g_list_next(paths)) {
			SET_VECTOR_ELT(s_paths, i, 	toRPointerWithFinalizer((GtkTreePath *)paths->data, 
					"GtkTreePath", (RPointerFinalizer)gtk_tree_path_free));
		}
	} else {
		PROTECT(s_paths = NEW_LIST(nrows));
		for (i = 0; i < nrows; i++) {
			GtkTreePath *path = gtk_tree_path_new();
			for (j = 0; j < GET_LENGTH(VECTOR_ELT(s_rows, i)); j++) 
				gtk_tree_path_append_index(path, INTEGER_DATA(VECTOR_ELT(s_rows, i))[j]);
			SET_VECTOR_ELT(s_paths, i, toRPointerWithFinalizer(path, 
					"GtkTreePath", (RPointerFinalizer)gtk_tree_path_free));
		}
	}
	
	result = S_gtk_tree_model_unload_paths(s_model, s_paths, s_cols);
	
	if (nrows)
		result = VECTOR_ELT(result, 0);
	
	UNPROTECT(1);

	return(result);
}

/* functions for creating and accessing GtkTreeIters */
/* only to be used when implementing a custom GtkTreeModel */

/* create a new GtkTreeIter */
USER_OBJECT_
S_gtk_tree_iter(USER_OBJECT_ id, USER_OBJECT_ stamp)
{
  USER_OBJECT_ ans;
  GtkTreeIter iter;
  
  iter.stamp = asCInteger(stamp);
  iter.user_data = GINT_TO_POINTER(asCInteger(id));
  
  return(toRPointerWithFinalizer(gtk_tree_iter_copy(&iter), "GtkTreeIter",
    (RPointerFinalizer)gtk_tree_iter_free));
}

/* problem: the user data in the GtkTreeIter must be statically allocated */
/* there's no way to 'free' a GtkTreeIter, so we will leak memory if
   we PreserveObject() here. unfortunately, we crash otherwise. */
/* thus, we just pass an integer.. which can serve as an index into some
   structure in the R environment */
USER_OBJECT_
S_gtk_tree_iter_set_id(USER_OBJECT_ s_iter, USER_OBJECT_ s_data)
{
  GtkTreeIter *iter = getPtrValue(s_iter);
  gint index = asCInteger(s_data);
  iter->user_data = GINT_TO_POINTER(index);
  return NULL_USER_OBJECT;
}
USER_OBJECT_
S_gtk_tree_iter_get_id(USER_OBJECT_ s_iter)
{
  GtkTreeIter *iter = getPtrValue(s_iter);
  return asRInteger(GPOINTER_TO_INT(iter->user_data));
}

/* GtkTreeIter stamping */
/* not to be used unless one is implementing a GtkTreeModel */
USER_OBJECT_
S_gtk_tree_iter_set_stamp(USER_OBJECT_ s_iter, USER_OBJECT_ s_stamp)
{
  GtkTreeIter *iter = getPtrValue(s_iter);
  iter->stamp = asCInteger(s_stamp);
  return NULL_USER_OBJECT;
}
USER_OBJECT_
S_gtk_tree_iter_get_stamp(USER_OBJECT_ s_iter)
{
  GtkTreeIter *iter = getPtrValue(s_iter);
  return asRInteger(iter->stamp);
}

/* get compile-time GTK version */

USER_OBJECT_
boundGTKVersion(void) {
  USER_OBJECT_ version;
  version = NEW_INTEGER(3);
  INTEGER(version)[0] = GTK_MAJOR_VERSION;
  INTEGER(version)[1] = GTK_MINOR_VERSION;
  INTEGER(version)[2] = GTK_MICRO_VERSION;
  return(version);
}
