#include "conversion.h"

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
