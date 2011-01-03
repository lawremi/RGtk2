#include <RGtk2/gobject.h>
#include <RGtk2/gio.h>

USER_OBJECT_
S_GFileAttributeInfoListGetInfos (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

#if GIO_CHECK_VERSION(2, 16, 0)
   GFileAttributeInfoList *obj;
   GFileAttributeInfo* val;

   obj = ((GFileAttributeInfoList*)getPtrValue(s_obj)) ;
   val = obj->infos;
   _result = asRArrayRefWithSize(val, asRGFileAttributeInfo, obj->n_infos);
#else
  error("infos exists only in gio >= 2.16.0");
#endif

   return(_result);
} 
USER_OBJECT_
S_GFileAttributeInfoListGetNInfos (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result = NULL_USER_OBJECT;

#if GIO_CHECK_VERSION(2, 16, 0)
   GFileAttributeInfoList *obj;
   int val;

   obj = ((GFileAttributeInfoList*)getPtrValue(s_obj)) ;
   val = obj->n_infos;
   _result = asRInteger(val);
#else
  error("n_infos exists only in gio >= 2.16.0");
#endif

   return(_result);
} 
