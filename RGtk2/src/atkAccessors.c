#include "conversion.h"


#include "RGtk2.h"

USER_OBJECT_
S_AtkKeyEventStructGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   gint val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->type;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetState (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   guint val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->state;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetKeyval (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   guint val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->keyval;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetLength (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   gint val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->length;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetString (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   gchar* val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->string;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetKeycode (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   guint16 val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->keycode;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_AtkKeyEventStructGetTimestamp (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   AtkKeyEventStruct *obj;
   guint32 val;

   obj = (AtkKeyEventStruct*)getPtrValue(s_obj) ;
   val = obj->timestamp;
   _result = asRNumeric(val);

   return(_result);
} 
