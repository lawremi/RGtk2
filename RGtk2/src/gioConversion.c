#include "RGtk2/gio.h"

#if GIO_CHECK_VERSION(2, 16, 0)
USER_OBJECT_
asRGFileAttributeInfo(const GFileAttributeInfo * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "name", "type", "flags", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 3));

  SET_VECTOR_ELT(s_obj, 0, asRString(obj->name));
  SET_VECTOR_ELT(s_obj, 1, asREnum(obj->type, G_TYPE_FILE_ATTRIBUTE_TYPE));
  SET_VECTOR_ELT(s_obj, 2, asRFlag(obj->flags, G_TYPE_FILE_ATTRIBUTE_INFO_FLAGS));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GFileAttributeInfo"));

  UNPROTECT(1);

  return(s_obj);
}
#endif
