#include "RGtk2/cairo.h"

/* reason: these two functions are just to efficiently copy paths between cairo contexts */
USER_OBJECT_
S_cairo_append_path_from_cairo(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_t* source = (cairo_t*)getPtrValue(s_source);
	cairo_path_t* path = cairo_copy_path(source);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	cairo_path_destroy(path);
	
	return(_result);
}
USER_OBJECT_
S_cairo_append_path_flat_from_cairo(USER_OBJECT_ s_cr, USER_OBJECT_ s_source)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_t* source = (cairo_t*)getPtrValue(s_source);
	cairo_path_t* path = cairo_copy_path_flat(source);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	return(_result);
}

/* reason: too lazy to change code to fix mem management on this
	- basically the code gen wants to free this with cairo_path_destroy,
	  but we are allocating this memory on the R heap.
*/
USER_OBJECT_
S_cairo_append_path(USER_OBJECT_ s_cr, USER_OBJECT_ s_path)
{
	cairo_t* cr = (cairo_t*)getPtrValue(s_cr);
	cairo_path_t* path = asCCairoPath(s_path);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	cairo_append_path(cr, path);

	return(_result);
}

cairo_status_t
S_cairo_read_func_t(gpointer s_closure, guchar* s_data, guint s_length)
{
  USER_OBJECT_ e;
  USER_OBJECT_ tmp;
  USER_OBJECT_ s_ans;
  guint i;
  
  PROTECT(e = allocVector(LANGSXP, 3));
  tmp = e;
  
  SETCAR(tmp, ((R_CallbackData *)s_closure)->function);
  tmp = CDR(tmp);

  SETCAR(tmp, asRNumeric(s_length));
  tmp = CDR(tmp);
  SETCAR(tmp, ((R_CallbackData *)s_closure)->data);
  tmp = CDR(tmp);

  s_ans = eval(e, R_GlobalEnv);

  for (i = 0; i < s_length && i < GET_LENGTH(VECTOR_ELT(s_ans, 1)); i++)
    s_data[i] = RAW(VECTOR_ELT(s_ans, 1))[i];
  
  UNPROTECT(1);
  return(((cairo_status_t)asCEnum(VECTOR_ELT(s_ans, 0), CAIRO_TYPE_STATUS)));
}

/* dash array needs to be pre-allocated */
USER_OBJECT_
S_cairo_get_dash(USER_OBJECT_ s_cr)
{
  USER_OBJECT_ _result = NULL_USER_OBJECT;
#if CAIRO_CHECK_VERSION(1, 4, 0)
  cairo_t* cr = ((cairo_t*)getPtrValue(s_cr));
  int count = cairo_get_dash_count(cr);
  
  double dashes[count];
  double offset;

  cairo_get_dash(cr, dashes, &offset);


  _result = retByVal(_result, "dashes", asRArrayWithSize(dashes, asRNumeric, count), "offset", asRNumeric(offset), NULL);
#else
  error("cairo_get_dash exists only in cairo >= 1.4.0");
#endif

  return(_result);
}
