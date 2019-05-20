#include "RGtk2/gio.h"
#include "gioFuncs.h"

USER_OBJECT_
S_g_input_stream_read(USER_OBJECT_ s_object, USER_OBJECT_ s_count,
                      USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));
                                                        
  gssize ans;
  guchar* buffer = R_alloc(count, sizeof(guchar));
  GError* error = NULL;

  ans = g_input_stream_read(object, buffer, count, cancellable, &error);

  _result = PROTECT(asRInteger(ans));

  _result = retByVal(_result,
		     "buffer", PROTECT(asRRawArrayWithSize(buffer, count)),
                     "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_read exists only in gio >= 2.16.0");
#endif

  return(_result);
}

USER_OBJECT_
S_g_input_stream_read_all(USER_OBJECT_ s_object, USER_OBJECT_ s_count,
                          USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  gboolean ans;
  guchar* buffer = R_alloc(count, sizeof(guchar));
  gsize bytes_read;
  GError* error = NULL;

  ans = g_input_stream_read_all(object, buffer, count, &bytes_read,
                                cancellable, &error);

  _result = asRLogical(ans);

  _result = retByVal(_result,
		     "buffer", PROTECT(asRRawArrayWithSize(buffer, count)),
                     "bytes.read", PROTECT(asRNumeric(bytes_read)),
                     "error", PROTECT(asRGError(error)), NULL);
  
  UNPROTECT(3);
  CLEANUP(g_error_free, error);;
#else
  error("g_input_stream_read_all exists only in gio >= 2.16.0");
#endif

  return(_result);
}

/* Strategy: allocate the buffer, stick it with user data. Have the
   readFinish() call get the user data from the async result, return
   the buffer instead of only the length (and free the buffer).  */

USER_OBJECT_
S_g_input_stream_read_async(USER_OBJECT_ s_object,
                            USER_OBJECT_ s_count, USER_OBJECT_ s_io_priority,
                            USER_OBJECT_ s_cancellable, USER_OBJECT_ s_callback,
                            USER_OBJECT_ s_user_data)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data); 
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  gsize count = ((gsize)asCNumeric(s_count));
  guchar* buffer = g_new(guchar, count);
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));
  
  user_data->extra = buffer;
  
  g_input_stream_read_async(object, buffer, count, io_priority, cancellable,
                            callback, user_data);
  
#else
  error("g_input_stream_read_async exists only in gio >= 2.16.0");
#endif

  return(_result);
}
USER_OBJECT_
S_g_input_stream_read_finish(USER_OBJECT_ s_object, USER_OBJECT_ s_result)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GInputStream* object = G_INPUT_STREAM(getPtrValue(s_object));
  GAsyncResult* result = G_ASYNC_RESULT(getPtrValue(s_result));
  R_CallbackData* user_data =
    (R_CallbackData *)g_async_result_get_user_data(result);
  
  gssize ans;
  GError* error = NULL;
  guchar *buffer = (guchar *)user_data->extra;

  ans = g_input_stream_read_finish(object, result, &error);

  if (ans >= 0)
    _result = asRRawArrayWithSize(buffer, ans);

  _result = retByVal(_result, "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(1);
  CLEANUP(g_error_free, error);
#else
  error("g_input_stream_read_finish exists only in gio >= 2.16.0");
#endif

  return(_result);
}


/* Same as that generated, we use sprintf on the R side */
USER_OBJECT_
S_g_simple_async_result_new_error(USER_OBJECT_ s_source_object,
                                  USER_OBJECT_ s_callback,
                                  USER_OBJECT_ s_user_data,
                                  USER_OBJECT_ s_domain, USER_OBJECT_ s_code,
                                  USER_OBJECT_ s_format)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GObject* source_object = G_OBJECT(getPtrValue(s_source_object));
  GQuark domain = ((GQuark)asCNumeric(s_domain));
  gint code = ((gint)asCInteger(s_code));
  const char* format = ((const char*)asCString(s_format));

  GSimpleAsyncResult* ans;

  ans = g_simple_async_result_new_error(source_object, callback, user_data,
                                        domain, code, "%s", format);

  _result = toRPointerWithRef(ans, "GSimpleAsyncResult");
#else
  error("g_simple_async_result_new_error exists only in gio >= 2.16.0");
#endif

  return(_result);
}
USER_OBJECT_
S_g_simple_async_result_set_error(USER_OBJECT_ s_object, USER_OBJECT_ s_domain,
                                  USER_OBJECT_ s_code, USER_OBJECT_ s_format)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GSimpleAsyncResult* object = G_SIMPLE_ASYNC_RESULT(getPtrValue(s_object));
  GQuark domain = ((GQuark)asCNumeric(s_domain));
  gint code = ((gint)asCInteger(s_code));
  const char* format = ((const char*)asCString(s_format));


  g_simple_async_result_set_error(object, domain, code, "%s", format);

