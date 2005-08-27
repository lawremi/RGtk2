#include "utils.h"
#include "conversion.h"
#include "gobject.h"
#include "gtkmozembedFuncs.h"
#include "userfuncs.h"


#include "RGtk.h"

USER_OBJECT_
S_gtk_moz_embed_get_type()
{

	GType ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_type();

	_result = asRGType(ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_new()
{

	GtkWidget* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_new();

	_result = toRPointer(ans, "GtkWidget");

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_push_startup()
{

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_push_startup();


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_pop_startup()
{

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_pop_startup();


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_set_comp_path(USER_OBJECT_ s_aPath)
{
	char* aPath = (char*)asString(s_aPath);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_set_comp_path(aPath);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_set_profile_path(USER_OBJECT_ s_aDir, USER_OBJECT_ s_aName)
{
	char* aDir = (char*)asString(s_aDir);
	char* aName = (char*)asString(s_aName);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_set_profile_path(aDir, aName);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_load_url(USER_OBJECT_ s_object, USER_OBJECT_ s_url)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	const char* url = (const char*)asString(s_url);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_load_url(object, url);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_stop_load(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_stop_load(object);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_can_go_back(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	gboolean ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_can_go_back(object);

	_result = asRLogical(ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_can_go_forward(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	gboolean ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_can_go_forward(object);

	_result = asRLogical(ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_go_back(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_go_back(object);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_go_forward(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_go_forward(object);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_render_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_len, USER_OBJECT_ s_base_uri, USER_OBJECT_ s_mime_type)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	const char* data = (const char*)asString(s_data);
	guint32 len = (guint32)asNumeric(s_len);
	const char* base_uri = (const char*)asString(s_base_uri);
	const char* mime_type = (const char*)asString(s_mime_type);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_render_data(object, data, len, base_uri, mime_type);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_open_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_base_uri, USER_OBJECT_ s_mime_type)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	const char* base_uri = (const char*)asString(s_base_uri);
	const char* mime_type = (const char*)asString(s_mime_type);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_open_stream(object, base_uri, mime_type);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_append_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_len)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	const char* data = (const char*)asString(s_data);
	guint32 len = (guint32)asNumeric(s_len);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_append_data(object, data, len);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_close_stream(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_close_stream(object);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_get_link_message(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	char* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_link_message(object);

	_result = asRString(ans);
	CLEANUP(g_free, ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_get_js_status(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	char* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_js_status(object);

	_result = asRString(ans);
	CLEANUP(g_free, ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_get_title(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	char* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_title(object);

	_result = asRString(ans);
	CLEANUP(g_free, ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_get_location(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	char* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_location(object);

	_result = asRString(ans);
	CLEANUP(g_free, ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_reload(USER_OBJECT_ s_object, USER_OBJECT_ s_flags)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	gint32 flags = (gint32)asInteger(s_flags);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_reload(object, flags);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_set_chrome_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_flags)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));
	guint32 flags = (guint32)asNumeric(s_flags);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gtk_moz_embed_set_chrome_mask(object, flags);


	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_get_chrome_mask(USER_OBJECT_ s_object)
{
	GtkMozEmbed* object = GTK_MOZ_EMBED(getPtrValue(s_object));

	guint32 ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_get_chrome_mask(object);

	_result = asRNumeric(ans);

	return(_result);
}
 

USER_OBJECT_
S_gtk_moz_embed_single_get()
{

	GtkMozEmbedSingle* ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gtk_moz_embed_single_get();

	_result = toRPointer(ans, "GtkMozEmbedSingle");

	return(_result);
}
 

