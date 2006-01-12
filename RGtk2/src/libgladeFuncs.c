#include "utils.h"
#include "conversion.h"
#include "gobject.h"
#include "libgladeFuncs.h"
#include "userfuncs.h"
#include "glib.h"


#include "RGtk2.h"

USER_OBJECT_
S_glade_require(USER_OBJECT_ s_library)
{
	const gchar* library = (const gchar*)asCString(s_library);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	glade_require(library);


	return(_result);
}
 

USER_OBJECT_
S_glade_provide(USER_OBJECT_ s_library)
{
	const gchar* library = (const gchar*)asCString(s_library);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	glade_provide(library);


	return(_result);
}
 

USER_OBJECT_
S_glade_xml_get_type()
{

	GType ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_xml_get_type();

	_result = asRGType(ans);

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_new(USER_OBJECT_ s_fname, USER_OBJECT_ s_root, USER_OBJECT_ s_domain)
{
	const char* fname = (const char*)asCString(s_fname);
	const char* root = GET_LENGTH(s_root) == 0 ? NULL : (const char*)asCString(s_root);
	const char* domain = GET_LENGTH(s_domain) == 0 ? NULL : (const char*)asCString(s_domain);

	GladeXML* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_xml_new(fname, root, domain);

	_result = toRPointerWithFinalizer(ans, "GladeXML", (RPointerFinalizer) g_object_unref);

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_new_from_buffer(USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_root, USER_OBJECT_ s_domain)
{
	const char* buffer = (const char*)asCString(s_buffer);
	int size = (int)asCInteger(s_size);
	const char* root = GET_LENGTH(s_root) == 0 ? NULL : (const char*)asCString(s_root);
	const char* domain = GET_LENGTH(s_domain) == 0 ? NULL : (const char*)asCString(s_domain);

	GladeXML* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_xml_new_from_buffer(buffer, size, root, domain);

	_result = toRPointerWithFinalizer(ans, "GladeXML", (RPointerFinalizer) g_object_unref);

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_signal_connect_full(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_name, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data)
{
	GladeXMLConnectFunc func = (GladeXMLConnectFunc)S_GladeXMLConnectFunc;
	GClosure* user_data = R_createGClosure(s_func, s_user_data);
	GladeXML* object = GLADE_XML(getPtrValue(s_object));
	const gchar* handler_name = (const gchar*)asCString(s_handler_name);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	glade_xml_signal_connect_full(object, handler_name, func, user_data);

	g_closure_sink(user_data);

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_signal_autoconnect_full(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data)
{
	GladeXMLConnectFunc func = (GladeXMLConnectFunc)S_GladeXMLConnectFunc;
	GClosure* user_data = R_createGClosure(s_func, s_user_data);
	GladeXML* object = GLADE_XML(getPtrValue(s_object));

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	glade_xml_signal_autoconnect_full(object, func, user_data);

	g_closure_sink(user_data);

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_get_widget(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
	GladeXML* object = GLADE_XML(getPtrValue(s_object));
	const char* name = (const char*)asCString(s_name);

	GtkWidget* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_xml_get_widget(object, name);

	_result = toRPointerWithSink(ans, "GtkWidget");

	return(_result);
}
 

USER_OBJECT_
S_glade_xml_get_widget_prefix(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
	GladeXML* object = GLADE_XML(getPtrValue(s_object));
	const char* name = (const char*)asCString(s_name);

	GList* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_xml_get_widget_prefix(object, name);

	_result = asRGListWithSink(ans, "GtkWidget");

	return(_result);
}
 

USER_OBJECT_
S_glade_get_widget_name(USER_OBJECT_ s_widget)
{
	GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));

	const char* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_get_widget_name(widget);

	_result = asRString(ans);

	return(_result);
}
 

USER_OBJECT_
S_glade_get_widget_tree(USER_OBJECT_ s_widget)
{
	GtkWidget* widget = GTK_WIDGET(getPtrValue(s_widget));

	GladeXML* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = glade_get_widget_tree(widget);

	_result = toRPointerWithRef(ans, "GladeXML");

	return(_result);
}
 

USER_OBJECT_
S_glade_set_custom_handler(USER_OBJECT_ s_handler, USER_OBJECT_ s_user_data)
{
	GladeXMLCustomWidgetHandler handler = (GladeXMLCustomWidgetHandler)S_GladeXMLCustomWidgetHandler;
	GClosure* user_data = R_createGClosure(s_handler, s_user_data);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	glade_set_custom_handler(handler, user_data);

	g_closure_sink(user_data);

	return(_result);
}
 