#else
  error("g_simple_async_result_set_error exists only in gio >= 2.16.0");
#endif

  return(_result);
}
USER_OBJECT_
S_g_simple_async_report_error_in_idle(USER_OBJECT_ s_object,
                                      USER_OBJECT_ s_callback,
                                      USER_OBJECT_ s_user_data,
                                      USER_OBJECT_ s_domain,
                                      USER_OBJECT_ s_code,
                                      USER_OBJECT_ s_format)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GObject* object = G_OBJECT(getPtrValue(s_object));
  GQuark domain = ((GQuark)asCNumeric(s_domain));
  gint code = ((gint)asCInteger(s_code));
  const char* format = ((const char*)asCString(s_format));


  g_simple_async_report_error_in_idle(object, callback, user_data, domain, code,
                                      "%s", format);

#else
  error("g_simple_async_report_error_in_idle exists only in gio >= 2.16.0");
#endif

  return(_result);
}

/* Handle properties */

USER_OBJECT_
S_g_async_initable_new_async(USER_OBJECT_ s_object_type,
                             USER_OBJECT_ s_io_priority,
                             USER_OBJECT_ s_cancellable,
                             USER_OBJECT_ s_callback, USER_OBJECT_ s_user_data,
                             USER_OBJECT_ s_properties)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GAsyncReadyCallback callback = ((GAsyncReadyCallback)S_GAsyncReadyCallback);
  R_CallbackData* user_data = R_createCBData(s_callback, s_user_data);
  GType object_type = ((GType)asCNumeric(s_object_type));
  GObjectClass *object_class = G_OBJECT_CLASS(g_type_class_ref(object_type));
  int io_priority = ((int)asCInteger(s_io_priority));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  int i, n = GET_LENGTH(s_properties);
  GParameter *params = g_new0(GParameter, n);
  USER_OBJECT_ propNames = PROTECT(GET_NAMES(s_properties));

  for(i = 0; i < n; i++) {
    params[i].name = asCString(STRING_ELT(propNames, i));
    R_setGValueForProperty(&params[i].value, object_class, params[i].name,
                           VECTOR_ELT(s_properties, i));
  }
  UNPROTECT(1);

  g_async_initable_newv_async(object_type, n, params, io_priority, cancellable,
                              callback, user_data);

  g_free(params);

#else
  error("g_async_initable_new_async exists only in gio >= 2.22.0");
#endif

  return(_result);
}
USER_OBJECT_
S_g_initable_new(USER_OBJECT_ s_object_type, USER_OBJECT_ s_cancellable,
                 USER_OBJECT_ s_properties)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GType object_type = ((GType)asCNumeric(s_object_type));
  GObjectClass *object_class = G_OBJECT_CLASS(g_type_class_ref(object_type));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));
  
  gpointer ans;
  GError* error = NULL;
  
  int i, n = GET_LENGTH(s_properties);
  GParameter *params = g_new0(GParameter, n);
  USER_OBJECT_ propNames = PROTECT(GET_NAMES(s_properties));

  for(i = 0; i < n; i++) {
    params[i].name = asCString(STRING_ELT(propNames, i));
    R_setGValueForProperty(&params[i].value, object_class, params[i].name,
                           VECTOR_ELT(s_properties, i));
  }

  ans = g_initable_newv(object_type, n, params, cancellable, &error);

  _result = ans;

  _result = retByVal(_result, "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  CLEANUP(g_error_free, error);
#else
  error("g_initable_new exists only in gio >= 2.22.0");
#endif

  return(_result);
}

/* Buffer preallocation */

