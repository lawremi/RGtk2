#include <RGtk2/gobject.h>
#include <RGtk2/gio.h>

#include "gioFuncs.h"


USER_OBJECT_
S_g_app_info_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_app_info_get_type();

  _result = asRGType(ans);
#else
  error("g_app_info_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_launch_default_for_uri(USER_OBJECT_ s_uri, USER_OBJECT_ s_launch_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* uri = ((const char*)asCString(s_uri));
  GAppLaunchContext* launch_context = G_APP_LAUNCH_CONTEXT(getPtrValue(s_launch_context));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_launch_default_for_uri(uri, launch_context, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_launch_default_for_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_launch_context_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_app_launch_context_get_type();

  _result = asRGType(ans);
#else
  error("g_app_launch_context_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_create_from_commandline(USER_OBJECT_ s_commandline, USER_OBJECT_ s_application_name, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* commandline = ((const char*)asCString(s_commandline));
  const char* application_name = GET_LENGTH(s_application_name) == 0 ? NULL : ((const char*)asCString(s_application_name));
  GAppInfoCreateFlags flags = ((GAppInfoCreateFlags)asCFlag(s_flags, G_TYPE_APP_INFO_CREATE_FLAGS));

  GAppInfo* ans;
  GError* error = NULL;

  ans = g_app_info_create_from_commandline(commandline, application_name, flags, &error);

  _result = toRPointerWithFinalizer(ans, "GAppInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_create_from_commandline exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_dup(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  GAppInfo* ans;

  ans = g_app_info_dup(object);

  _result = toRPointerWithFinalizer(ans, "GAppInfo", (RPointerFinalizer) g_object_unref);
#else
  error("g_app_info_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_appinfo2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GAppInfo* appinfo2 = G_APP_INFO(getPtrValue(s_appinfo2));

  gboolean ans;

  ans = g_app_info_equal(object, appinfo2);

  _result = asRLogical(ans);
#else
  error("g_app_info_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_id(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_app_info_get_id(object);

  _result = asRString(ans);
#else
  error("g_app_info_get_id exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_app_info_get_name(object);

  _result = asRString(ans);
#else
  error("g_app_info_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_description(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_app_info_get_description(object);

  _result = asRString(ans);
#else
  error("g_app_info_get_description exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_executable(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_app_info_get_executable(object);

  _result = asRString(ans);
#else
  error("g_app_info_get_executable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  GIcon* ans;

  ans = g_app_info_get_icon(object);

  _result = toRPointerWithRef(ans, "GIcon");
#else
  error("g_app_info_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_launch(USER_OBJECT_ s_object, USER_OBJECT_ s_files, USER_OBJECT_ s_launch_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GList* files = asCGList(s_files);
  GAppLaunchContext* launch_context = G_APP_LAUNCH_CONTEXT(getPtrValue(s_launch_context));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_launch(object, files, launch_context, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ((GList*)files));;
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_launch exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_supports_uris(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_supports_uris(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_supports_uris exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_supports_files(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_supports_files(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_supports_files exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_launch_uris(USER_OBJECT_ s_object, USER_OBJECT_ s_uris, USER_OBJECT_ s_launch_context)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  GList* uris = asCGList(s_uris);
  GAppLaunchContext* launch_context = G_APP_LAUNCH_CONTEXT(getPtrValue(s_launch_context));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_launch_uris(object, uris, launch_context, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ((GList*)uris));;
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_launch_uris exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_should_show(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_should_show(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_should_show exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_set_as_default_for_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_set_as_default_for_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_set_as_default_for_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_set_as_default_for_extension(USER_OBJECT_ s_object, USER_OBJECT_ s_extension)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* extension = ((const char*)asCString(s_extension));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_set_as_default_for_extension(object, extension, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_set_as_default_for_extension exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_add_supports_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_add_supports_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_add_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_can_remove_supports_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_can_remove_supports_type(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_can_remove_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_remove_supports_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));

  gboolean ans;
  GError* error = NULL;

  ans = g_app_info_remove_supports_type(object, content_type, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_app_info_remove_supports_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_all(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GList* ans;

  ans = g_app_info_get_all();

  _result = asRGListWithRef(ans, "GAppInfo");
    CLEANUP(g_list_free, ans);;
#else
  error("g_app_info_get_all exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_all_for_type(USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* content_type = ((const char*)asCString(s_content_type));

  GList* ans;

  ans = g_app_info_get_all_for_type(content_type);

  _result = asRGListWithRef(ans, "GAppInfo");
    CLEANUP(g_list_free, ans);;
#else
  error("g_app_info_get_all_for_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_default_for_type(USER_OBJECT_ s_content_type, USER_OBJECT_ s_must_support_uris)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* content_type = ((const char*)asCString(s_content_type));
  gboolean must_support_uris = ((gboolean)asCLogical(s_must_support_uris));

  GAppInfo* ans;

  ans = g_app_info_get_default_for_type(content_type, must_support_uris);

  _result = toRPointerWithRef(ans, "GAppInfo");
#else
  error("g_app_info_get_default_for_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_default_for_uri_scheme(USER_OBJECT_ s_uri_scheme)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* uri_scheme = ((const char*)asCString(s_uri_scheme));

  GAppInfo* ans;

  ans = g_app_info_get_default_for_uri_scheme(uri_scheme);

  _result = toRPointerWithRef(ans, "GAppInfo");
#else
  error("g_app_info_get_default_for_uri_scheme exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_launch_context_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GAppLaunchContext* ans;

  ans = g_app_launch_context_new();

  _result = toRPointerWithFinalizer(ans, "GAppLaunchContext", (RPointerFinalizer) g_object_unref);
#else
  error("g_app_launch_context_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_launch_context_get_display(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GAppInfo* info = G_APP_INFO(getPtrValue(s_info));
  GList* files = asCGList(s_files);

  char* ans;

  ans = g_app_launch_context_get_display(object, info, files);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
    CLEANUP(g_list_free, ((GList*)files));;
#else
  error("g_app_launch_context_get_display exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_launch_context_get_startup_notify_id(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_files)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  GAppInfo* info = G_APP_INFO(getPtrValue(s_info));
  GList* files = asCGList(s_files);

  char* ans;

  ans = g_app_launch_context_get_startup_notify_id(object, info, files);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
    CLEANUP(g_list_free, ((GList*)files));;
#else
  error("g_app_launch_context_get_startup_notify_id exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_launch_context_launch_failed(USER_OBJECT_ s_object, USER_OBJECT_ s_startup_notify_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAppLaunchContext* object = G_APP_LAUNCH_CONTEXT(getPtrValue(s_object));
  const char* startup_notify_id = ((const char*)asCString(s_startup_notify_id));


  g_app_launch_context_launch_failed(object, startup_notify_id);

#else
  error("g_app_launch_context_launch_failed exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_result_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_async_result_get_type();

  _result = asRGType(ans);
#else
  error("g_async_result_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_result_get_user_data(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncResult* object = G_ASYNC_RESULT(getPtrValue(s_object));

  gpointer ans;

  ans = g_async_result_get_user_data(object);

  _result = ans;
#else
  error("g_async_result_get_user_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_result_get_source_object(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncResult* object = G_ASYNC_RESULT(getPtrValue(s_object));

  GObject* ans;

  ans = g_async_result_get_source_object(object);

  _result = toRPointerWithRef(ans, "GObject");
#else
  error("g_async_result_get_source_object exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_buffered_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_buffered_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_new(USER_OBJECT_ s_base_stream)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char * prop_names[] = { "base_stream", NULL };
  USER_OBJECT_ args[] = { s_base_stream };

  GInputStream* ans;

  ans = propertyConstructor(G_TYPE_BUFFERED_INPUT_STREAM, prop_names, args, 1);

  _result = toRPointerWithFinalizer(ans, "GInputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_buffered_input_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_new_sized(USER_OBJECT_ s_base_stream, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* base_stream = G_INPUT_STREAM(getPtrValue(s_base_stream));
  gsize size = ((gsize)asCNumeric(s_size));

  GInputStream* ans;

  ans = g_buffered_input_stream_new_sized(base_stream, size);

  _result = toRPointerWithFinalizer(ans, "GInputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_buffered_input_stream_new_sized exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_get_buffer_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));

  gsize ans;

  ans = g_buffered_input_stream_get_buffer_size(object);

  _result = asRNumeric(ans);
#else
  error("g_buffered_input_stream_get_buffer_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_set_buffer_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  gsize size = ((gsize)asCNumeric(s_size));


  g_buffered_input_stream_set_buffer_size(object, size);

#else
  error("g_buffered_input_stream_set_buffer_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_get_available(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));

  gsize ans;

  ans = g_buffered_input_stream_get_available(object);

  _result = asRNumeric(ans);
#else
  error("g_buffered_input_stream_get_available exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_peek(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_count)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  guchar* buffer = ((guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize offset = ((gsize)GET_LENGTH(s_buffer));
  gsize count = ((gsize)asCNumeric(s_count));

  gsize ans;

  ans = g_buffered_input_stream_peek(object, buffer, offset, count);

  _result = asRNumeric(ans);
#else
  error("g_buffered_input_stream_peek exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_peek_buffer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));

  const guchar* ans;
  gsize count;

  ans = g_buffered_input_stream_peek_buffer(object, &count);

  _result = asRRawArrayWithSize(ans, count);

  _result = retByVal(PROTECT(_result), "count", PROTECT(asRNumeric(count)), NULL);
  UNPROTECT(2);
  ;
#else
  error("g_buffered_input_stream_peek_buffer exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_fill(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  gssize count = ((gssize)asCInteger(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_buffered_input_stream_fill(object, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_buffered_input_stream_fill exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_fill_async(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  gssize count = ((gssize)asCInteger(s_count));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_buffered_input_stream_fill_async(object, count, io_priority, cancellable, callback, user_data);

#else
  error("g_buffered_input_stream_fill_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_fill_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = g_buffered_input_stream_fill_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_buffered_input_stream_fill_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_input_stream_read_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedInputStream* object = G_BUFFERED_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  int ans;
  GError* error = NULL;

  ans = g_buffered_input_stream_read_byte(object, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_buffered_input_stream_read_byte exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_buffered_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_buffered_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_new(USER_OBJECT_ s_base_stream)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char * prop_names[] = { "base_stream", NULL };
  USER_OBJECT_ args[] = { s_base_stream };

  GOutputStream* ans;

  ans = propertyConstructor(G_TYPE_BUFFERED_OUTPUT_STREAM, prop_names, args, 1);

  _result = toRPointerWithFinalizer(ans, "GOutputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_buffered_output_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_new_sized(USER_OBJECT_ s_base_stream, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* base_stream = G_OUTPUT_STREAM(getPtrValue(s_base_stream));
  guint size = ((guint)asCNumeric(s_size));

  GOutputStream* ans;

  ans = g_buffered_output_stream_new_sized(base_stream, size);

  _result = toRPointerWithFinalizer(ans, "GOutputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_buffered_output_stream_new_sized exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_get_buffer_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedOutputStream* object = G_BUFFERED_OUTPUT_STREAM(getPtrValue(s_object));

  gsize ans;

  ans = g_buffered_output_stream_get_buffer_size(object);

  _result = asRNumeric(ans);
#else
  error("g_buffered_output_stream_get_buffer_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_set_buffer_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedOutputStream* object = G_BUFFERED_OUTPUT_STREAM(getPtrValue(s_object));
  gsize size = ((gsize)asCNumeric(s_size));


  g_buffered_output_stream_set_buffer_size(object, size);

#else
  error("g_buffered_output_stream_set_buffer_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_get_auto_grow(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedOutputStream* object = G_BUFFERED_OUTPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_buffered_output_stream_get_auto_grow(object);

  _result = asRLogical(ans);
#else
  error("g_buffered_output_stream_get_auto_grow exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_buffered_output_stream_set_auto_grow(USER_OBJECT_ s_object, USER_OBJECT_ s_auto_grow)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GBufferedOutputStream* object = G_BUFFERED_OUTPUT_STREAM(getPtrValue(s_object));
  gboolean auto_grow = ((gboolean)asCLogical(s_auto_grow));


  g_buffered_output_stream_set_auto_grow(object, auto_grow);

#else
  error("g_buffered_output_stream_set_auto_grow exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_cancellable_get_type();

  _result = asRGType(ans);
#else
  error("g_cancellable_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GCancellable* ans;

  ans = g_cancellable_new();

  _result = toRPointerWithFinalizer(ans, "GCancellable", (RPointerFinalizer) g_object_unref);
#else
  error("g_cancellable_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_is_cancelled(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));

  gboolean ans;

  ans = g_cancellable_is_cancelled(object);

  _result = asRLogical(ans);
#else
  error("g_cancellable_is_cancelled exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_set_error_if_cancelled(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_cancellable_set_error_if_cancelled(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_cancellable_set_error_if_cancelled exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_get_fd(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));

  int ans;

  ans = g_cancellable_get_fd(object);

  _result = asRInteger(ans);
#else
  error("g_cancellable_get_fd exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_get_current(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GCancellable* ans;

  ans = g_cancellable_get_current();

  _result = toRPointerWithRef(ans, "GCancellable");
#else
  error("g_cancellable_get_current exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_push_current(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));


  g_cancellable_push_current(object);

#else
  error("g_cancellable_push_current exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_pop_current(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));


  g_cancellable_pop_current(object);

#else
  error("g_cancellable_pop_current exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_reset(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));


  g_cancellable_reset(object);

#else
  error("g_cancellable_reset exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_cancel(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));


  g_cancellable_cancel(object);

#else
  error("g_cancellable_cancel exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_equals(USER_OBJECT_ s_type1, USER_OBJECT_ s_type2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type1 = ((const char*)asCString(s_type1));
  const char* type2 = ((const char*)asCString(s_type2));

  gboolean ans;

  ans = g_content_type_equals(type1, type2);

  _result = asRLogical(ans);
#else
  error("g_content_type_equals exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_is_a(USER_OBJECT_ s_type, USER_OBJECT_ s_supertype)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));
  const char* supertype = ((const char*)asCString(s_supertype));

  gboolean ans;

  ans = g_content_type_is_a(type, supertype);

  _result = asRLogical(ans);
#else
  error("g_content_type_is_a exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_is_unknown(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));

  gboolean ans;

  ans = g_content_type_is_unknown(type);

  _result = asRLogical(ans);
#else
  error("g_content_type_is_unknown exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_get_description(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));

  char* ans;

  ans = g_content_type_get_description(type);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_content_type_get_description exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_get_mime_type(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));

  char* ans;

  ans = g_content_type_get_mime_type(type);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_content_type_get_mime_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_get_icon(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));

  GIcon* ans;

  ans = g_content_type_get_icon(type);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_content_type_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_can_be_executable(USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* type = ((const char*)asCString(s_type));

  gboolean ans;

  ans = g_content_type_can_be_executable(type);

  _result = asRLogical(ans);
#else
  error("g_content_type_can_be_executable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_guess(USER_OBJECT_ s_filename, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* filename = ((const char*)asCString(s_filename));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gsize data_size = ((gsize)GET_LENGTH(s_data));

  char* ans;
  gboolean result_uncertain;

  ans = g_content_type_guess(filename, data, data_size, &result_uncertain);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "result.uncertain", PROTECT(asRLogical(result_uncertain)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
  ;
#else
  error("g_content_type_guess exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_types_get_registered(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GList* ans;

  ans = g_content_types_get_registered();

  _result = asRGListConv(ans, ((ElementConverter)asRString));
    CLEANUP(GListFreeStrings, ans);
  CLEANUP(g_list_free, ans);;
#else
  error("g_content_types_get_registered exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_data_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_data_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_new(USER_OBJECT_ s_base_stream)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char * prop_names[] = { "base_stream", NULL };
  USER_OBJECT_ args[] = { s_base_stream };

  GDataInputStream* ans;

  ans = propertyConstructor(G_TYPE_DATA_INPUT_STREAM, prop_names, args, 1);

  _result = toRPointerWithFinalizer(ans, "GDataInputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_data_input_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_set_byte_order(USER_OBJECT_ s_object, USER_OBJECT_ s_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GDataStreamByteOrder order = ((GDataStreamByteOrder)asCEnum(s_order, G_TYPE_DATA_STREAM_BYTE_ORDER));


  g_data_input_stream_set_byte_order(object, order);

#else
  error("g_data_input_stream_set_byte_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_get_byte_order(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));

  GDataStreamByteOrder ans;

  ans = g_data_input_stream_get_byte_order(object);

  _result = asREnum(ans, G_TYPE_DATA_STREAM_BYTE_ORDER);
#else
  error("g_data_input_stream_get_byte_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_set_newline_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GDataStreamNewlineType type = ((GDataStreamNewlineType)asCEnum(s_type, G_TYPE_DATA_STREAM_NEWLINE_TYPE));


  g_data_input_stream_set_newline_type(object, type);

#else
  error("g_data_input_stream_set_newline_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_get_newline_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));

  GDataStreamNewlineType ans;

  ans = g_data_input_stream_get_newline_type(object);

  _result = asREnum(ans, G_TYPE_DATA_STREAM_NEWLINE_TYPE);
#else
  error("g_data_input_stream_get_newline_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  guchar ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_byte(object, cancellable, &error);

  _result = asRRaw(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_byte exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_int16(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gint16 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_int16(object, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_int16 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_uint16(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  guint16 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_uint16(object, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_uint16 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gint32 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_int32(object, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_int32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  guint32 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_uint32(object, cancellable, &error);

  _result = asRNumeric(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_uint32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gint64 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_int64(object, cancellable, &error);

  _result = asRNumeric(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_int64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  guint64 ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_uint64(object, cancellable, &error);

  _result = asRNumeric(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_uint64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_line(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  char* ans;
  gsize length;
  GError* error = NULL;

  ans = g_data_input_stream_read_line(object, &length, cancellable, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "length", PROTECT(asRNumeric(length)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_line exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_until(USER_OBJECT_ s_object, USER_OBJECT_ s_stop_chars, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  const gchar* stop_chars = ((const gchar*)asCString(s_stop_chars));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  char* ans;
  gsize length;
  GError* error = NULL;

  ans = g_data_input_stream_read_until(object, stop_chars, &length, cancellable, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "length", PROTECT(asRNumeric(length)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_until exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_data_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_data_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_new(USER_OBJECT_ s_base_stream)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char * prop_names[] = { "base_stream", NULL };
  USER_OBJECT_ args[] = { s_base_stream };

  GDataOutputStream* ans;

  ans = propertyConstructor(G_TYPE_DATA_OUTPUT_STREAM, prop_names, args, 1);

  _result = toRPointerWithFinalizer(ans, "GDataOutputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_data_output_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_set_byte_order(USER_OBJECT_ s_object, USER_OBJECT_ s_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  GDataStreamByteOrder order = ((GDataStreamByteOrder)asCEnum(s_order, G_TYPE_DATA_STREAM_BYTE_ORDER));


  g_data_output_stream_set_byte_order(object, order);

#else
  error("g_data_output_stream_set_byte_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_get_byte_order(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));

  GDataStreamByteOrder ans;

  ans = g_data_output_stream_get_byte_order(object);

  _result = asREnum(ans, G_TYPE_DATA_STREAM_BYTE_ORDER);
#else
  error("g_data_output_stream_get_byte_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_byte(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  guchar data = ((guchar)asCRaw(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_byte(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_byte exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_int16(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  gint16 data = ((gint16)asCInteger(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_int16(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_int16 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_uint16(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  guint16 data = ((guint16)asCInteger(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_uint16(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_uint16 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  gint32 data = ((gint32)asCInteger(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_int32(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_int32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  guint32 data = ((guint32)asCNumeric(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_uint32(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_uint32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  gint64 data = ((gint64)asCNumeric(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_int64(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_int64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_data, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  guint64 data = ((guint64)asCNumeric(s_data));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_uint64(object, data, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_uint64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_output_stream_put_string(USER_OBJECT_ s_object, USER_OBJECT_ s_str, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDataOutputStream* object = G_DATA_OUTPUT_STREAM(getPtrValue(s_object));
  const char* str = ((const char*)asCString(s_str));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_data_output_stream_put_string(object, str, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_data_output_stream_put_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_drive_get_type();

  _result = asRGType(ans);
#else
  error("g_drive_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  char* ans;

  ans = g_drive_get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_drive_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GIcon* ans;

  ans = g_drive_get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_drive_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_has_volumes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_has_volumes(object);

  _result = asRLogical(ans);
#else
  error("g_drive_has_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_volumes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GList* ans;

  ans = g_drive_get_volumes(object);

  _result = asRGListWithRef(ans, "GVolume");
    CLEANUP(g_list_free, ans);;
#else
  error("g_drive_get_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_is_media_removable(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_is_media_removable(object);

  _result = asRLogical(ans);
#else
  error("g_drive_is_media_removable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_has_media(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_has_media(object);

  _result = asRLogical(ans);
#else
  error("g_drive_has_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_is_media_check_automatic(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_is_media_check_automatic(object);

  _result = asRLogical(ans);
#else
  error("g_drive_is_media_check_automatic exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_can_poll_for_media(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_can_poll_for_media(object);

  _result = asRLogical(ans);
#else
  error("g_drive_can_poll_for_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_can_eject(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_can_eject(object);

  _result = asRLogical(ans);
#else
  error("g_drive_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_drive_eject(object, flags, cancellable, callback, user_data);

#else
  error("g_drive_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_drive_eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_drive_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_poll_for_media(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_drive_poll_for_media(object, cancellable, callback, user_data);

#else
  error("g_drive_poll_for_media exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_poll_for_media_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_drive_poll_for_media_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_drive_poll_for_media_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_identifier(USER_OBJECT_ s_object, USER_OBJECT_ s_kind)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  const char* kind = ((const char*)asCString(s_kind));

  char* ans;

  ans = g_drive_get_identifier(object, kind);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_drive_get_identifier exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_enumerate_identifiers(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  char** ans;

  ans = g_drive_enumerate_identifiers(object);

  _result = asRStringArray(ans);
    CLEANUP(g_strfreev, ans);;
#else
  error("g_drive_enumerate_identifiers exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GFileAttributeInfoList* ans;

  ans = g_file_attribute_info_list_new();

  _result = toRPointerWithFinalizer(ans, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);
#else
  error("g_file_attribute_info_list_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeInfoList* object = ((GFileAttributeInfoList*)getPtrValue(s_object));

  GFileAttributeInfoList* ans;

  ans = g_file_attribute_info_list_ref(object);

  _result = toRPointerWithFinalizer(ans ? g_file_attribute_info_list_ref(ans) : NULL, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);
#else
  error("g_file_attribute_info_list_ref exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeInfoList* object = ((GFileAttributeInfoList*)getPtrValue(s_object));


  g_file_attribute_info_list_unref(object);

#else
  error("g_file_attribute_info_list_unref exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_dup(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeInfoList* object = ((GFileAttributeInfoList*)getPtrValue(s_object));

  GFileAttributeInfoList* ans;

  ans = g_file_attribute_info_list_dup(object);

  _result = toRPointerWithFinalizer(ans, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);
#else
  error("g_file_attribute_info_list_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_lookup(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeInfoList* object = ((GFileAttributeInfoList*)getPtrValue(s_object));
  const char* name = ((const char*)asCString(s_name));

  const GFileAttributeInfo* ans;

  ans = g_file_attribute_info_list_lookup(object, name);

  _result = asRGFileAttributeInfo(ans);
#else
  error("g_file_attribute_info_list_lookup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_list_add(USER_OBJECT_ s_object, USER_OBJECT_ s_name, USER_OBJECT_ s_type, USER_OBJECT_ s_flags)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeInfoList* object = ((GFileAttributeInfoList*)getPtrValue(s_object));
  const char* name = ((const char*)asCString(s_name));
  GFileAttributeType type = ((GFileAttributeType)asCEnum(s_type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  GFileAttributeInfoFlags flags = ((GFileAttributeInfoFlags)asCFlag(s_flags, G_TYPE_FILE_ATTRIBUTE_INFO_FLAGS));


  g_file_attribute_info_list_add(object, name, type, flags);

#else
  error("g_file_attribute_info_list_add exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_enumerator_get_type();

  _result = asRGType(ans);
#else
  error("g_file_enumerator_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_next_file(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_enumerator_next_file(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerator_next_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_enumerator_close(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerator_close exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_next_files_async(USER_OBJECT_ s_object, USER_OBJECT_ s_num_files, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  int num_files = ((int)asCInteger(s_num_files));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_enumerator_next_files_async(object, num_files, io_priority, cancellable, callback, user_data);

#else
  error("g_file_enumerator_next_files_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_next_files_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = g_file_enumerator_next_files_finish(object, result, &error);

  _result = asRGListWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerator_next_files_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_enumerator_close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_file_enumerator_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_enumerator_close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerator_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_is_closed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_enumerator_is_closed(object);

  _result = asRLogical(ans);
#else
  error("g_file_enumerator_is_closed exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_has_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_enumerator_has_pending(object);

  _result = asRLogical(ans);
#else
  error("g_file_enumerator_has_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_set_pending(USER_OBJECT_ s_object, USER_OBJECT_ s_pending)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));
  gboolean pending = ((gboolean)asCLogical(s_pending));


  g_file_enumerator_set_pending(object, pending);

#else
  error("g_file_enumerator_set_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_get_type();

  _result = asRGType(ans);
#else
  error("g_file_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_new_for_path(USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* path = ((const char*)asCString(s_path));

  GFile* ans;

  ans = g_file_new_for_path(path);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_new_for_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_new_for_uri(USER_OBJECT_ s_uri)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* uri = ((const char*)asCString(s_uri));

  GFile* ans;

  ans = g_file_new_for_uri(uri);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_new_for_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_new_for_commandline_arg(USER_OBJECT_ s_arg)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* arg = ((const char*)asCString(s_arg));

  GFile* ans;

  ans = g_file_new_for_commandline_arg(arg);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_new_for_commandline_arg exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_parse_name(USER_OBJECT_ s_parse_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* parse_name = ((const char*)asCString(s_parse_name));

  GFile* ans;

  ans = g_file_parse_name(parse_name);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_parse_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_dup(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  GFile* ans;

  ans = g_file_dup(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_hash(USER_OBJECT_ s_file)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  gpointer file = ((gpointer)asCGenericData(s_file));

  guint ans;

  ans = g_file_hash(file);

  _result = asRNumeric(ans);
#else
  error("g_file_hash exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_file2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* file2 = G_FILE(getPtrValue(s_file2));

  gboolean ans;

  ans = g_file_equal(object, file2);

  _result = asRLogical(ans);
#else
  error("g_file_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_basename(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = g_file_get_basename(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_basename exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_path(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = g_file_get_path(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_uri(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = g_file_get_uri(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_parse_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = g_file_get_parse_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_parse_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_parent(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  GFile* ans;

  ans = g_file_get_parent(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_get_parent exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_child(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* name = ((const char*)asCString(s_name));

  GFile* ans;

  ans = g_file_get_child(object, name);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_get_child exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_child_for_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));

  GFile* ans;
  GError* error = NULL;

  ans = g_file_get_child_for_display_name(object, display_name, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_get_child_for_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_has_prefix(USER_OBJECT_ s_object, USER_OBJECT_ s_descendant)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* descendant = G_FILE(getPtrValue(s_descendant));

  gboolean ans;

  ans = g_file_has_prefix(object, descendant);

  _result = asRLogical(ans);
#else
  error("g_file_has_prefix exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_relative_path(USER_OBJECT_ s_object, USER_OBJECT_ s_descendant)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* descendant = G_FILE(getPtrValue(s_descendant));

  char* ans;

  ans = g_file_get_relative_path(object, descendant);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_relative_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_resolve_relative_path(USER_OBJECT_ s_object, USER_OBJECT_ s_relative_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* relative_path = ((const char*)asCString(s_relative_path));

  GFile* ans;

  ans = g_file_resolve_relative_path(object, relative_path);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_resolve_relative_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_is_native(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_is_native(object);

  _result = asRLogical(ans);
#else
  error("g_file_is_native exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_has_uri_scheme(USER_OBJECT_ s_object, USER_OBJECT_ s_uri_scheme)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* uri_scheme = ((const char*)asCString(s_uri_scheme));

  gboolean ans;

  ans = g_file_has_uri_scheme(object, uri_scheme);

  _result = asRLogical(ans);
#else
  error("g_file_has_uri_scheme exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_get_uri_scheme(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  char* ans;

  ans = g_file_get_uri_scheme(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_get_uri_scheme exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_read(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInputStream* ans;
  GError* error = NULL;

  ans = g_file_read(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_read exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_read_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_read_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_file_read_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_read_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInputStream* ans;
  GError* error = NULL;

  ans = g_file_read_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_read_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_append_to(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_append_to(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_append_to exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_create(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_create exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_replace(object, etag, make_backup, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_append_to_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_append_to_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_append_to_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_append_to_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_append_to_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_append_to_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_create_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_create_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_create_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_create_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_async(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_replace_async(object, etag, make_backup, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_replace_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileOutputStream* ans;
  GError* error = NULL;

  ans = g_file_replace_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileOutputStream", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_exists(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;

  ans = g_file_query_exists(object, cancellable);

  _result = asRLogical(ans);
#else
  error("g_file_query_exists exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_query_info(object, attributes, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_query_info_async(object, attributes, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_query_info_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_filesystem_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_query_filesystem_info(object, attributes, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_filesystem_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_filesystem_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_query_filesystem_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("g_file_query_filesystem_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_filesystem_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_query_filesystem_info_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_filesystem_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_find_enclosing_mount(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GMount* ans;
  GError* error = NULL;

  ans = g_file_find_enclosing_mount(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_find_enclosing_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_find_enclosing_mount_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_find_enclosing_mount_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_file_find_enclosing_mount_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_find_enclosing_mount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GMount* ans;
  GError* error = NULL;

  ans = g_file_find_enclosing_mount_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_find_enclosing_mount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerate_children(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileEnumerator* ans;
  GError* error = NULL;

  ans = g_file_enumerate_children(object, attributes, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileEnumerator", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerate_children exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerate_children_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_enumerate_children_async(object, attributes, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_enumerate_children_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerate_children_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileEnumerator* ans;
  GError* error = NULL;

  ans = g_file_enumerate_children_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFileEnumerator", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_enumerate_children_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFile* ans;
  GError* error = NULL;

  ans = g_file_set_display_name(object, display_name, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_display_name_async(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_set_display_name_async(object, display_name, io_priority, cancellable, callback, user_data);

#else
  error("g_file_set_display_name_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_display_name_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFile* ans;
  GError* error = NULL;

  ans = g_file_set_display_name_finish(object, res, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_display_name_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_delete(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_delete(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_delete exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_trash(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_trash(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_trash exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_copy(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_copy(object, destination, flags, cancellable, progress_callback, progress_callback_data, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  R_freeCBData(progress_callback_data);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_copy exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_copy_async(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_copy_async(object, destination, flags, io_priority, cancellable, progress_callback, progress_callback_data, callback, user_data);

  R_freeCBData(progress_callback_data);
#else
  error("g_file_copy_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_copy_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_copy_finish(object, res, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_copy_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_move(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_progress_callback, USER_OBJECT_ s_progress_callback_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileProgressCallback progress_callback = ((GFileProgressCallback)S_GFileProgressCallback);
  R_CallbackData* progress_callback_data = R_createCBData(s_progress_callback, s_progress_callback_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_move(object, destination, flags, cancellable, progress_callback, progress_callback_data, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  R_freeCBData(progress_callback_data);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_move exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_make_directory(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_make_directory(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_make_directory exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_make_symbolic_link(USER_OBJECT_ s_object, USER_OBJECT_ s_symlink_value, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* symlink_value = ((const char*)asCString(s_symlink_value));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_make_symbolic_link(object, symlink_value, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_make_symbolic_link exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_settable_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileAttributeInfoList* ans;
  GError* error = NULL;

  ans = g_file_query_settable_attributes(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans ? g_file_attribute_info_list_ref(ans) : NULL, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_settable_attributes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_writable_namespaces(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileAttributeInfoList* ans;
  GError* error = NULL;

  ans = g_file_query_writable_namespaces(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans ? g_file_attribute_info_list_ref(ans) : NULL, "GFileAttributeInfoList", (RPointerFinalizer) g_file_attribute_info_list_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_writable_namespaces exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_type, USER_OBJECT_ s_value_p, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  GFileAttributeType type = ((GFileAttributeType)asCEnum(s_type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  gpointer value_p = ((gpointer)asCGenericData(s_value_p));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute(object, attribute, type, value_p, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attributes_from_info(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileInfo* info = G_FILE_INFO(getPtrValue(s_info));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attributes_from_info(object, info, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attributes_from_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attributes_async(USER_OBJECT_ s_object, USER_OBJECT_ s_info, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileInfo* info = G_FILE_INFO(getPtrValue(s_info));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_set_attributes_async(object, info, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_set_attributes_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attributes_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GFileInfo* info = NULL;
  GError* error = NULL;

  ans = g_file_set_attributes_finish(object, result, &info, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "info", PROTECT(toRPointerWithRef(info, "GFileInfo")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attributes_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  const char* value = ((const char*)asCString(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_string(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  const char* value = ((const char*)asCString(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_byte_string(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_byte_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  guint32 value = ((guint32)asCNumeric(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_uint32(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_uint32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  gint32 value = ((gint32)asCInteger(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_int32(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_int32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  guint64 value = ((guint64)asCNumeric(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_uint64(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_uint64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_set_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_value, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  gint64 value = ((gint64)asCNumeric(s_value));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_set_attribute_int64(object, attribute, value, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_set_attribute_int64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_mount_enclosing_volume(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_mount_enclosing_volume(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_file_mount_enclosing_volume exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_mount_enclosing_volume_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_mount_enclosing_volume_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_mount_enclosing_volume_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_mount_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_mount_mountable(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_file_mount_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_mount_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFile* ans;
  GError* error = NULL;

  ans = g_file_mount_mountable_finish(object, result, &error);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_mount_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_unmount_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_unmount_mountable(object, flags, cancellable, callback, user_data);

#else
  error("g_file_unmount_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_unmount_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_unmount_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_unmount_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_eject_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_eject_mountable(object, flags, cancellable, callback, user_data);

#else
  error("g_file_eject_mountable exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_eject_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_eject_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_eject_mountable_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_copy_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_destination, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFile* destination = G_FILE(getPtrValue(s_destination));
  GFileCopyFlags flags = ((GFileCopyFlags)asCFlag(s_flags, G_TYPE_FILE_COPY_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_copy_attributes(object, destination, flags, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_copy_attributes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_directory(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileMonitorFlags flags = ((GFileMonitorFlags)asCFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileMonitor* ans;
  GError* error = NULL;

  ans = g_file_monitor_directory(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileMonitor", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_monitor_directory exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_file(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileMonitorFlags flags = ((GFileMonitorFlags)asCFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileMonitor* ans;
  GError* error = NULL;

  ans = g_file_monitor_file(object, flags, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GFileMonitor", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_monitor_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_default_handler(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GAppInfo* ans;
  GError* error = NULL;

  ans = g_file_query_default_handler(object, cancellable, &error);

  _result = toRPointerWithFinalizer(ans, "GAppInfo", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_query_default_handler exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_load_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  char* contents = NULL;
  gsize length;
  char* etag_out = NULL;
  GError* error = NULL;

  ans = g_file_load_contents(object, cancellable, &contents, &length, &etag_out, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "contents", PROTECT(asRString(contents)), "length", PROTECT(asRNumeric(length)), "etag.out", PROTECT(asRString(etag_out)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(5);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_file_load_contents exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_load_contents_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_load_contents_async(object, cancellable, callback, user_data);

#else
  error("g_file_load_contents_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_load_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  char* contents = NULL;
  gsize length;
  char* etag_out = NULL;
  GError* error = NULL;

  ans = g_file_load_contents_finish(object, res, &contents, &length, &etag_out, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "contents", PROTECT(asRString(contents)), "length", PROTECT(asRNumeric(length)), "etag.out", PROTECT(asRString(etag_out)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(5);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_file_load_contents_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_load_partial_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  char* contents = NULL;
  gsize length;
  char* etag_out = NULL;
  GError* error = NULL;

  ans = g_file_load_partial_contents_finish(object, res, &contents, &length, &etag_out, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "contents", PROTECT(asRString(contents)), "length", PROTECT(asRNumeric(length)), "etag.out", PROTECT(asRString(etag_out)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(5);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_file_load_partial_contents_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_contents(USER_OBJECT_ s_object, USER_OBJECT_ s_contents, USER_OBJECT_ s_length, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* contents = ((const char*)asCString(s_contents));
  gsize length = ((gsize)asCNumeric(s_length));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  char* new_etag = NULL;
  GError* error = NULL;

  ans = g_file_replace_contents(object, contents, length, etag, make_backup, flags, &new_etag, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "new.etag", PROTECT(asRString(new_etag)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace_contents exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_contents_async(USER_OBJECT_ s_object, USER_OBJECT_ s_contents, USER_OBJECT_ s_length, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* contents = ((const char*)asCString(s_contents));
  gsize length = ((gsize)asCNumeric(s_length));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_replace_contents_async(object, contents, length, etag, make_backup, flags, cancellable, callback, user_data);

#else
  error("g_file_replace_contents_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_contents_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  char* new_etag = NULL;
  GError* error = NULL;

  ans = g_file_replace_contents_finish(object, res, &new_etag, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "new.etag", PROTECT(asRString(new_etag)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace_contents_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_icon_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_icon_get_type();

  _result = asRGType(ans);
#else
  error("g_file_icon_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_icon_new(USER_OBJECT_ s_file)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFile* file = G_FILE(getPtrValue(s_file));

  GIcon* ans;

  ans = g_file_icon_new(file);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_icon_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_icon_get_file(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileIcon* object = G_FILE_ICON(getPtrValue(s_object));

  GFile* ans;

  ans = g_file_icon_get_file(object);

  _result = toRPointerWithRef(ans, "GFile");
#else
  error("g_file_icon_get_file exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_info_get_type();

  _result = asRGType(ans);
#else
  error("g_file_info_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GFileInfo* ans;

  ans = g_file_info_new();

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_info_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_dup(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  GFileInfo* ans;

  ans = g_file_info_dup(object);

  _result = toRPointerWithFinalizer(ans, "GFileInfo", (RPointerFinalizer) g_object_unref);
#else
  error("g_file_info_dup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_copy_into(USER_OBJECT_ s_object, USER_OBJECT_ s_dest_info)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GFileInfo* dest_info = G_FILE_INFO(getPtrValue(s_dest_info));


  g_file_info_copy_into(object, dest_info);

#else
  error("g_file_info_copy_into exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_has_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gboolean ans;

  ans = g_file_info_has_attribute(object, attribute);

  _result = asRLogical(ans);
#else
  error("g_file_info_has_attribute exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_list_attributes(USER_OBJECT_ s_object, USER_OBJECT_ s_name_space)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* name_space = ((const char*)asCString(s_name_space));

  char** ans;

  ans = g_file_info_list_attributes(object, name_space);

  _result = asRStringArray(ans);
#else
  error("g_file_info_list_attributes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_data(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gboolean ans;
  GFileAttributeType type;
  gpointer value_pp;
  GFileAttributeStatus status;

  ans = g_file_info_get_attribute_data(object, attribute, &type, &value_pp, &status);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "type", PROTECT(asREnum(type, G_TYPE_FILE_ATTRIBUTE_TYPE)), "value.pp", PROTECT(value_pp), "status", PROTECT(asREnum(status, G_TYPE_FILE_ATTRIBUTE_STATUS)), NULL);
  UNPROTECT(4);
  ;
  ;
  ;
#else
  error("g_file_info_get_attribute_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_type(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  GFileAttributeType ans;

  ans = g_file_info_get_attribute_type(object, attribute);

  _result = asREnum(ans, G_TYPE_FILE_ATTRIBUTE_TYPE);
#else
  error("g_file_info_get_attribute_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_remove_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));


  g_file_info_remove_attribute(object, attribute);

#else
  error("g_file_info_remove_attribute exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_status(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  GFileAttributeStatus ans;

  ans = g_file_info_get_attribute_status(object, attribute);

  _result = asREnum(ans, G_TYPE_FILE_ATTRIBUTE_STATUS);
#else
  error("g_file_info_get_attribute_status exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_as_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  char* ans;

  ans = g_file_info_get_attribute_as_string(object, attribute);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_info_get_attribute_as_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  const char* ans;

  ans = g_file_info_get_attribute_string(object, attribute);

  _result = asRString(ans);
#else
  error("g_file_info_get_attribute_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  const char* ans;

  ans = g_file_info_get_attribute_byte_string(object, attribute);

  _result = asRString(ans);
#else
  error("g_file_info_get_attribute_byte_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_boolean(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gboolean ans;

  ans = g_file_info_get_attribute_boolean(object, attribute);

  _result = asRLogical(ans);
#else
  error("g_file_info_get_attribute_boolean exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  guint32 ans;

  ans = g_file_info_get_attribute_uint32(object, attribute);

  _result = asRNumeric(ans);
#else
  error("g_file_info_get_attribute_uint32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gint32 ans;

  ans = g_file_info_get_attribute_int32(object, attribute);

  _result = asRInteger(ans);
#else
  error("g_file_info_get_attribute_int32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  guint64 ans;

  ans = g_file_info_get_attribute_uint64(object, attribute);

  _result = asRNumeric(ans);
#else
  error("g_file_info_get_attribute_uint64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gint64 ans;

  ans = g_file_info_get_attribute_int64(object, attribute);

  _result = asRNumeric(ans);
#else
  error("g_file_info_get_attribute_int64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_object(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  GObject* ans;

  ans = g_file_info_get_attribute_object(object, attribute);

  _result = toRPointerWithRef(ans, "GObject");
#else
  error("g_file_info_get_attribute_object exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_type, USER_OBJECT_ s_value_p)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  GFileAttributeType type = ((GFileAttributeType)asCEnum(s_type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  gpointer value_p = ((gpointer)asCGenericData(s_value_p));


  g_file_info_set_attribute(object, attribute, type, value_p);

#else
  error("g_file_info_set_attribute exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  const char* attr_value = ((const char*)asCString(s_attr_value));


  g_file_info_set_attribute_string(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_byte_string(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  const char* attr_value = ((const char*)asCString(s_attr_value));


  g_file_info_set_attribute_byte_string(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_byte_string exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_boolean(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  gboolean attr_value = ((gboolean)asCLogical(s_attr_value));


  g_file_info_set_attribute_boolean(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_boolean exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_uint32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  guint32 attr_value = ((guint32)asCNumeric(s_attr_value));


  g_file_info_set_attribute_uint32(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_uint32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_int32(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  gint32 attr_value = ((gint32)asCInteger(s_attr_value));


  g_file_info_set_attribute_int32(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_int32 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_uint64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  guint64 attr_value = ((guint64)asCNumeric(s_attr_value));


  g_file_info_set_attribute_uint64(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_uint64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_int64(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  gint64 attr_value = ((gint64)asCNumeric(s_attr_value));


  g_file_info_set_attribute_int64(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_int64 exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_object(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  GObject* attr_value = G_OBJECT(getPtrValue(s_attr_value));


  g_file_info_set_attribute_object(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_object exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_clear_status(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));


  g_file_info_clear_status(object);

#else
  error("g_file_info_clear_status exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_file_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  GFileType ans;

  ans = g_file_info_get_file_type(object);

  _result = asREnum(ans, G_TYPE_FILE_TYPE);
#else
  error("g_file_info_get_file_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_is_hidden(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_info_get_is_hidden(object);

  _result = asRLogical(ans);
#else
  error("g_file_info_get_is_hidden exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_is_backup(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_info_get_is_backup(object);

  _result = asRLogical(ans);
#else
  error("g_file_info_get_is_backup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_is_symlink(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_info_get_is_symlink(object);

  _result = asRLogical(ans);
#else
  error("g_file_info_get_is_symlink exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_name(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_display_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_display_name(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_edit_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_edit_name(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_edit_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  GIcon* ans;

  ans = g_file_info_get_icon(object);

  _result = toRPointerWithRef(ans, "GIcon");
#else
  error("g_file_info_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_content_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_content_type(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_content_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  goffset ans;

  ans = g_file_info_get_size(object);

  _result = asRNumeric(ans);
#else
  error("g_file_info_get_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_modification_time(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GTimeVal* result = asCGTimeVal(s_result);


  g_file_info_get_modification_time(object, result);

#else
  error("g_file_info_get_modification_time exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_symlink_target(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_symlink_target(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_symlink_target exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_etag(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_file_info_get_etag(object);

  _result = asRString(ans);
#else
  error("g_file_info_get_etag exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_sort_order(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));

  gint32 ans;

  ans = g_file_info_get_sort_order(object);

  _result = asRInteger(ans);
#else
  error("g_file_info_get_sort_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_mask)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GFileAttributeMatcher* mask = ((GFileAttributeMatcher*)getPtrValue(s_mask));


  g_file_info_set_attribute_mask(object, mask);

#else
  error("g_file_info_set_attribute_mask exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_unset_attribute_mask(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));


  g_file_info_unset_attribute_mask(object);

#else
  error("g_file_info_unset_attribute_mask exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_file_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GFileType type = ((GFileType)asCEnum(s_type, G_TYPE_FILE_TYPE));


  g_file_info_set_file_type(object, type);

#else
  error("g_file_info_set_file_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_is_hidden(USER_OBJECT_ s_object, USER_OBJECT_ s_is_hidden)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  gboolean is_hidden = ((gboolean)asCLogical(s_is_hidden));


  g_file_info_set_is_hidden(object, is_hidden);

#else
  error("g_file_info_set_is_hidden exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_is_symlink(USER_OBJECT_ s_object, USER_OBJECT_ s_is_symlink)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  gboolean is_symlink = ((gboolean)asCLogical(s_is_symlink));


  g_file_info_set_is_symlink(object, is_symlink);

#else
  error("g_file_info_set_is_symlink exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* name = ((const char*)asCString(s_name));


  g_file_info_set_name(object, name);

#else
  error("g_file_info_set_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_display_name(USER_OBJECT_ s_object, USER_OBJECT_ s_display_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* display_name = ((const char*)asCString(s_display_name));


  g_file_info_set_display_name(object, display_name);

#else
  error("g_file_info_set_display_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_edit_name(USER_OBJECT_ s_object, USER_OBJECT_ s_edit_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* edit_name = ((const char*)asCString(s_edit_name));


  g_file_info_set_edit_name(object, edit_name);

#else
  error("g_file_info_set_edit_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_icon(USER_OBJECT_ s_object, USER_OBJECT_ s_icon)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GIcon* icon = G_ICON(getPtrValue(s_icon));


  g_file_info_set_icon(object, icon);

#else
  error("g_file_info_set_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_content_type(USER_OBJECT_ s_object, USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* content_type = ((const char*)asCString(s_content_type));


  g_file_info_set_content_type(object, content_type);

#else
  error("g_file_info_set_content_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_size(USER_OBJECT_ s_object, USER_OBJECT_ s_size)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  goffset size = ((goffset)asCNumeric(s_size));


  g_file_info_set_size(object, size);

#else
  error("g_file_info_set_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_modification_time(USER_OBJECT_ s_object, USER_OBJECT_ s_mtime)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  GTimeVal* mtime = asCGTimeVal(s_mtime);


  g_file_info_set_modification_time(object, mtime);

#else
  error("g_file_info_set_modification_time exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_symlink_target(USER_OBJECT_ s_object, USER_OBJECT_ s_symlink_target)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* symlink_target = ((const char*)asCString(s_symlink_target));


  g_file_info_set_symlink_target(object, symlink_target);

#else
  error("g_file_info_set_symlink_target exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_sort_order(USER_OBJECT_ s_object, USER_OBJECT_ s_sort_order)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  gint32 sort_order = ((gint32)asCInteger(s_sort_order));


  g_file_info_set_sort_order(object, sort_order);

#else
  error("g_file_info_set_sort_order exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_new(USER_OBJECT_ s_attributes)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* attributes = ((const char*)asCString(s_attributes));

  GFileAttributeMatcher* ans;

  ans = g_file_attribute_matcher_new(attributes);

  _result = toRPointer(ans, "GFileAttributeMatcher");
#else
  error("g_file_attribute_matcher_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_ref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));

  GFileAttributeMatcher* ans;

  ans = g_file_attribute_matcher_ref(object);

  _result = toRPointer(ans ? (ans) : NULL, "GFileAttributeMatcher");
#else
  error("g_file_attribute_matcher_ref exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_unref(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));


  g_file_attribute_matcher_unref(object);

#else
  error("g_file_attribute_matcher_unref exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_matches(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gboolean ans;

  ans = g_file_attribute_matcher_matches(object, attribute);

  _result = asRLogical(ans);
#else
  error("g_file_attribute_matcher_matches exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_matches_only(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  gboolean ans;

  ans = g_file_attribute_matcher_matches_only(object, attribute);

  _result = asRLogical(ans);
#else
  error("g_file_attribute_matcher_matches_only exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_enumerate_namespace(USER_OBJECT_ s_object, USER_OBJECT_ s_ns)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));
  const char* ns = ((const char*)asCString(s_ns));

  gboolean ans;

  ans = g_file_attribute_matcher_enumerate_namespace(object, ns);

  _result = asRLogical(ans);
#else
  error("g_file_attribute_matcher_enumerate_namespace exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_matcher_enumerate_next(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileAttributeMatcher* object = ((GFileAttributeMatcher*)getPtrValue(s_object));

  const char* ans;

  ans = g_file_attribute_matcher_enumerate_next(object);

  _result = asRString(ans);
#else
  error("g_file_attribute_matcher_enumerate_next exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_file_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_input_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  char* attributes = ((char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_input_stream_query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_input_stream_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_input_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_input_stream_query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("g_file_input_stream_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_input_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileInputStream* object = G_FILE_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_input_stream_query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_input_stream_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_monitor_get_type();

  _result = asRGType(ans);
#else
  error("g_file_monitor_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_cancel(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileMonitor* object = G_FILE_MONITOR(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_monitor_cancel(object);

  _result = asRLogical(ans);
#else
  error("g_file_monitor_cancel exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_is_cancelled(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileMonitor* object = G_FILE_MONITOR(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_monitor_is_cancelled(object);

  _result = asRLogical(ans);
#else
  error("g_file_monitor_is_cancelled exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_set_rate_limit(USER_OBJECT_ s_object, USER_OBJECT_ s_limit_msecs)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileMonitor* object = G_FILE_MONITOR(getPtrValue(s_object));
  int limit_msecs = ((int)asCInteger(s_limit_msecs));


  g_file_monitor_set_rate_limit(object, limit_msecs);

#else
  error("g_file_monitor_set_rate_limit exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_emit_event(USER_OBJECT_ s_object, USER_OBJECT_ s_file, USER_OBJECT_ s_other_file, USER_OBJECT_ s_event_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileMonitor* object = G_FILE_MONITOR(getPtrValue(s_object));
  GFile* file = G_FILE(getPtrValue(s_file));
  GFile* other_file = G_FILE(getPtrValue(s_other_file));
  GFileMonitorEvent event_type = ((GFileMonitorEvent)asCEnum(s_event_type, G_TYPE_FILE_MONITOR_EVENT));


  g_file_monitor_emit_event(object, file, other_file, event_type);

#else
  error("g_file_monitor_emit_event exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filename_completer_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_filename_completer_get_type();

  _result = asRGType(ans);
#else
  error("g_filename_completer_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filename_completer_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GFilenameCompleter* ans;

  ans = g_filename_completer_new();

  _result = toRPointerWithFinalizer(ans, "GFilenameCompleter", (RPointerFinalizer) g_object_unref);
#else
  error("g_filename_completer_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filename_completer_get_completion_suffix(USER_OBJECT_ s_object, USER_OBJECT_ s_initial_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFilenameCompleter* object = G_FILENAME_COMPLETER(getPtrValue(s_object));
  const char* initial_text = ((const char*)asCString(s_initial_text));

  char* ans;

  ans = g_filename_completer_get_completion_suffix(object, initial_text);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_filename_completer_get_completion_suffix exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filename_completer_get_completions(USER_OBJECT_ s_object, USER_OBJECT_ s_initial_text)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFilenameCompleter* object = G_FILENAME_COMPLETER(getPtrValue(s_object));
  const char* initial_text = ((const char*)asCString(s_initial_text));

  char** ans;

  ans = g_filename_completer_get_completions(object, initial_text);

  _result = asRStringArray(ans);
#else
  error("g_filename_completer_get_completions exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filename_completer_set_dirs_only(USER_OBJECT_ s_object, USER_OBJECT_ s_dirs_only)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFilenameCompleter* object = G_FILENAME_COMPLETER(getPtrValue(s_object));
  gboolean dirs_only = ((gboolean)asCLogical(s_dirs_only));


  g_filename_completer_set_dirs_only(object, dirs_only);

#else
  error("g_filename_completer_set_dirs_only exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_file_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_output_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  char* attributes = ((char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_output_stream_query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_output_stream_query_info exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_output_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  char* attributes = ((char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_output_stream_query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("g_file_output_stream_query_info_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_output_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_output_stream_query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_output_stream_query_info_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_output_stream_get_etag(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFileOutputStream* object = G_FILE_OUTPUT_STREAM(getPtrValue(s_object));

  char* ans;

  ans = g_file_output_stream_get_etag(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_output_stream_get_etag exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_filter_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_filter_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_input_stream_get_base_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFilterInputStream* object = G_FILTER_INPUT_STREAM(getPtrValue(s_object));

  GInputStream* ans;

  ans = g_filter_input_stream_get_base_stream(object);

  _result = toRPointerWithRef(ans, "GInputStream");
#else
  error("g_filter_input_stream_get_base_stream exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_filter_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_filter_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_output_stream_get_base_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GFilterOutputStream* object = G_FILTER_OUTPUT_STREAM(getPtrValue(s_object));

  GOutputStream* ans;

  ans = g_filter_output_stream_get_base_stream(object);

  _result = toRPointerWithRef(ans, "GOutputStream");
#else
  error("g_filter_output_stream_get_base_stream exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_icon_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_icon_get_type();

  _result = asRGType(ans);
#else
  error("g_icon_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_icon_hash(USER_OBJECT_ s_icon)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  gpointer icon = ((gpointer)asCGenericData(s_icon));

  guint ans;

  ans = g_icon_hash(icon);

  _result = asRNumeric(ans);
#else
  error("g_icon_hash exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_icon_equal(USER_OBJECT_ s_object, USER_OBJECT_ s_icon2)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIcon* object = G_ICON(getPtrValue(s_object));
  GIcon* icon2 = G_ICON(getPtrValue(s_icon2));

  gboolean ans;

  ans = g_icon_equal(object, icon2);

  _result = asRLogical(ans);
#else
  error("g_icon_equal exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_skip(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_input_stream_skip(object, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_skip exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_input_stream_close(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_close exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_skip_async(USER_OBJECT_ s_object, USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_input_stream_skip_async(object, count, io_priority, cancellable, callback, user_data);

#else
  error("g_input_stream_skip_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_skip_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = g_input_stream_skip_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_skip_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_input_stream_close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_input_stream_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_input_stream_close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_is_closed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_input_stream_is_closed(object);

  _result = asRLogical(ans);
#else
  error("g_input_stream_is_closed exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_has_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_input_stream_has_pending(object);

  _result = asRLogical(ans);
#else
  error("g_input_stream_has_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_set_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_input_stream_set_pending(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_set_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_input_stream_clear_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));


  g_input_stream_clear_pending(object);

#else
  error("g_input_stream_clear_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_create_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_app_info_create_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_app_info_create_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_stream_byte_order_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_data_stream_byte_order_get_type();

  _result = asRGType(ans);
#else
  error("g_data_stream_byte_order_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_stream_newline_type_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_data_stream_newline_type_get_type();

  _result = asRGType(ans);
#else
  error("g_data_stream_newline_type_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_info_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_query_info_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_file_query_info_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_create_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_file_create_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_copy_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_copy_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_file_copy_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_monitor_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_file_monitor_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_type_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_attribute_type_get_type();

  _result = asRGType(ans);
#else
  error("g_file_attribute_type_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_info_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_attribute_info_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_file_attribute_info_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_attribute_status_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_attribute_status_get_type();

  _result = asRGType(ans);
#else
  error("g_file_attribute_status_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_type_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_type_get_type();

  _result = asRGType(ans);
#else
  error("g_file_type_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor_event_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_file_monitor_event_get_type();

  _result = asRGType(ans);
#else
  error("g_file_monitor_event_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_error_enum_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_io_error_enum_get_type();

  _result = asRGType(ans);
#else
  error("g_io_error_enum_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_ask_password_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_ask_password_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_ask_password_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_password_save_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_password_save_get_type();

  _result = asRGType(ans);
#else
  error("g_password_save_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_splice_flags_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_output_stream_splice_flags_get_type();

  _result = asRGType(ans);
#else
  error("g_output_stream_splice_flags_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_error_quark(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GQuark ans;

  ans = g_io_error_quark();

  _result = asRGQuark(ans);
#else
  error("g_io_error_quark exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_error_from_errno(USER_OBJECT_ s_err_no)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  gint err_no = ((gint)asCInteger(s_err_no));

  GIOErrorEnum ans;

  ans = g_io_error_from_errno(err_no);

  _result = asREnum(ans, G_TYPE_IO_ERROR_ENUM);
#else
  error("g_io_error_from_errno exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_module_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_io_module_get_type();

  _result = asRGType(ans);
#else
  error("g_io_module_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_module_new(USER_OBJECT_ s_filename)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const gchar* filename = ((const gchar*)asCString(s_filename));

  GIOModule* ans;

  ans = g_io_module_new(filename);

  _result = toRPointerWithFinalizer(ans, "GIOModule", (RPointerFinalizer) g_object_unref);
#else
  error("g_io_module_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_modules_load_all_in_directory(USER_OBJECT_ s_dirname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* dirname = ((const char*)asCString(s_dirname));

  GList* ans;

  ans = g_io_modules_load_all_in_directory(dirname);

  _result = asRGList(ans, "GModule");
    CLEANUP(g_list_free, ans);;
#else
  error("g_io_modules_load_all_in_directory exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_scheduler_cancel_all_jobs(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)


  g_io_scheduler_cancel_all_jobs();

#else
  error("g_io_scheduler_cancel_all_jobs exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_scheduler_job_send_to_mainloop(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSourceFunc func = ((GSourceFunc)S_GSourceFunc);
  R_CallbackData* user_data = R_createCBData(s_func, s_user_data);
  GIOSchedulerJob* object = ((GIOSchedulerJob*)getPtrValue(s_object));
  GDestroyNotify notify = ((GDestroyNotify)R_freeCBData);

  gboolean ans;

  ans = g_io_scheduler_job_send_to_mainloop(object, func, user_data, notify);

  _result = asRLogical(ans);
#else
  error("g_io_scheduler_job_send_to_mainloop exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_scheduler_job_send_to_mainloop_async(USER_OBJECT_ s_object, USER_OBJECT_ s_func, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSourceFunc func = ((GSourceFunc)S_GSourceFunc);
  R_CallbackData* user_data = R_createCBData(s_func, s_user_data);
  GIOSchedulerJob* object = ((GIOSchedulerJob*)getPtrValue(s_object));
  GDestroyNotify notify = ((GDestroyNotify)R_freeCBData);


  g_io_scheduler_job_send_to_mainloop_async(object, func, user_data, notify);

#else
  error("g_io_scheduler_job_send_to_mainloop_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_loadable_icon_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_loadable_icon_get_type();

  _result = asRGType(ans);
#else
  error("g_loadable_icon_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_loadable_icon_load(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  int size = ((int)asCInteger(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GInputStream* ans;
  char* type = NULL;
  GError* error = NULL;

  ans = g_loadable_icon_load(object, size, &type, cancellable, &error);

  _result = toRPointerWithRef(ans, "GInputStream");

  _result = retByVal(PROTECT(_result), "type", PROTECT(asRString(type)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_error_free, error);;
#else
  error("g_loadable_icon_load exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_loadable_icon_load_async(USER_OBJECT_ s_object, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  int size = ((int)asCInteger(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_loadable_icon_load_async(object, size, cancellable, callback, user_data);

#else
  error("g_loadable_icon_load_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_loadable_icon_load_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GLoadableIcon* object = G_LOADABLE_ICON(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));
  char** type = ((char**)asCStringArray(s_type));

  GInputStream* ans;
  GError* error = NULL;

  ans = g_loadable_icon_load_finish(object, res, type, &error);

  _result = toRPointerWithRef(ans, "GInputStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_loadable_icon_load_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_input_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_memory_input_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_memory_input_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_input_stream_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GInputStream* ans;

  ans = g_memory_input_stream_new();

  _result = toRPointerWithFinalizer(ans, "GInputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_memory_input_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_input_stream_new_from_data(USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gssize len = ((gssize)GET_LENGTH(s_data));
  GDestroyNotify destroy = ((GDestroyNotify)R_ReleaseObject);

  GInputStream* ans;

  ans = g_memory_input_stream_new_from_data(data, len, destroy);

  _result = toRPointerWithFinalizer(ans, "GInputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_memory_input_stream_new_from_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_input_stream_add_data(USER_OBJECT_ s_object, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMemoryInputStream* object = G_MEMORY_INPUT_STREAM(getPtrValue(s_object));
  const guchar* data = ((const guchar*)asCArray(s_data, guchar, asCRaw));
  gssize len = ((gssize)GET_LENGTH(s_data));
  GDestroyNotify destroy = ((GDestroyNotify)R_ReleaseObject);


  g_memory_input_stream_add_data(object, data, len, destroy);

#else
  error("g_memory_input_stream_add_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_memory_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_memory_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_output_stream_get_data(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMemoryOutputStream* object = G_MEMORY_OUTPUT_STREAM(getPtrValue(s_object));

  const guchar* ans;

  ans = g_memory_output_stream_get_data(object);

  _result = asRRawArray(ans);
#else
  error("g_memory_output_stream_get_data exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_output_stream_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMemoryOutputStream* object = G_MEMORY_OUTPUT_STREAM(getPtrValue(s_object));

  gsize ans;

  ans = g_memory_output_stream_get_size(object);

  _result = asRNumeric(ans);
#else
  error("g_memory_output_stream_get_size exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_mount_get_type();

  _result = asRGType(ans);
#else
  error("g_mount_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_root(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GFile* ans;

  ans = g_mount_get_root(object);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_mount_get_root exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  char* ans;

  ans = g_mount_get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_mount_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GIcon* ans;

  ans = g_mount_get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_mount_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_uuid(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  char* ans;

  ans = g_mount_get_uuid(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_mount_get_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_volume(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GVolume* ans;

  ans = g_mount_get_volume(object);

  _result = toRPointerWithFinalizer(ans, "GVolume", (RPointerFinalizer) g_object_unref);
#else
  error("g_mount_get_volume exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_get_drive(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  GDrive* ans;

  ans = g_mount_get_drive(object);

  _result = toRPointerWithFinalizer(ans, "GDrive", (RPointerFinalizer) g_object_unref);
#else
  error("g_mount_get_drive exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_can_unmount(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  gboolean ans;

  ans = g_mount_can_unmount(object);

  _result = asRLogical(ans);
#else
  error("g_mount_can_unmount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_can_eject(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  gboolean ans;

  ans = g_mount_can_eject(object);

  _result = asRLogical(ans);
#else
  error("g_mount_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_unmount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_unmount(object, flags, cancellable, callback, user_data);

#else
  error("g_mount_unmount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_unmount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_mount_unmount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_unmount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_eject(object, flags, cancellable, callback, user_data);

#else
  error("g_mount_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_mount_eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_remount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_remount(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_mount_remount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_remount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_mount_remount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_remount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_mount_operation_get_type();

  _result = asRGType(ans);
#else
  error("g_mount_operation_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GMountOperation* ans;

  ans = g_mount_operation_new();

  _result = toRPointerWithFinalizer(ans, "GMountOperation", (RPointerFinalizer) g_object_unref);
#else
  error("g_mount_operation_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_username(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  const char* ans;

  ans = g_mount_operation_get_username(object);

  _result = asRString(ans);
#else
  error("g_mount_operation_get_username exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_username(USER_OBJECT_ s_object, USER_OBJECT_ s_username)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  const char* username = ((const char*)asCString(s_username));


  g_mount_operation_set_username(object, username);

#else
  error("g_mount_operation_set_username exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_password(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  const char* ans;

  ans = g_mount_operation_get_password(object);

  _result = asRString(ans);
#else
  error("g_mount_operation_get_password exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_password(USER_OBJECT_ s_object, USER_OBJECT_ s_password)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  const char* password = ((const char*)asCString(s_password));


  g_mount_operation_set_password(object, password);

#else
  error("g_mount_operation_set_password exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_anonymous(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  gboolean ans;

  ans = g_mount_operation_get_anonymous(object);

  _result = asRLogical(ans);
#else
  error("g_mount_operation_get_anonymous exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_anonymous(USER_OBJECT_ s_object, USER_OBJECT_ s_anonymous)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  gboolean anonymous = ((gboolean)asCLogical(s_anonymous));


  g_mount_operation_set_anonymous(object, anonymous);

#else
  error("g_mount_operation_set_anonymous exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_domain(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  const char* ans;

  ans = g_mount_operation_get_domain(object);

  _result = asRString(ans);
#else
  error("g_mount_operation_get_domain exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_domain(USER_OBJECT_ s_object, USER_OBJECT_ s_domain)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  const char* domain = ((const char*)asCString(s_domain));


  g_mount_operation_set_domain(object, domain);

#else
  error("g_mount_operation_set_domain exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_password_save(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  GPasswordSave ans;

  ans = g_mount_operation_get_password_save(object);

  _result = asREnum(ans, G_TYPE_PASSWORD_SAVE);
#else
  error("g_mount_operation_get_password_save exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_password_save(USER_OBJECT_ s_object, USER_OBJECT_ s_save)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  GPasswordSave save = ((GPasswordSave)asCEnum(s_save, G_TYPE_PASSWORD_SAVE));


  g_mount_operation_set_password_save(object, save);

#else
  error("g_mount_operation_set_password_save exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_get_choice(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));

  int ans;

  ans = g_mount_operation_get_choice(object);

  _result = asRInteger(ans);
#else
  error("g_mount_operation_get_choice exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_set_choice(USER_OBJECT_ s_object, USER_OBJECT_ s_choice)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  int choice = ((int)asCInteger(s_choice));


  g_mount_operation_set_choice(object, choice);

#else
  error("g_mount_operation_set_choice exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_operation_reply(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMountOperation* object = G_MOUNT_OPERATION(getPtrValue(s_object));
  GMountOperationResult result = ((GMountOperationResult)asCEnum(s_result, G_TYPE_MOUNT_OPERATION_RESULT));


  g_mount_operation_reply(object, result);

#else
  error("g_mount_operation_reply exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_native_volume_monitor_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_native_volume_monitor_get_type();

  _result = asRGType(ans);
#else
  error("g_native_volume_monitor_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_output_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_output_stream_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_write(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  const guchar* buffer = ((const guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buffer));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_output_stream_write(object, buffer, count, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_write exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_write_all(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_bytes_written, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  const guchar* buffer = ((const guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buffer));
  gsize* bytes_written = ((gsize*)asCArray(s_bytes_written, gsize, asCNumeric));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_write_all(object, buffer, count, bytes_written, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_write_all exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_splice(USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GInputStream* source = G_INPUT_STREAM(getPtrValue(s_source));
  GOutputStreamSpliceFlags flags = ((GOutputStreamSpliceFlags)asCFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_output_stream_splice(object, source, flags, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_splice exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_flush(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_flush(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_flush exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_close(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_close exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_write_async(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  const guchar* buffer = ((const guchar*)asCArray(s_buffer, guchar, asCRaw));
  gsize count = ((gsize)GET_LENGTH(s_buffer));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_output_stream_write_async(object, buffer, count, io_priority, cancellable, callback, user_data);

#else
  error("g_output_stream_write_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_write_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = g_output_stream_write_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_write_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_splice_async(USER_OBJECT_ s_object, USER_OBJECT_ s_source, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GInputStream* source = G_INPUT_STREAM(getPtrValue(s_source));
  GOutputStreamSpliceFlags flags = ((GOutputStreamSpliceFlags)asCFlag(s_flags, G_TYPE_OUTPUT_STREAM_SPLICE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_output_stream_splice_async(object, source, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_output_stream_splice_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_splice_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gssize ans;
  GError* error = NULL;

  ans = g_output_stream_splice_finish(object, result, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_splice_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_flush_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_output_stream_flush_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_output_stream_flush_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_flush_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_flush_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_flush_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_output_stream_close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_output_stream_close_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_close_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_is_closed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_output_stream_is_closed(object);

  _result = asRLogical(ans);
#else
  error("g_output_stream_is_closed exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_has_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_output_stream_has_pending(object);

  _result = asRLogical(ans);
#else
  error("g_output_stream_has_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_set_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_output_stream_set_pending(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_output_stream_set_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_output_stream_clear_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GOutputStream* object = G_OUTPUT_STREAM(getPtrValue(s_object));


  g_output_stream_clear_pending(object);

#else
  error("g_output_stream_clear_pending exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_seekable_get_type();

  _result = asRGType(ans);
#else
  error("g_seekable_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_tell(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  goffset ans;

  ans = g_seekable_tell(object);

  _result = asRNumeric(ans);
#else
  error("g_seekable_tell exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_can_seek(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  gboolean ans;

  ans = g_seekable_can_seek(object);

  _result = asRLogical(ans);
#else
  error("g_seekable_can_seek exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_seek(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_type, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));
  goffset offset = ((goffset)asCNumeric(s_offset));
  GSeekType type = ((GSeekType)asCEnum(s_type, G_TYPE_SEEK_TYPE));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_seekable_seek(object, offset, type, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_seekable_seek exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_can_truncate(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));

  gboolean ans;

  ans = g_seekable_can_truncate(object);

  _result = asRLogical(ans);
#else
  error("g_seekable_can_truncate exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_seekable_truncate(USER_OBJECT_ s_object, USER_OBJECT_ s_offset, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSeekable* object = G_SEEKABLE(getPtrValue(s_object));
  goffset offset = ((goffset)asCNumeric(s_offset));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_seekable_truncate(object, offset, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_seekable_truncate exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_simple_async_result_get_type();

  _result = asRGType(ans);
#else
  error("g_simple_async_result_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_new(USER_OBJECT_ s_source_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data, USER_OBJECT_ s_source_tag)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GObject* source_object = G_OBJECT(getPtrValue(s_source_object));
  gpointer source_tag = ((gpointer)asCGenericData(s_source_tag));

  GSimpleAsyncResult* ans;

  ans = g_simple_async_result_new(source_object, callback, user_data, source_tag);

  _result = toRPointerWithFinalizer(ans, "GSimpleAsyncResult", (RPointerFinalizer) g_object_unref);
#else
  error("g_simple_async_result_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_new_from_error(USER_OBJECT_ s_source_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GObject* source_object = G_OBJECT(getPtrValue(s_source_object));

  GSimpleAsyncResult* ans;
  GError* error = ((GError *)g_new0(GError, 1));

  ans = g_simple_async_result_new_from_error(source_object, callback, user_data, error);

  _result = toRPointerWithFinalizer(ans, "GSimpleAsyncResult", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_simple_async_result_new_from_error exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_set_op_res_gpointer(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));
  gpointer op_res = ((gpointer)asCGenericData(s_op_res));
  GDestroyNotify destroy_op_res = ((GDestroyNotify)R_ReleaseObject);


  g_simple_async_result_set_op_res_gpointer(object, op_res, destroy_op_res);

#else
  error("g_simple_async_result_set_op_res_gpointer exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_get_op_res_gpointer(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  gpointer ans;

  ans = g_simple_async_result_get_op_res_gpointer(object);

  _result = ans;
#else
  error("g_simple_async_result_get_op_res_gpointer exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_set_op_res_gssize(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));
  gssize op_res = ((gssize)asCInteger(s_op_res));


  g_simple_async_result_set_op_res_gssize(object, op_res);

#else
  error("g_simple_async_result_set_op_res_gssize exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_get_op_res_gssize(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  gssize ans;

  ans = g_simple_async_result_get_op_res_gssize(object);

  _result = asRInteger(ans);
#else
  error("g_simple_async_result_get_op_res_gssize exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_set_op_res_gboolean(USER_OBJECT_ s_object, USER_OBJECT_ s_op_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));
  gboolean op_res = ((gboolean)asCLogical(s_op_res));


  g_simple_async_result_set_op_res_gboolean(object, op_res);

#else
  error("g_simple_async_result_set_op_res_gboolean exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_get_op_res_gboolean(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  gboolean ans;

  ans = g_simple_async_result_get_op_res_gboolean(object);

  _result = asRLogical(ans);
#else
  error("g_simple_async_result_get_op_res_gboolean exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_get_source_tag(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  gpointer ans;

  ans = g_simple_async_result_get_source_tag(object);

  _result = ans;
#else
  error("g_simple_async_result_get_source_tag exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_set_handle_cancellation(USER_OBJECT_ s_object, USER_OBJECT_ s_handle_cancellation)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));
  gboolean handle_cancellation = ((gboolean)asCLogical(s_handle_cancellation));


  g_simple_async_result_set_handle_cancellation(object, handle_cancellation);

#else
  error("g_simple_async_result_set_handle_cancellation exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_complete(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));


  g_simple_async_result_complete(object);

#else
  error("g_simple_async_result_complete exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_complete_in_idle(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));


  g_simple_async_result_complete_in_idle(object);

#else
  error("g_simple_async_result_complete_in_idle exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_set_from_error(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  GError* error = ((GError *)g_new0(GError, 1));

  g_simple_async_result_set_from_error(object, error);


  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_simple_async_result_set_from_error exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_result_propagate_error(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));

  gboolean ans;
  GError* dest = NULL;

  ans = g_simple_async_result_propagate_error(object, &dest);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "dest", PROTECT(asRGError(dest)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, dest);;
#else
  error("g_simple_async_result_propagate_error exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_simple_async_report_gerror_in_idle(USER_OBJECT_ s_object, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GObject* object = G_OBJECT(getPtrValue(s_object));

  GError* error = ((GError *)g_new0(GError, 1));

  g_simple_async_report_gerror_in_idle(object, callback, user_data, error);


  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_simple_async_report_gerror_in_idle exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_themed_icon_get_type();

  _result = asRGType(ans);
#else
  error("g_themed_icon_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_new(USER_OBJECT_ s_iconname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char * prop_names[] = { "name", NULL };
  USER_OBJECT_ args[] = { s_iconname };

  GIcon* ans;

  ans = propertyConstructor(G_TYPE_THEMED_ICON, prop_names, args, 1);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_themed_icon_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_new_with_default_fallbacks(USER_OBJECT_ s_iconname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* iconname = ((const char*)asCString(s_iconname));

  GIcon* ans;

  ans = g_themed_icon_new_with_default_fallbacks(iconname);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_themed_icon_new_with_default_fallbacks exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_new_from_names(USER_OBJECT_ s_iconnames, USER_OBJECT_ s_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  char** iconnames = ((char**)asCStringArray(s_iconnames));
  int len = ((int)asCInteger(s_len));

  GIcon* ans;

  ans = g_themed_icon_new_from_names(iconnames, len);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_themed_icon_new_from_names exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_get_names(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GThemedIcon* object = G_THEMED_ICON(getPtrValue(s_object));

  const gchar* const* ans;

  ans = g_themed_icon_get_names(object);

  _result = asRStringArray(ans);
#else
  error("g_themed_icon_get_names exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_append_name(USER_OBJECT_ s_object, USER_OBJECT_ s_iconname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GThemedIcon* object = G_THEMED_ICON(getPtrValue(s_object));
  char* iconname = ((char*)asCString(s_iconname));


  g_themed_icon_append_name(object, iconname);

#else
  error("g_themed_icon_append_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_vfs_get_type();

  _result = asRGType(ans);
#else
  error("g_vfs_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_is_active(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfs* object = G_VFS(getPtrValue(s_object));

  gboolean ans;

  ans = g_vfs_is_active(object);

  _result = asRLogical(ans);
#else
  error("g_vfs_is_active exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_file_for_path(USER_OBJECT_ s_object, USER_OBJECT_ s_path)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* path = ((const char*)asCString(s_path));

  GFile* ans;

  ans = g_vfs_get_file_for_path(object, path);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_vfs_get_file_for_path exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_file_for_uri(USER_OBJECT_ s_object, USER_OBJECT_ s_uri)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* uri = ((const char*)asCString(s_uri));

  GFile* ans;

  ans = g_vfs_get_file_for_uri(object, uri);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_vfs_get_file_for_uri exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_parse_name(USER_OBJECT_ s_object, USER_OBJECT_ s_parse_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfs* object = G_VFS(getPtrValue(s_object));
  const char* parse_name = ((const char*)asCString(s_parse_name));

  GFile* ans;

  ans = g_vfs_parse_name(object, parse_name);

  _result = toRPointerWithFinalizer(ans, "GFile", (RPointerFinalizer) g_object_unref);
#else
  error("g_vfs_parse_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GVfs* ans;

  ans = g_vfs_get_default();

  _result = toRPointerWithRef(ans, "GVfs");
#else
  error("g_vfs_get_default exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_local(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GVfs* ans;

  ans = g_vfs_get_local();

  _result = toRPointerWithRef(ans, "GVfs");
#else
  error("g_vfs_get_local exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_vfs_get_supported_uri_schemes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVfs* object = G_VFS(getPtrValue(s_object));

  const char* const* ans;

  ans = g_vfs_get_supported_uri_schemes(object);

  _result = asRStringArray(ans);
#else
  error("g_vfs_get_supported_uri_schemes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_volume_get_type();

  _result = asRGType(ans);
#else
  error("g_volume_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char* ans;

  ans = g_volume_get_name(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_volume_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GIcon* ans;

  ans = g_volume_get_icon(object);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_volume_get_icon exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_uuid(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char* ans;

  ans = g_volume_get_uuid(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_volume_get_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_drive(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GDrive* ans;

  ans = g_volume_get_drive(object);

  _result = toRPointerWithFinalizer(ans, "GDrive", (RPointerFinalizer) g_object_unref);
#else
  error("g_volume_get_drive exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_mount(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GMount* ans;

  ans = g_volume_get_mount(object);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);
#else
  error("g_volume_get_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_can_mount(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = g_volume_can_mount(object);

  _result = asRLogical(ans);
#else
  error("g_volume_can_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_can_eject(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = g_volume_can_eject(object);

  _result = asRLogical(ans);
#else
  error("g_volume_can_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_should_automount(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  gboolean ans;

  ans = g_volume_should_automount(object);

  _result = asRLogical(ans);
#else
  error("g_volume_should_automount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_mount(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountMountFlags flags = ((GMountMountFlags)asCFlag(s_flags, G_TYPE_MOUNT_MOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_volume_mount(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_volume_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_mount_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_volume_mount_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_volume_mount_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_eject(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_volume_eject(object, flags, cancellable, callback, user_data);

#else
  error("g_volume_eject exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_eject_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_volume_eject_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_volume_eject_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GType ans;

  ans = g_volume_monitor_get_type();

  _result = asRGType(ans);
#else
  error("g_volume_monitor_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)

  GVolumeMonitor* ans;

  ans = g_volume_monitor_get();

  _result = toRPointerWithRef(ans, "GVolumeMonitor");
#else
  error("g_volume_monitor_get exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_connected_drives(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = g_volume_monitor_get_connected_drives(object);

  _result = asRGListWithRef(ans, "GDrive");
    CLEANUP(g_list_free, ans);;
#else
  error("g_volume_monitor_get_connected_drives exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_volumes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = g_volume_monitor_get_volumes(object);

  _result = asRGListWithRef(ans, "GVolume");
    CLEANUP(g_list_free, ans);;
#else
  error("g_volume_monitor_get_volumes exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_mounts(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));

  GList* ans;

  ans = g_volume_monitor_get_mounts(object);

  _result = asRGListWithRef(ans, "GMount");
    CLEANUP(g_list_free, ans);;
#else
  error("g_volume_monitor_get_mounts exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_volume_for_uuid(USER_OBJECT_ s_object, USER_OBJECT_ s_uuid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));
  const char* uuid = ((const char*)asCString(s_uuid));

  GVolume* ans;

  ans = g_volume_monitor_get_volume_for_uuid(object, uuid);

  _result = toRPointerWithFinalizer(ans, "GVolume", (RPointerFinalizer) g_object_unref);
#else
  error("g_volume_monitor_get_volume_for_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_get_mount_for_uuid(USER_OBJECT_ s_object, USER_OBJECT_ s_uuid)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GVolumeMonitor* object = G_VOLUME_MONITOR(getPtrValue(s_object));
  const char* uuid = ((const char*)asCString(s_uuid));

  GMount* ans;

  ans = g_volume_monitor_get_mount_for_uuid(object, uuid);

  _result = toRPointerWithFinalizer(ans, "GMount", (RPointerFinalizer) g_object_unref);
#else
  error("g_volume_monitor_get_mount_for_uuid exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_monitor_adopt_orphan_mount(USER_OBJECT_ s_mount)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GMount* mount = G_MOUNT(getPtrValue(s_mount));

  GVolume* ans;

  ans = g_volume_monitor_adopt_orphan_mount(mount);

  _result = toRPointerWithRef(ans, "GVolume");
#else
  error("g_volume_monitor_adopt_orphan_mount exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_register(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* name = ((const char*)asCString(s_name));

  GIOExtensionPoint* ans;

  ans = g_io_extension_point_register(name);

  _result = toRPointer(ans, "GIOExtensionPoint");
#else
  error("g_io_extension_point_register exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_lookup(USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* name = ((const char*)asCString(s_name));

  GIOExtensionPoint* ans;

  ans = g_io_extension_point_lookup(name);

  _result = toRPointer(ans, "GIOExtensionPoint");
#else
  error("g_io_extension_point_lookup exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_set_required_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtensionPoint* object = ((GIOExtensionPoint*)getPtrValue(s_object));
  GType type = ((GType)asCGType(s_type));


  g_io_extension_point_set_required_type(object, type);

#else
  error("g_io_extension_point_set_required_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_get_required_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtensionPoint* object = ((GIOExtensionPoint*)getPtrValue(s_object));

  GType ans;

  ans = g_io_extension_point_get_required_type(object);

  _result = asRGType(ans);
#else
  error("g_io_extension_point_get_required_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_get_extensions(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtensionPoint* object = ((GIOExtensionPoint*)getPtrValue(s_object));

  GList* ans;

  ans = g_io_extension_point_get_extensions(object);

  _result = asRGList(ans, "GIOExtension");
#else
  error("g_io_extension_point_get_extensions exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_get_extension_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_name)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtensionPoint* object = ((GIOExtensionPoint*)getPtrValue(s_object));
  const char* name = ((const char*)asCString(s_name));

  GIOExtension* ans;

  ans = g_io_extension_point_get_extension_by_name(object, name);

  _result = toRPointer(ans, "GIOExtension");
#else
  error("g_io_extension_point_get_extension_by_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_point_implement(USER_OBJECT_ s_extension_point_name, USER_OBJECT_ s_type, USER_OBJECT_ s_extension_name, USER_OBJECT_ s_priority)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  const char* extension_point_name = ((const char*)asCString(s_extension_point_name));
  GType type = ((GType)asCGType(s_type));
  const char* extension_name = ((const char*)asCString(s_extension_name));
  gint priority = ((gint)asCInteger(s_priority));

  GIOExtension* ans;

  ans = g_io_extension_point_implement(extension_point_name, type, extension_name, priority);

  _result = toRPointer(ans, "GIOExtension");
#else
  error("g_io_extension_point_implement exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_get_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtension* object = ((GIOExtension*)getPtrValue(s_object));

  GType ans;

  ans = g_io_extension_get_type(object);

  _result = asRGType(ans);
#else
  error("g_io_extension_get_type exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_get_name(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtension* object = ((GIOExtension*)getPtrValue(s_object));

  const char* ans;

  ans = g_io_extension_get_name(object);

  _result = asRString(ans);
#else
  error("g_io_extension_get_name exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_get_priority(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtension* object = ((GIOExtension*)getPtrValue(s_object));

  gint ans;

  ans = g_io_extension_get_priority(object);

  _result = asRInteger(ans);
#else
  error("g_io_extension_get_priority exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_extension_ref_class(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GIOExtension* object = ((GIOExtension*)getPtrValue(s_object));

  GTypeClass* ans;

  ans = g_io_extension_ref_class(object);

  _result = toRPointer(ans, "GTypeClass");
#else
  error("g_io_extension_ref_class exists only in gio >= 2.16.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_from_mime_type(USER_OBJECT_ s_mime_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  const char* mime_type = ((const char*)asCString(s_mime_type));

  char* ans;

  ans = g_content_type_from_mime_type(mime_type);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_content_type_from_mime_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_content_type_guess_for_tree(USER_OBJECT_ s_root)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GFile* root = G_FILE(getPtrValue(s_root));

  char** ans;

  ans = g_content_type_guess_for_tree(root);

  _result = asRStringArray(ans);
#else
  error("g_content_type_guess_for_tree exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblemed_icon_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)

  GType ans;

  ans = g_emblemed_icon_get_type();

  _result = asRGType(ans);
#else
  error("g_emblemed_icon_get_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblemed_icon_new(USER_OBJECT_ s_icon, USER_OBJECT_ s_emblem)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GIcon* icon = G_ICON(getPtrValue(s_icon));
  GEmblem* emblem = G_EMBLEM(getPtrValue(s_emblem));

  GIcon* ans;

  ans = g_emblemed_icon_new(icon, emblem);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);
#else
  error("g_emblemed_icon_new exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblemed_icon_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GEmblemedIcon* object = G_EMBLEMED_ICON(getPtrValue(s_object));

  GIcon* ans;

  ans = g_emblemed_icon_get_icon(object);

  _result = toRPointerWithRef(ans, "GIcon");
#else
  error("g_emblemed_icon_get_icon exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblemed_icon_get_emblems(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GEmblemedIcon* object = G_EMBLEMED_ICON(getPtrValue(s_object));

  GList* ans;

  ans = g_emblemed_icon_get_emblems(object);

  _result = asRGListWithRef(ans, "GEmblem");
#else
  error("g_emblemed_icon_get_emblems exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblemed_icon_add_emblem(USER_OBJECT_ s_object, USER_OBJECT_ s_emblem)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GEmblemedIcon* object = G_EMBLEMED_ICON(getPtrValue(s_object));
  GEmblem* emblem = G_EMBLEM(getPtrValue(s_emblem));


  g_emblemed_icon_add_emblem(object, emblem);

#else
  error("g_emblemed_icon_add_emblem exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblem_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)

  GType ans;

  ans = g_emblem_get_type();

  _result = asRGType(ans);
#else
  error("g_emblem_get_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblem_new(USER_OBJECT_ s_icon, USER_OBJECT_ s_origin)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  char * prop_names[] = { "icon", "origin", NULL };
  USER_OBJECT_ args[] = { s_icon, s_origin };

  GEmblem* ans;

  ans = propertyConstructor(G_TYPE_EMBLEM, prop_names, args, 2);

  _result = toRPointerWithFinalizer(ans, "GEmblem", (RPointerFinalizer) g_object_unref);
#else
  error("g_emblem_new exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblem_new_with_origin(USER_OBJECT_ s_icon, USER_OBJECT_ s_origin)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GIcon* icon = G_ICON(getPtrValue(s_icon));
  GEmblemOrigin origin = ((GEmblemOrigin)asCEnum(s_origin, G_TYPE_EMBLEM_ORIGIN));

  GEmblem* ans;

  ans = g_emblem_new_with_origin(icon, origin);

  _result = toRPointerWithFinalizer(ans, "GEmblem", (RPointerFinalizer) g_object_unref);
#else
  error("g_emblem_new_with_origin exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblem_get_icon(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GEmblem* object = G_EMBLEM(getPtrValue(s_object));

  GIcon* ans;

  ans = g_emblem_get_icon(object);

  _result = toRPointerWithRef(ans, "GIcon");
#else
  error("g_emblem_get_icon exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_emblem_get_origin(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GEmblem* object = G_EMBLEM(getPtrValue(s_object));

  GEmblemOrigin ans;

  ans = g_emblem_get_origin(object);

  _result = asREnum(ans, G_TYPE_EMBLEM_ORIGIN);
#else
  error("g_emblem_get_origin exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_query_file_type(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileQueryInfoFlags flags = ((GFileQueryInfoFlags)asCFlag(s_flags, G_TYPE_FILE_QUERY_INFO_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileType ans;

  ans = g_file_query_file_type(object, flags, cancellable);

  _result = asREnum(ans, G_TYPE_FILE_TYPE);
#else
  error("g_file_query_file_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_make_directory_with_parents(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_make_directory_with_parents(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_make_directory_with_parents exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_monitor(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileMonitorFlags flags = ((GFileMonitorFlags)asCFlag(s_flags, G_TYPE_FILE_MONITOR_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileMonitor* ans;
  GError* error = NULL;

  ans = g_file_monitor(object, flags, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileMonitor");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_monitor exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_memory_output_stream_get_data_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GMemoryOutputStream* object = G_MEMORY_OUTPUT_STREAM(getPtrValue(s_object));

  gsize ans;

  ans = g_memory_output_stream_get_data_size(object);

  _result = asRNumeric(ans);
#else
  error("g_memory_output_stream_get_data_size exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_guess_content_type(USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  gboolean force_rescan = ((gboolean)asCLogical(s_force_rescan));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_guess_content_type(object, force_rescan, cancellable, callback, user_data);

#else
  error("g_mount_guess_content_type exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_guess_content_type_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gchar** ans;
  GError* error = NULL;

  ans = g_mount_guess_content_type_finish(object, result, &error);

  _result = asRStringArray(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_guess_content_type_finish exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_guess_content_type_sync(USER_OBJECT_ s_object, USER_OBJECT_ s_force_rescan, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  gboolean force_rescan = ((gboolean)asCLogical(s_force_rescan));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gchar** ans;
  GError* error = NULL;

  ans = g_mount_guess_content_type_sync(object, force_rescan, cancellable, &error);

  _result = asRStringArray(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_guess_content_type_sync exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_themed_icon_prepend_name(USER_OBJECT_ s_object, USER_OBJECT_ s_iconname)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GThemedIcon* object = G_THEMED_ICON(getPtrValue(s_object));
  const char* iconname = ((const char*)asCString(s_iconname));


  g_themed_icon_prepend_name(object, iconname);

#else
  error("g_themed_icon_prepend_name exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_identifier(USER_OBJECT_ s_object, USER_OBJECT_ s_kind)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  const char* kind = ((const char*)asCString(s_kind));

  char* ans;

  ans = g_volume_get_identifier(object, kind);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_volume_get_identifier exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_enumerate_identifiers(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  char** ans;

  ans = g_volume_enumerate_identifiers(object);

  _result = asRStringArray(ans);
#else
  error("g_volume_enumerate_identifiers exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_get_activation_root(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));

  GFile* ans;

  ans = g_volume_get_activation_root(object);

  _result = toRPointerWithRef(ans, "GFile");
#else
  error("g_volume_get_activation_root exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_enumerator_get_container(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 18, 0)
  GFileEnumerator* object = G_FILE_ENUMERATOR(getPtrValue(s_object));

  GFile* ans;

  ans = g_file_enumerator_get_container(object);

  _result = toRPointerWithRef(ans, "GFile");
#else
  error("g_file_enumerator_get_container exists only in gio >= 2.18.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_reset_type_associations(USER_OBJECT_ s_content_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  const char* content_type = ((const char*)asCString(s_content_type));


  g_app_info_reset_type_associations(content_type);

#else
  error("g_app_info_reset_type_associations exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_can_delete(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_can_delete(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_can_delete exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_delete(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  gboolean ans;

  ans = g_app_info_delete(object);

  _result = asRLogical(ans);
#else
  error("g_app_info_delete exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_app_info_get_commandline(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAppInfo* object = G_APP_INFO(getPtrValue(s_object));

  const char* ans;

  ans = g_app_info_get_commandline(object);

  _result = asRString(ans);
#else
  error("g_app_info_get_commandline exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_until_async(USER_OBJECT_ s_object, USER_OBJECT_ s_stop_chars, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  const gchar* stop_chars = ((const gchar*)asCString(s_stop_chars));
  gint io_priority = ((gint)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_data_input_stream_read_until_async(object, stop_chars, io_priority, cancellable, callback, user_data);

#else
  error("g_data_input_stream_read_until_async exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_until_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result, USER_OBJECT_ s_length)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));
  gsize* length = ((gsize*)asCArray(s_length, gsize, asCNumeric));

  char* ans;
  GError* error = NULL;

  ans = g_data_input_stream_read_until_finish(object, result, length, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_until_finish exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_line_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  gint io_priority = ((gint)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_data_input_stream_read_line_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_data_input_stream_read_line_async exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_data_input_stream_read_line_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GDataInputStream* object = G_DATA_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  char* ans;
  gsize length;
  GError* error = NULL;

  ans = g_data_input_stream_read_line_finish(object, result, &length, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "length", PROTECT(asRNumeric(length)), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
    CLEANUP(g_free, ans);;
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_data_input_stream_read_line_finish exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_icon_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GIcon* object = G_ICON(getPtrValue(s_object));

  gchar* ans;

  ans = g_icon_to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_icon_to_string exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_icon_new_for_string(USER_OBJECT_ s_str)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  const gchar* str = ((const gchar*)asCString(s_str));

  GIcon* ans;
  GError* error = NULL;

  ans = g_icon_new_for_string(str, &error);

  _result = toRPointerWithFinalizer(ans, "GIcon", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_icon_new_for_string exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_is_shadowed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));

  gboolean ans;

  ans = g_mount_is_shadowed(object);

  _result = asRLogical(ans);
#else
  error("g_mount_is_shadowed exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_shadow(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));


  g_mount_shadow(object);

#else
  error("g_mount_shadow exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_unshadow(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));


  g_mount_unshadow(object);

#else
  error("g_mount_unshadow exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_input_stream_get_close_base_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GFilterInputStream* object = G_FILTER_INPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_filter_input_stream_get_close_base_stream(object);

  _result = asRLogical(ans);
#else
  error("g_filter_input_stream_get_close_base_stream exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_input_stream_set_close_base_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_close_base)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GFilterInputStream* object = G_FILTER_INPUT_STREAM(getPtrValue(s_object));
  gboolean close_base = ((gboolean)asCLogical(s_close_base));


  g_filter_input_stream_set_close_base_stream(object, close_base);

#else
  error("g_filter_input_stream_set_close_base_stream exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_output_stream_get_close_base_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GFilterOutputStream* object = G_FILTER_OUTPUT_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_filter_output_stream_get_close_base_stream(object);

  _result = asRLogical(ans);
#else
  error("g_filter_output_stream_get_close_base_stream exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_filter_output_stream_set_close_base_stream(USER_OBJECT_ s_object, USER_OBJECT_ s_close_base)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 20, 0)
  GFilterOutputStream* object = G_FILTER_OUTPUT_STREAM(getPtrValue(s_object));
  gboolean close_base = ((gboolean)asCLogical(s_close_base));


  g_filter_output_stream_set_close_base_stream(object, close_base);

#else
  error("g_filter_output_stream_set_close_base_stream exists only in gio >= 2.20.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_initable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_async_initable_get_type();

  _result = asRGType(ans);
#else
  error("g_async_initable_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_initable_init_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GAsyncInitable* object = G_ASYNC_INITABLE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_async_initable_init_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_async_initable_init_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_initable_init_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncInitable* object = G_ASYNC_INITABLE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  gboolean ans;
  GError* error = NULL;

  ans = g_async_initable_init_finish(object, res, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_async_initable_init_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_async_initable_new_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncInitable* object = G_ASYNC_INITABLE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GObject* ans;
  GError* error = NULL;

  ans = g_async_initable_new_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GObject");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_async_initable_new_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_disconnect(USER_OBJECT_ s_object, USER_OBJECT_ s_handler_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));
  gulong handler_id = ((gulong)asCNumeric(s_handler_id));


  g_cancellable_disconnect(object, handler_id);

#else
  error("g_cancellable_disconnect exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_cancellable_release_fd(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GCancellable* object = G_CANCELLABLE(getPtrValue(s_object));


  g_cancellable_release_fd(object);

#else
  error("g_cancellable_release_fd exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_can_start(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_can_start(object);

  _result = asRLogical(ans);
#else
  error("g_drive_can_start exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_can_start_degraded(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_can_start_degraded(object);

  _result = asRLogical(ans);
#else
  error("g_drive_can_start_degraded exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_can_stop(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  gboolean ans;

  ans = g_drive_can_stop(object);

  _result = asRLogical(ans);
#else
  error("g_drive_can_stop exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_drive_eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_drive_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_drive_eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_drive_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_get_start_stop_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));

  GDriveStartStopType ans;

  ans = g_drive_get_start_stop_type(object);

  _result = asREnum(ans, G_TYPE_DRIVE_START_STOP_TYPE);
#else
  error("g_drive_get_start_stop_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_start(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GDriveStartFlags flags = ((GDriveStartFlags)asCEnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_drive_start(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_drive_start exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_start_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_drive_start_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_drive_start_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_stop(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_drive_stop(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_drive_stop exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_drive_stop_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GDrive* object = G_DRIVE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_drive_stop_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_drive_stop_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_create_readwrite(object, flags, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_create_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_create_readwrite_async(object, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_create_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_create_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_create_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_create_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_eject_mountable_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_eject_mountable_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_file_eject_mountable_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_eject_mountable_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_eject_mountable_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_eject_mountable_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_open_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_open_readwrite(object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_open_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_open_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_open_readwrite_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_file_open_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_open_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_open_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_open_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_poll_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_poll_mountable(object, cancellable, callback, user_data);

#else
  error("g_file_poll_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_poll_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_poll_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_poll_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_readwrite(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_replace_readwrite(object, etag, make_backup, flags, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace_readwrite exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_readwrite_async(USER_OBJECT_ s_object, USER_OBJECT_ s_etag, USER_OBJECT_ s_make_backup, USER_OBJECT_ s_flags, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  const char* etag = ((const char*)asCString(s_etag));
  gboolean make_backup = ((gboolean)asCLogical(s_make_backup));
  GFileCreateFlags flags = ((GFileCreateFlags)asCFlag(s_flags, G_TYPE_FILE_CREATE_FLAGS));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_replace_readwrite_async(object, etag, make_backup, flags, io_priority, cancellable, callback, user_data);

#else
  error("g_file_replace_readwrite_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_replace_readwrite_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_res)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* res = G_ASYNC_RESULT(getPtrValue(s_res));

  GFileIOStream* ans;
  GError* error = NULL;

  ans = g_file_replace_readwrite_finish(object, res, &error);

  _result = toRPointerWithRef(ans, "GFileIOStream");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_replace_readwrite_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_start_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_start_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GDriveStartFlags flags = ((GDriveStartFlags)asCEnum(s_flags, G_TYPE_DRIVE_START_FLAGS));
  GMountOperation* start_operation = G_MOUNT_OPERATION(getPtrValue(s_start_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_start_mountable(object, flags, start_operation, cancellable, callback, user_data);

#else
  error("g_file_start_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_start_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_start_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_start_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_stop_mountable(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_stop_mountable(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_file_stop_mountable exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_stop_mountable_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_stop_mountable_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_stop_mountable_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_supports_thread_contexts(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));

  gboolean ans;

  ans = g_file_supports_thread_contexts(object);

  _result = asRLogical(ans);
#else
  error("g_file_supports_thread_contexts exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_unmount_mountable_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFile* object = G_FILE(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_unmount_mountable_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_file_unmount_mountable_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_unmount_mountable_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFile* object = G_FILE(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_file_unmount_mountable_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_unmount_mountable_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_has_namespace(USER_OBJECT_ s_object, USER_OBJECT_ s_name_space)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* name_space = ((const char*)asCString(s_name_space));

  gboolean ans;

  ans = g_file_info_has_namespace(object, name_space);

  _result = asRLogical(ans);
#else
  error("g_file_info_has_namespace exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_status(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_status)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  GFileAttributeStatus status = ((GFileAttributeStatus)asCEnum(s_status, G_TYPE_FILE_ATTRIBUTE_STATUS));

  gboolean ans;

  ans = g_file_info_set_attribute_status(object, attribute, status);

  _result = asRLogical(ans);
#else
  error("g_file_info_set_attribute_status exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_get_attribute_stringv(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));

  char** ans;

  ans = g_file_info_get_attribute_stringv(object, attribute);

  _result = asRStringArray(ans);
#else
  error("g_file_info_get_attribute_stringv exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_info_set_attribute_stringv(USER_OBJECT_ s_object, USER_OBJECT_ s_attribute, USER_OBJECT_ s_attr_value)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileInfo* object = G_FILE_INFO(getPtrValue(s_object));
  const char* attribute = ((const char*)asCString(s_attribute));
  char** attr_value = ((char**)asCStringArray(s_attr_value));


  g_file_info_set_attribute_stringv(object, attribute, attr_value);

#else
  error("g_file_info_set_attribute_stringv exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_io_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_file_io_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_file_io_stream_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_io_stream_query_info(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_io_stream_query_info(object, attributes, cancellable, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_io_stream_query_info exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_io_stream_query_info_async(USER_OBJECT_ s_object, USER_OBJECT_ s_attributes, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  const char* attributes = ((const char*)asCString(s_attributes));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_file_io_stream_query_info_async(object, attributes, io_priority, cancellable, callback, user_data);

#else
  error("g_file_io_stream_query_info_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_io_stream_query_info_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GFileInfo* ans;
  GError* error = NULL;

  ans = g_file_io_stream_query_info_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GFileInfo");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_file_io_stream_query_info_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_file_io_stream_get_etag(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GFileIOStream* object = G_FILE_IO_STREAM(getPtrValue(s_object));

  char* ans;

  ans = g_file_io_stream_get_etag(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_file_io_stream_get_etag exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_inet_address_get_type();

  _result = asRGType(ans);
#else
  error("g_inet_address_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_new_from_string(USER_OBJECT_ s_string)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const gchar* string = ((const gchar*)asCString(s_string));

  GInetAddress* ans;

  ans = g_inet_address_new_from_string(string);

  _result = toRPointerWithRef(ans, "GInetAddress");
#else
  error("g_inet_address_new_from_string exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_new_from_bytes(USER_OBJECT_ s_bytes, USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const guint8* bytes = ((const guint8*)asCArray(s_bytes, guint8, asCRaw));
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));

  GInetAddress* ans;

  ans = g_inet_address_new_from_bytes(bytes, family);

  _result = toRPointerWithRef(ans, "GInetAddress");
#else
  error("g_inet_address_new_from_bytes exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_new_loopback(USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));

  GInetAddress* ans;

  ans = g_inet_address_new_loopback(family);

  _result = toRPointerWithRef(ans, "GInetAddress");
#else
  error("g_inet_address_new_loopback exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_new_any(USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));

  GInetAddress* ans;

  ans = g_inet_address_new_any(family);

  _result = toRPointerWithRef(ans, "GInetAddress");
#else
  error("g_inet_address_new_any exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_to_string(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gchar* ans;

  ans = g_inet_address_to_string(object);

  _result = asRString(ans);
    CLEANUP(g_free, ans);;
#else
  error("g_inet_address_to_string exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_to_bytes(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  const guint8* ans;

  ans = g_inet_address_to_bytes(object);

  _result = asRRawArray(ans);
#else
  error("g_inet_address_to_bytes exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_native_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gsize ans;

  ans = g_inet_address_get_native_size(object);

  _result = asRNumeric(ans);
#else
  error("g_inet_address_get_native_size exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_family(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  GSocketFamily ans;

  ans = g_inet_address_get_family(object);

  _result = asREnum(ans, G_TYPE_SOCKET_FAMILY);
#else
  error("g_inet_address_get_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_any(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_any(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_any exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_loopback(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_loopback(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_loopback exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_link_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_link_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_link_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_site_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_site_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_site_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_multicast(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_multicast(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_multicast exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_mc_global(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_mc_global(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_mc_global exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_mc_link_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_mc_link_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_mc_link_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_mc_node_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_mc_node_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_mc_node_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_mc_org_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_mc_org_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_mc_org_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_address_get_is_mc_site_local(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* object = G_INET_ADDRESS(getPtrValue(s_object));

  gboolean ans;

  ans = g_inet_address_get_is_mc_site_local(object);

  _result = asRLogical(ans);
#else
  error("g_inet_address_get_is_mc_site_local exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_initable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_initable_get_type();

  _result = asRGType(ans);
#else
  error("g_initable_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_initable_init(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInitable* object = G_INITABLE(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_initable_init(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_initable_init exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_io_stream_get_type();

  _result = asRGType(ans);
#else
  error("g_io_stream_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_get_input_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  GInputStream* ans;

  ans = g_io_stream_get_input_stream(object);

  _result = toRPointerWithRef(ans, "GInputStream");
#else
  error("g_io_stream_get_input_stream exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_get_output_stream(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  GOutputStream* ans;

  ans = g_io_stream_get_output_stream(object);

  _result = toRPointerWithRef(ans, "GOutputStream");
#else
  error("g_io_stream_get_output_stream exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_close(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_io_stream_close(object, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_io_stream_close exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_close_async(USER_OBJECT_ s_object, USER_OBJECT_ s_io_priority, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_io_stream_close_async(object, io_priority, cancellable, callback, user_data);

#else
  error("g_io_stream_close_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_close_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_io_stream_close_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_io_stream_close_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_is_closed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_io_stream_is_closed(object);

  _result = asRLogical(ans);
#else
  error("g_io_stream_is_closed exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_has_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  gboolean ans;

  ans = g_io_stream_has_pending(object);

  _result = asRLogical(ans);
#else
  error("g_io_stream_has_pending exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_set_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_io_stream_set_pending(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_io_stream_set_pending exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_io_stream_clear_pending(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GIOStream* object = G_IO_STREAM(getPtrValue(s_object));


  g_io_stream_clear_pending(object);

#else
  error("g_io_stream_clear_pending exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_unmount_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_unmount_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_mount_unmount_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_unmount_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_mount_unmount_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_unmount_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_mount_eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_mount_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_mount_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GMount* object = G_MOUNT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_mount_eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_mount_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_address_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_network_address_get_type();

  _result = asRGType(ans);
#else
  error("g_network_address_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_address_new(USER_OBJECT_ s_hostname, USER_OBJECT_ s_port)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  guint16 port = ((guint16)asCInteger(s_port));

  GSocketConnectable* ans;

  ans = g_network_address_new(hostname, port);

  _result = toRPointerWithFinalizer(ans, "GSocketConnectable", (RPointerFinalizer) g_object_unref);
#else
  error("g_network_address_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_address_parse(USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const gchar* host_and_port = ((const gchar*)asCString(s_host_and_port));
  guint16 default_port = ((guint16)asCInteger(s_default_port));

  GSocketConnectable* ans;
  GError* error = NULL;

  ans = g_network_address_parse(host_and_port, default_port, &error);

  _result = toRPointerWithRef(ans, "GSocketConnectable");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_network_address_parse exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_address_get_hostname(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GNetworkAddress* object = G_NETWORK_ADDRESS(getPtrValue(s_object));

  const gchar* ans;

  ans = g_network_address_get_hostname(object);

  _result = asRString(ans);
#else
  error("g_network_address_get_hostname exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_address_get_port(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GNetworkAddress* object = G_NETWORK_ADDRESS(getPtrValue(s_object));

  guint16 ans;

  ans = g_network_address_get_port(object);

  _result = asRInteger(ans);
#else
  error("g_network_address_get_port exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_service_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_network_service_get_type();

  _result = asRGType(ans);
#else
  error("g_network_service_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_service_new(USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const gchar* service = ((const gchar*)asCString(s_service));
  const gchar* protocol = ((const gchar*)asCString(s_protocol));
  const gchar* domain = ((const gchar*)asCString(s_domain));

  GSocketConnectable* ans;

  ans = g_network_service_new(service, protocol, domain);

  _result = toRPointerWithFinalizer(ans, "GSocketConnectable", (RPointerFinalizer) g_object_unref);
#else
  error("g_network_service_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_service_get_service(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GNetworkService* object = G_NETWORK_SERVICE(getPtrValue(s_object));

  const gchar* ans;

  ans = g_network_service_get_service(object);

  _result = asRString(ans);
#else
  error("g_network_service_get_service exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_service_get_protocol(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GNetworkService* object = G_NETWORK_SERVICE(getPtrValue(s_object));

  const gchar* ans;

  ans = g_network_service_get_protocol(object);

  _result = asRString(ans);
#else
  error("g_network_service_get_protocol exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_network_service_get_domain(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GNetworkService* object = G_NETWORK_SERVICE(getPtrValue(s_object));

  const gchar* ans;

  ans = g_network_service_get_domain(object);

  _result = asRString(ans);
#else
  error("g_network_service_get_domain exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_resolver_get_type();

  _result = asRGType(ans);
#else
  error("g_resolver_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_get_default(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GResolver* ans;

  ans = g_resolver_get_default();

  _result = toRPointerWithRef(ans, "GResolver");
#else
  error("g_resolver_get_default exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_set_default(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));


  g_resolver_set_default(object);

#else
  error("g_resolver_set_default exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_name(USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GList* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_by_name(object, hostname, cancellable, &error);

  _result = asRGListWithRef(ans, "GInetAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_by_name exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_name_async(USER_OBJECT_ s_object, USER_OBJECT_ s_hostname, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_resolver_lookup_by_name_async(object, hostname, cancellable, callback, user_data);

#else
  error("g_resolver_lookup_by_name_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_name_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_by_name_finish(object, result, &error);

  _result = asRGListWithRef(ans, "GInetAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_by_name_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_free_addresses(USER_OBJECT_ s_addresses)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GList* addresses = asCGList(s_addresses);


  g_resolver_free_addresses(addresses);

    CLEANUP(g_list_free, ((GList*)addresses));;
#else
  error("g_resolver_free_addresses exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GInetAddress* address = G_INET_ADDRESS(getPtrValue(s_address));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gchar* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_by_address(object, address, cancellable, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_by_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_address_async(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GInetAddress* address = G_INET_ADDRESS(getPtrValue(s_address));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_resolver_lookup_by_address_async(object, address, cancellable, callback, user_data);

#else
  error("g_resolver_lookup_by_address_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_by_address_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gchar* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_by_address_finish(object, result, &error);

  _result = asRString(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_by_address_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_service(USER_OBJECT_ s_object, USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* service = ((const gchar*)asCString(s_service));
  const gchar* protocol = ((const gchar*)asCString(s_protocol));
  const gchar* domain = ((const gchar*)asCString(s_domain));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GList* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_service(object, service, protocol, domain, cancellable, &error);

  _result = asRGList(ans, "GSrvTarget");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_service exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_service_async(USER_OBJECT_ s_object, USER_OBJECT_ s_service, USER_OBJECT_ s_protocol, USER_OBJECT_ s_domain, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  const gchar* service = ((const gchar*)asCString(s_service));
  const gchar* protocol = ((const gchar*)asCString(s_protocol));
  const gchar* domain = ((const gchar*)asCString(s_domain));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_resolver_lookup_service_async(object, service, protocol, domain, cancellable, callback, user_data);

#else
  error("g_resolver_lookup_service_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_lookup_service_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GResolver* object = G_RESOLVER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GList* ans;
  GError* error = NULL;

  ans = g_resolver_lookup_service_finish(object, result, &error);

  _result = asRGList(ans, "GSrvTarget");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_error_free, error);;
#else
  error("g_resolver_lookup_service_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_free_targets(USER_OBJECT_ s_targets)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GList* targets = asCGList(s_targets);


  g_resolver_free_targets(targets);

    CLEANUP(g_list_free, ((GList*)targets));;
#else
  error("g_resolver_free_targets exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_resolver_error_quark(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GQuark ans;

  ans = g_resolver_error_quark();

  _result = asRGQuark(ans);
#else
  error("g_resolver_error_quark exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_enumerator_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_address_enumerator_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_address_enumerator_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_enumerator_next(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_address_enumerator_next(object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_address_enumerator_next exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_enumerator_next_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_address_enumerator_next_async(object, cancellable, callback, user_data);

#else
  error("g_socket_address_enumerator_next_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_enumerator_next_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddressEnumerator* object = G_SOCKET_ADDRESS_ENUMERATOR(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_address_enumerator_next_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_address_enumerator_next_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_address_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_address_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_get_family(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));

  GSocketFamily ans;

  ans = g_socket_address_get_family(object);

  _result = asREnum(ans, G_TYPE_SOCKET_FAMILY);
#else
  error("g_socket_address_get_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_new_from_native(USER_OBJECT_ s_native, USER_OBJECT_ s_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  gpointer native = ((gpointer)asCGenericData(s_native));
  gsize len = ((gsize)asCNumeric(s_len));

  GSocketAddress* ans;

  ans = g_socket_address_new_from_native(native, len);

  _result = toRPointerWithRef(ans, "GSocketAddress");
#else
  error("g_socket_address_new_from_native exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_to_native(USER_OBJECT_ s_object, USER_OBJECT_ s_dest, USER_OBJECT_ s_destlen)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));
  gpointer dest = ((gpointer)asCGenericData(s_dest));
  gsize destlen = ((gsize)asCNumeric(s_destlen));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_address_to_native(object, dest, destlen, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_address_to_native exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_address_get_native_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketAddress* object = G_SOCKET_ADDRESS(getPtrValue(s_object));

  gssize ans;

  ans = g_socket_address_get_native_size(object);

  _result = asRInteger(ans);
#else
  error("g_socket_address_get_native_size exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_client_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_client_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GSocketClient* ans;

  ans = g_socket_client_new();

  _result = toRPointerWithFinalizer(ans, "GSocketClient", (RPointerFinalizer) g_object_unref);
#else
  error("g_socket_client_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_get_family(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));

  GSocketFamily ans;

  ans = g_socket_client_get_family(object);

  _result = asREnum(ans, G_TYPE_SOCKET_FAMILY);
#else
  error("g_socket_client_get_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_set_family(USER_OBJECT_ s_object, USER_OBJECT_ s_family)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));


  g_socket_client_set_family(object, family);

#else
  error("g_socket_client_set_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_get_socket_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));

  GSocketType ans;

  ans = g_socket_client_get_socket_type(object);

  _result = asREnum(ans, G_TYPE_SOCKET_TYPE);
#else
  error("g_socket_client_get_socket_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_set_socket_type(USER_OBJECT_ s_object, USER_OBJECT_ s_type)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketType type = ((GSocketType)asCEnum(s_type, G_TYPE_SOCKET_TYPE));


  g_socket_client_set_socket_type(object, type);

#else
  error("g_socket_client_set_socket_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_get_protocol(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));

  GSocketProtocol ans;

  ans = g_socket_client_get_protocol(object);

  _result = asREnum(ans, G_TYPE_SOCKET_PROTOCOL);
#else
  error("g_socket_client_get_protocol exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_set_protocol(USER_OBJECT_ s_object, USER_OBJECT_ s_protocol)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketProtocol protocol = ((GSocketProtocol)asCEnum(s_protocol, G_TYPE_SOCKET_PROTOCOL));


  g_socket_client_set_protocol(object, protocol);

#else
  error("g_socket_client_set_protocol exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_get_local_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));

  GSocketAddress* ans;

  ans = g_socket_client_get_local_address(object);

  _result = toRPointerWithRef(ans, "GSocketAddress");
#else
  error("g_socket_client_get_local_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_set_local_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));


  g_socket_client_set_local_address(object, address);

#else
  error("g_socket_client_set_local_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_connectable, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketConnectable* connectable = G_SOCKET_CONNECTABLE(getPtrValue(s_connectable));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect(object, connectable, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_host(USER_OBJECT_ s_object, USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  const gchar* host_and_port = ((const gchar*)asCString(s_host_and_port));
  guint16 default_port = ((guint16)asCInteger(s_default_port));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect_to_host(object, host_and_port, default_port, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect_to_host exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_service(USER_OBJECT_ s_object, USER_OBJECT_ s_domain, USER_OBJECT_ s_service, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  const gchar* domain = ((const gchar*)asCString(s_domain));
  const gchar* service = ((const gchar*)asCString(s_service));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect_to_service(object, domain, service, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect_to_service exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_async(USER_OBJECT_ s_object, USER_OBJECT_ s_connectable, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GSocketConnectable* connectable = G_SOCKET_CONNECTABLE(getPtrValue(s_connectable));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_client_connect_async(object, connectable, cancellable, callback, user_data);

#else
  error("g_socket_client_connect_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_host_async(USER_OBJECT_ s_object, USER_OBJECT_ s_host_and_port, USER_OBJECT_ s_default_port, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  const gchar* host_and_port = ((const gchar*)asCString(s_host_and_port));
  guint16 default_port = ((guint16)asCInteger(s_default_port));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_client_connect_to_host_async(object, host_and_port, default_port, cancellable, callback, user_data);

#else
  error("g_socket_client_connect_to_host_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_host_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect_to_host_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect_to_host_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_service_async(USER_OBJECT_ s_object, USER_OBJECT_ s_domain, USER_OBJECT_ s_service, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  const gchar* domain = ((const gchar*)asCString(s_domain));
  const gchar* service = ((const gchar*)asCString(s_service));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_client_connect_to_service_async(object, domain, service, cancellable, callback, user_data);

#else
  error("g_socket_client_connect_to_service_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_client_connect_to_service_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketClient* object = G_SOCKET_CLIENT(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketConnection* ans;
  GError* error = NULL;

  ans = g_socket_client_connect_to_service_finish(object, result, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_client_connect_to_service_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connectable_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_connectable_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_connectable_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connectable_enumerate(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketConnectable* object = G_SOCKET_CONNECTABLE(getPtrValue(s_object));

  GSocketAddressEnumerator* ans;

  ans = g_socket_connectable_enumerate(object);

  _result = toRPointerWithRef(ans, "GSocketAddressEnumerator");
#else
  error("g_socket_connectable_enumerate exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_connection_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_connection_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_get_socket(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketConnection* object = G_SOCKET_CONNECTION(getPtrValue(s_object));

  GSocket* ans;

  ans = g_socket_connection_get_socket(object);

  _result = toRPointerWithRef(ans, "GSocket");
#else
  error("g_socket_connection_get_socket exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_get_local_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketConnection* object = G_SOCKET_CONNECTION(getPtrValue(s_object));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_connection_get_local_address(object, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_connection_get_local_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_get_remote_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketConnection* object = G_SOCKET_CONNECTION(getPtrValue(s_object));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_connection_get_remote_address(object, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_connection_get_remote_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_factory_register_type(USER_OBJECT_ s_g_type, USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GType g_type = ((GType)asCGType(s_g_type));
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));
  GSocketType type = ((GSocketType)asCEnum(s_type, G_TYPE_SOCKET_TYPE));
  gint protocol = ((gint)asCInteger(s_protocol));


  g_socket_connection_factory_register_type(g_type, family, type, protocol);

#else
  error("g_socket_connection_factory_register_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_factory_lookup_type(USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol_id)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));
  GSocketType type = ((GSocketType)asCEnum(s_type, G_TYPE_SOCKET_TYPE));
  gint protocol_id = ((gint)asCInteger(s_protocol_id));

  GType ans;

  ans = g_socket_connection_factory_lookup_type(family, type, protocol_id);

  _result = asRGType(ans);
#else
  error("g_socket_connection_factory_lookup_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connection_factory_create_connection(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketConnection* ans;

  ans = g_socket_connection_factory_create_connection(object);

  _result = toRPointerWithRef(ans, "GSocketConnection");
#else
  error("g_socket_connection_factory_create_connection exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_control_message_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_control_message_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_get_size(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  gsize ans;

  ans = g_socket_control_message_get_size(object);

  _result = asRNumeric(ans);
#else
  error("g_socket_control_message_get_size exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_get_level(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  int ans;

  ans = g_socket_control_message_get_level(object);

  _result = asRInteger(ans);
#else
  error("g_socket_control_message_get_level exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_get_msg_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));

  int ans;

  ans = g_socket_control_message_get_msg_type(object);

  _result = asRInteger(ans);
#else
  error("g_socket_control_message_get_msg_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_serialize(USER_OBJECT_ s_object, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketControlMessage* object = G_SOCKET_CONTROL_MESSAGE(getPtrValue(s_object));
  gpointer data = ((gpointer)asCGenericData(s_data));


  g_socket_control_message_serialize(object, data);

#else
  error("g_socket_control_message_serialize exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_control_message_deserialize(USER_OBJECT_ s_level, USER_OBJECT_ s_type, USER_OBJECT_ s_size, USER_OBJECT_ s_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  int level = ((int)asCInteger(s_level));
  int type = ((int)asCInteger(s_type));
  gsize size = ((gsize)asCNumeric(s_size));
  gpointer data = ((gpointer)asCGenericData(s_data));

  GSocketControlMessage* ans;

  ans = g_socket_control_message_deserialize(level, type, size, data);

  _result = toRPointerWithRef(ans, "GSocketControlMessage");
#else
  error("g_socket_control_message_deserialize exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_new(USER_OBJECT_ s_family, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketFamily family = ((GSocketFamily)asCEnum(s_family, G_TYPE_SOCKET_FAMILY));
  GSocketType type = ((GSocketType)asCEnum(s_type, G_TYPE_SOCKET_TYPE));
  GSocketProtocol protocol = ((GSocketProtocol)asCEnum(s_protocol, G_TYPE_SOCKET_PROTOCOL));

  GSocket* ans;
  GError* error = NULL;

  ans = g_socket_new(family, type, protocol, &error);

  _result = toRPointerWithFinalizer(ans, "GSocket", (RPointerFinalizer) g_object_unref);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_new_from_fd(USER_OBJECT_ s_fd)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  gint fd = ((gint)asCInteger(s_fd));

  GSocket* ans;
  GError* error = NULL;

  ans = g_socket_new_from_fd(fd, &error);

  _result = toRPointerWithRef(ans, "GSocket");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_new_from_fd exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_fd(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  int ans;

  ans = g_socket_get_fd(object);

  _result = asRInteger(ans);
#else
  error("g_socket_get_fd exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_family(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketFamily ans;

  ans = g_socket_get_family(object);

  _result = asREnum(ans, G_TYPE_SOCKET_FAMILY);
#else
  error("g_socket_get_family exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_socket_type(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketType ans;

  ans = g_socket_get_socket_type(object);

  _result = asREnum(ans, G_TYPE_SOCKET_TYPE);
#else
  error("g_socket_get_socket_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_protocol(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketProtocol ans;

  ans = g_socket_get_protocol(object);

  _result = asREnum(ans, G_TYPE_SOCKET_PROTOCOL);
#else
  error("g_socket_get_protocol exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_local_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_get_local_address(object, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_get_local_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_remote_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  GSocketAddress* ans;
  GError* error = NULL;

  ans = g_socket_get_remote_address(object, &error);

  _result = toRPointerWithRef(ans, "GSocketAddress");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_get_remote_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_set_blocking(USER_OBJECT_ s_object, USER_OBJECT_ s_blocking)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gboolean blocking = ((gboolean)asCLogical(s_blocking));


  g_socket_set_blocking(object, blocking);

#else
  error("g_socket_set_blocking exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_blocking(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_get_blocking(object);

  _result = asRLogical(ans);
#else
  error("g_socket_get_blocking exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_set_keepalive(USER_OBJECT_ s_object, USER_OBJECT_ s_keepalive)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gboolean keepalive = ((gboolean)asCLogical(s_keepalive));


  g_socket_set_keepalive(object, keepalive);

#else
  error("g_socket_set_keepalive exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_keepalive(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_get_keepalive(object);

  _result = asRLogical(ans);
#else
  error("g_socket_get_keepalive exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_get_listen_backlog(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gint ans;

  ans = g_socket_get_listen_backlog(object);

  _result = asRInteger(ans);
#else
  error("g_socket_get_listen_backlog exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_set_listen_backlog(USER_OBJECT_ s_object, USER_OBJECT_ s_backlog)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gint backlog = ((gint)asCInteger(s_backlog));


  g_socket_set_listen_backlog(object, backlog);

#else
  error("g_socket_set_listen_backlog exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_is_connected(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_is_connected(object);

  _result = asRLogical(ans);
#else
  error("g_socket_is_connected exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_bind(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_allow_reuse)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));
  gboolean allow_reuse = ((gboolean)asCLogical(s_allow_reuse));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_bind(object, address, allow_reuse, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_bind exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_connect(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_connect(object, address, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_connect exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_check_connect_result(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_check_connect_result(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_check_connect_result exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_condition_check(USER_OBJECT_ s_object, USER_OBJECT_ s_condition)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GIOCondition condition = ((GIOCondition)asCEnum(s_condition, G_TYPE_IO_CONDITION));

  GIOCondition ans;

  ans = g_socket_condition_check(object, condition);

  _result = asREnum(ans, G_TYPE_IO_CONDITION);
#else
  error("g_socket_condition_check exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_condition_wait(USER_OBJECT_ s_object, USER_OBJECT_ s_condition, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GIOCondition condition = ((GIOCondition)asCEnum(s_condition, G_TYPE_IO_CONDITION));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_condition_wait(object, condition, cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_condition_wait exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_accept(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocket* ans;
  GError* error = NULL;

  ans = g_socket_accept(object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocket");

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_accept exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listen(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_listen(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listen exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_send(USER_OBJECT_ s_object, USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  const gchar* buffer = ((const gchar*)asCString(s_buffer));
  gsize size = ((gsize)asCNumeric(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_socket_send(object, buffer, size, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_send exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_send_to(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_buffer, USER_OBJECT_ s_size, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));
  const gchar* buffer = ((const gchar*)asCString(s_buffer));
  gsize size = ((gsize)asCNumeric(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_socket_send_to(object, address, buffer, size, cancellable, &error);

  _result = asRInteger(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_send_to exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_close(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_close(object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_close exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_shutdown(USER_OBJECT_ s_object, USER_OBJECT_ s_shutdown_read, USER_OBJECT_ s_shutdown_write)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gboolean shutdown_read = ((gboolean)asCLogical(s_shutdown_read));
  gboolean shutdown_write = ((gboolean)asCLogical(s_shutdown_write));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_shutdown(object, shutdown_read, shutdown_write, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_shutdown exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_is_closed(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_is_closed(object);

  _result = asRLogical(ans);
#else
  error("g_socket_is_closed exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_create_source(USER_OBJECT_ s_object, USER_OBJECT_ s_condition, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GIOCondition condition = ((GIOCondition)asCEnum(s_condition, G_TYPE_IO_CONDITION));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSource* ans;

  ans = g_socket_create_source(object, condition, cancellable);

  _result = toRPointer(ans, "GSource");
#else
  error("g_socket_create_source exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_speaks_ipv4(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_speaks_ipv4(object);

  _result = asRLogical(ans);
#else
  error("g_socket_speaks_ipv4 exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_listener_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_listener_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GSocketListener* ans;

  ans = g_socket_listener_new();

  _result = toRPointerWithFinalizer(ans, "GSocketListener", (RPointerFinalizer) g_object_unref);
#else
  error("g_socket_listener_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_set_backlog(USER_OBJECT_ s_object, USER_OBJECT_ s_listen_backlog)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  int listen_backlog = ((int)asCInteger(s_listen_backlog));


  g_socket_listener_set_backlog(object, listen_backlog);

#else
  error("g_socket_listener_set_backlog exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_add_socket(USER_OBJECT_ s_object, USER_OBJECT_ s_socket, USER_OBJECT_ s_source_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GSocket* socket = G_SOCKET(getPtrValue(s_socket));
  GObject* source_object = G_OBJECT(getPtrValue(s_source_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_listener_add_socket(object, socket, source_object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_add_socket exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_add_address(USER_OBJECT_ s_object, USER_OBJECT_ s_address, USER_OBJECT_ s_type, USER_OBJECT_ s_protocol, USER_OBJECT_ s_source_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));
  GSocketType type = ((GSocketType)asCEnum(s_type, G_TYPE_SOCKET_TYPE));
  GSocketProtocol protocol = ((GSocketProtocol)asCEnum(s_protocol, G_TYPE_SOCKET_PROTOCOL));
  GObject* source_object = GET_LENGTH(s_source_object) == 0 ? NULL : G_OBJECT(getPtrValue(s_source_object));

  gboolean ans;
  GSocketAddress* effective_address = NULL;
  GError* error = NULL;

  ans = g_socket_listener_add_address(object, address, type, protocol, source_object, &effective_address, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "effective.address", PROTECT(toRPointerWithRef(effective_address, "GSocketAddress")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_add_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_add_inet_port(USER_OBJECT_ s_object, USER_OBJECT_ s_port, USER_OBJECT_ s_source_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  guint16 port = ((guint16)asCInteger(s_port));
  GObject* source_object = G_OBJECT(getPtrValue(s_source_object));

  gboolean ans;
  GError* error = NULL;

  ans = g_socket_listener_add_inet_port(object, port, source_object, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_add_inet_port exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept_socket(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocket* ans;
  GObject* source_object = NULL;
  GError* error = NULL;

  ans = g_socket_listener_accept_socket(object, &source_object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocket");

  _result = retByVal(PROTECT(_result), "source.object", PROTECT(toRPointerWithRef(source_object, "GObject")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_accept_socket exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept_socket_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_listener_accept_socket_async(object, cancellable, callback, user_data);

#else
  error("g_socket_listener_accept_socket_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept_socket_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocket* ans;
  GObject* source_object = NULL;
  GError* error = NULL;

  ans = g_socket_listener_accept_socket_finish(object, result, &source_object, &error);

  _result = toRPointerWithRef(ans, "GSocket");

  _result = retByVal(PROTECT(_result), "source.object", PROTECT(toRPointerWithRef(source_object, "GObject")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_accept_socket_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));

  GSocketConnection* ans;
  GObject* source_object = NULL;
  GError* error = NULL;

  ans = g_socket_listener_accept(object, &source_object, cancellable, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "source.object", PROTECT(toRPointerWithRef(source_object, "GObject")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_accept exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept_async(USER_OBJECT_ s_object, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_socket_listener_accept_async(object, cancellable, callback, user_data);

#else
  error("g_socket_listener_accept_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_accept_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  GSocketConnection* ans;
  GObject* source_object = NULL;
  GError* error = NULL;

  ans = g_socket_listener_accept_finish(object, result, &source_object, &error);

  _result = toRPointerWithRef(ans, "GSocketConnection");

  _result = retByVal(PROTECT(_result), "source.object", PROTECT(toRPointerWithRef(source_object, "GObject")), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  ;
    CLEANUP(g_error_free, error);;
#else
  error("g_socket_listener_accept_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_listener_close(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketListener* object = G_SOCKET_LISTENER(getPtrValue(s_object));


  g_socket_listener_close(object);

#else
  error("g_socket_listener_close exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_service_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_socket_service_get_type();

  _result = asRGType(ans);
#else
  error("g_socket_service_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_service_new(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GSocketService* ans;

  ans = g_socket_service_new();

  _result = toRPointerWithFinalizer(ans, "GSocketService", (RPointerFinalizer) g_object_unref);
#else
  error("g_socket_service_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_service_start(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketService* object = G_SOCKET_SERVICE(getPtrValue(s_object));


  g_socket_service_start(object);

#else
  error("g_socket_service_start exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_service_stop(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketService* object = G_SOCKET_SERVICE(getPtrValue(s_object));


  g_socket_service_stop(object);

#else
  error("g_socket_service_stop exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_socket_service_is_active(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocketService* object = G_SOCKET_SERVICE(getPtrValue(s_object));

  gboolean ans;

  ans = g_socket_service_is_active(object);

  _result = asRLogical(ans);
#else
  error("g_socket_service_is_active exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_srv_target_get_type();

  _result = asRGType(ans);
#else
  error("g_srv_target_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_new(USER_OBJECT_ s_hostname, USER_OBJECT_ s_port, USER_OBJECT_ s_priority, USER_OBJECT_ s_weight)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  const gchar* hostname = ((const gchar*)asCString(s_hostname));
  guint16 port = ((guint16)asCInteger(s_port));
  guint16 priority = ((guint16)asCInteger(s_priority));
  guint16 weight = ((guint16)asCInteger(s_weight));

  GSrvTarget* ans;

  ans = g_srv_target_new(hostname, port, priority, weight);

  _result = toRPointer(ans, "GSrvTarget");
#else
  error("g_srv_target_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_copy(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));

  GSrvTarget* ans;

  ans = g_srv_target_copy(object);

  _result = toRPointer(ans ? (ans) : NULL, "GSrvTarget");
#else
  error("g_srv_target_copy exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_free(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));


  g_srv_target_free(object);

#else
  error("g_srv_target_free exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_get_hostname(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));

  const gchar* ans;

  ans = g_srv_target_get_hostname(object);

  _result = asRString(ans);
#else
  error("g_srv_target_get_hostname exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_get_port(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));

  guint16 ans;

  ans = g_srv_target_get_port(object);

  _result = asRInteger(ans);
#else
  error("g_srv_target_get_port exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_get_priority(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));

  guint16 ans;

  ans = g_srv_target_get_priority(object);

  _result = asRInteger(ans);
#else
  error("g_srv_target_get_priority exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_get_weight(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSrvTarget* object = ((GSrvTarget*)getPtrValue(s_object));

  guint16 ans;

  ans = g_srv_target_get_weight(object);

  _result = asRInteger(ans);
#else
  error("g_srv_target_get_weight exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_srv_target_list_sort(USER_OBJECT_ s_targets)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GList* targets = asCGList(s_targets);

  GList* ans;

  ans = g_srv_target_list_sort(targets);

  _result = asRGList(ans, "GSrvTarget");
    CLEANUP(g_list_free, ans);;
    CLEANUP(g_list_free, ((GList*)targets));;
#else
  error("g_srv_target_list_sort exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_threaded_socket_service_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_threaded_socket_service_get_type();

  _result = asRGType(ans);
#else
  error("g_threaded_socket_service_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_threaded_socket_service_new(USER_OBJECT_ s_max_threads)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  int max_threads = ((int)asCInteger(s_max_threads));

  GSocketService* ans;

  ans = g_threaded_socket_service_new(max_threads);

  _result = toRPointerWithFinalizer(ans, "GSocketService", (RPointerFinalizer) g_object_unref);
#else
  error("g_threaded_socket_service_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_eject_with_operation(USER_OBJECT_ s_object, USER_OBJECT_ s_flags, USER_OBJECT_ s_mount_operation, USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GMountUnmountFlags flags = ((GMountUnmountFlags)asCFlag(s_flags, G_TYPE_MOUNT_UNMOUNT_FLAGS));
  GMountOperation* mount_operation = G_MOUNT_OPERATION(getPtrValue(s_mount_operation));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL : G_CANCELLABLE(getPtrValue(s_cancellable));


  g_volume_eject_with_operation(object, flags, mount_operation, cancellable, callback, user_data);

#else
  error("g_volume_eject_with_operation exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_volume_eject_with_operation_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GVolume* object = G_VOLUME(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));

  gboolean ans;
  GError* error = NULL;

  ans = g_volume_eject_with_operation_finish(object, result, &error);

  _result = asRLogical(ans);

  _result = retByVal(PROTECT(_result), "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
    CLEANUP(g_error_free, error);;
#else
  error("g_volume_eject_with_operation_finish exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_socket_address_new(USER_OBJECT_ s_address, USER_OBJECT_ s_port)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetAddress* address = G_INET_ADDRESS(getPtrValue(s_address));
  guint16 port = ((guint16)asCInteger(s_port));

  GSocketAddress* ans;

  ans = g_inet_socket_address_new(address, port);

  _result = toRPointerWithFinalizer(ans, "GSocketAddress", (RPointerFinalizer) g_object_unref);
#else
  error("g_inet_socket_address_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_socket_address_get_address(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetSocketAddress* object = G_INET_SOCKET_ADDRESS(getPtrValue(s_object));

  GInetAddress* ans;

  ans = g_inet_socket_address_get_address(object);

  _result = toRPointerWithRef(ans, "GInetAddress");
#else
  error("g_inet_socket_address_get_address exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_inet_socket_address_get_port(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GInetSocketAddress* object = G_INET_SOCKET_ADDRESS(getPtrValue(s_object));

  guint16 ans;

  ans = g_inet_socket_address_get_port(object);

  _result = asRInteger(ans);
#else
  error("g_inet_socket_address_get_port exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_tcp_connection_get_type(void)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)

  GType ans;

  ans = g_tcp_connection_get_type();

  _result = asRGType(ans);
#else
  error("g_tcp_connection_get_type exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_tcp_connection_set_graceful_disconnect(USER_OBJECT_ s_object, USER_OBJECT_ s_graceful_disconnect)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GTcpConnection* object = G_TCP_CONNECTION(getPtrValue(s_object));
  gboolean graceful_disconnect = ((gboolean)asCLogical(s_graceful_disconnect));


  g_tcp_connection_set_graceful_disconnect(object, graceful_disconnect);

#else
  error("g_tcp_connection_set_graceful_disconnect exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

USER_OBJECT_
S_g_tcp_connection_get_graceful_disconnect(USER_OBJECT_ s_object)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GTcpConnection* object = G_TCP_CONNECTION(getPtrValue(s_object));

  gboolean ans;

  ans = g_tcp_connection_get_graceful_disconnect(object);

  _result = asRLogical(ans);
#else
  error("g_tcp_connection_get_graceful_disconnect exists only in gio >= 2.22.0");
#endif

  return(_result);
}
 

