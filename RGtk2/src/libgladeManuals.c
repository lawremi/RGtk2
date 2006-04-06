#include "conversion.h"
#include "gobject.h"

/* reason: we need special handling for connecting R functions to signals from the xml */

/* this function connects a signal specified by 'signal_name' with the R 
   callback embedded in a GClosure asC 'user_data'. If the user data in
   the closure is NULL, then 'connect_object' is used asC the user data for the callback.
*/
void
S_GladeXMLConnectFuncDefault(const gchar *handler_name, GObject *object,
	const gchar *signal_name, const gchar *signal_data, GObject *connect_object,
    gboolean after, gpointer user_data)
{	
	R_CallbackData *cbdata = (R_CallbackData *)((GClosure*)user_data)->data;
	
	if (!cbdata->data)
		cbdata->data = toRPointer(connect_object, "GObject");
	
	g_signal_connect_closure(object, signal_name, user_data, after);
}

/* This one looks up 'hander_name' in the global R environment, embeds it in a 
   GClosure with user data specified by 'user_data' and then calls the above function.
*/
void
S_GladeXMLConnectFuncAuto(const gchar *handler_name, GObject *object,
	const gchar *signal_name, const gchar *signal_data, GObject *connect_object,
    gboolean after, gpointer user_data)
{
	/* look up function given handler_name */
	USER_OBJECT_ s_func = Rf_findFun(install(handler_name), R_GlobalEnv);
	S_GladeXMLConnectFuncDefault(handler_name, object, signal_name, signal_data, connect_object,
		after, R_createGClosure(s_func, user_data));
}

/* autoconnects using S_GladeXMLConnectFuncAuto */
USER_OBJECT_
S_glade_xml_signal_autoconnect(USER_OBJECT_ s_object)
{
		GladeXML* object = GLADE_XML(getPtrValue(s_object));
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        glade_xml_signal_autoconnect_full(object, (GladeXMLConnectFunc)S_GladeXMLConnectFuncAuto, NULL);

        return(_result);
}

USER_OBJECT_
S_glade_xml_signal_connect_data(USER_OBJECT_ s_object, USER_OBJECT_ s_handlername, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data)
{
        GladeXML* object = GLADE_XML(getPtrValue(s_object));
		const char* handlername = (const char*)asCString(s_handlername);
		
		USER_OBJECT_ _result = NULL_USER_OBJECT;

        glade_xml_signal_connect_full(object, handlername, (GladeXMLConnectFunc)S_GladeXMLConnectFuncDefault, 
			R_createGClosure(s_func, s_user_data));

        return(_result);
}
/* Manually wrap these since GtkSignalFunc is passed - we need to treat it as connectSignal() */
USER_OBJECT_
S_glade_xml_signal_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_handlername, USER_OBJECT_ s_func)
{
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        S_glade_xml_signal_connect_data(s_object, s_handlername, s_func, NULL_USER_OBJECT);

        return(_result);
}