USER_OBJECT_
S_g_socket_receive(USER_OBJECT_ s_object, USER_OBJECT_ s_size,
                   USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gsize size = ((gsize)asCNumeric(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  gchar* buffer = R_alloc(size, sizeof(guchar));
  GError* error = NULL;

  ans = g_socket_receive(object, buffer, size, cancellable, &error);

  _result = PROTECT(asRInteger(ans));

  _result = retByVal(_result, "buffer",
		     PROTECT(asRRawArrayWithSize(buffer, size)),
                     "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(3);
  CLEANUP(g_error_free, error);;
#else
  error("g_socket_receive exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_g_socket_receive_from(USER_OBJECT_ s_object, USER_OBJECT_ s_size,
                        USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gsize size = ((gsize)asCNumeric(s_size));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GSocketAddress* address = NULL;
  guchar *buffer = R_alloc(size, sizeof(guchar));
  GError* error = NULL;

  ans = g_socket_receive_from(object, &address, buffer, size, cancellable,
                              &error);

  _result = PROTECT(asRInteger(ans));

  _result = retByVal(_result,
                     "address", PROTECT(toRPointerWithFinalizer(address, "GSocketAddress", (RPointerFinalizer) g_object_unref)),
                     "buffer", PROTECT(asRRawArrayWithSize(buffer, size)),
                     "error", PROTECT(asRGError(error)),
                     NULL);
  
  UNPROTECT(4);
  CLEANUP(g_error_free, error);;
#else
  error("g_socket_receive_from exists only in gio >= 2.22.0");
#endif

  return(_result);
}

/* These allow multiple i/o vectors, but is this optimization worth it
   in R? Probably not, so we just create a single vector. Their
   utility is in socket control messages, whatever those are. */

USER_OBJECT_
S_g_socket_receive_message(USER_OBJECT_ s_object, USER_OBJECT_ s_num_vectors,
                           USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  gint num_vectors = asCInteger(s_num_vectors);
  gint flags = asCInteger(s_flags);
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GSocketAddress* address = NULL;
  guchar *buffer = R_alloc(num_vectors, sizeof(guchar));
  GInputVector vectors[] = {
    { buffer, num_vectors }
  };
  GSocketControlMessage** messages = NULL;
  gint num_messages;
  GError* error = NULL;

  ans = g_socket_receive_message(object, &address, vectors, num_vectors,
                                 &messages, &num_messages, &flags, cancellable,
                                 &error);

  _result = PROTECT(asRInteger(ans));

  _result = retByVal(_result,
                     "address", PROTECT(toRPointerWithFinalizer(address, "GSocketAddress", (RPointerFinalizer) g_object_unref)),
                     "vectors", PROTECT(toRPointer(vectors, "GInputVector")),
                     "messages", PROTECT(toRPointerWithFinalizerArrayWithSize(messages, "GSocketControlMessage", (RPointerFinalizer) g_object_unref, num_messages)),
                     "num.messages", PROTECT(asRInteger(num_messages)),
                     "flags", PROTECT(asRInteger(flags)),
                     "error", PROTECT(asRGError(error)), NULL);
  
  UNPROTECT(7);
  CLEANUP(g_free, messages);;
  ;
  CLEANUP(g_error_free, error);;
#else
  error("g_socket_receive_message exists only in gio >= 2.22.0");
#endif

  return(_result);
}

USER_OBJECT_
S_g_socket_send_message(USER_OBJECT_ s_object, USER_OBJECT_ s_address,
                        USER_OBJECT_ s_vectors, USER_OBJECT_ s_messages,
                        USER_OBJECT_ s_flags, USER_OBJECT_ s_cancellable)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 22, 0)
  GSocket* object = G_SOCKET(getPtrValue(s_object));
  GSocketAddress* address = G_SOCKET_ADDRESS(getPtrValue(s_address));
  GOutputVector vectors[] = {
    { RAW(s_vectors), GET_LENGTH(s_vectors) }
  };
  gint num_vectors = ((gint)GET_LENGTH(s_vectors));
  GSocketControlMessage** messages = s_messages == NULL_USER_OBJECT ? NULL : ((GSocketControlMessage**)asCArray(s_messages, GSocketControlMessage*, getPtrValue));
  gint num_messages = ((gint)GET_LENGTH(s_messages));
  gint flags = ((gint)asCInteger(s_flags));
  GCancellable* cancellable = GET_LENGTH(s_cancellable) == 0 ? NULL :
    G_CANCELLABLE(getPtrValue(s_cancellable));

  gssize ans;
  GError* error = NULL;

  ans = g_socket_send_message(object, address, vectors, num_vectors, messages,
                              num_messages, flags, cancellable, &error);

  _result = PROTECT(asRInteger(ans));

  _result = retByVal(_result, "error", PROTECT(asRGError(error)), NULL);
  UNPROTECT(2);
  CLEANUP(g_error_free, error);
#else
  error("g_socket_send_message exists only in gio >= 2.22.0");
#endif

  return(_result);
}

/* Special memory management of the buffer */
USER_OBJECT_
S_g_memory_output_stream_new(USER_OBJECT_ s_len)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if GIO_CHECK_VERSION(2, 16, 0)
  gsize len = asCInteger(s_len);
  gpointer data = g_new(guchar, len);

  GOutputStream* ans;

  ans = g_memory_output_stream_new(data, len, g_realloc, g_free);

  _result = toRPointerWithFinalizer(ans, "GOutputStream", (RPointerFinalizer) g_object_unref);
#else
  error("g_memory_output_stream_new exists only in gio >= 2.16.0");
#endif

  return(_result);
}
