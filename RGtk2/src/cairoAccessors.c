#include "conversion.h"


#include "RGtk2.h"

USER_OBJECT_
S_CairoMatrixGetXx (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->xx;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoMatrixGetYx (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->yx;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoMatrixGetXy (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->xy;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoMatrixGetYy (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->yy;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoMatrixGetX0 (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->x0;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoMatrixGetY0 (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_matrix_t *obj;
   double val;

   obj = (cairo_matrix_t*)getPtrValue(s_obj) ;
   val = obj->y0;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetXBearing (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->x_bearing;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetYBearing (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->y_bearing;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->width;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->height;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetXAdvance (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->x_advance;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoTextExtentsGetYAdvance (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_text_extents_t *obj;
   double val;

   obj = (cairo_text_extents_t*)getPtrValue(s_obj) ;
   val = obj->y_advance;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoFontExtentsGetAscent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_font_extents_t *obj;
   double val;

   obj = (cairo_font_extents_t*)getPtrValue(s_obj) ;
   val = obj->ascent;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoFontExtentsGetDescent (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_font_extents_t *obj;
   double val;

   obj = (cairo_font_extents_t*)getPtrValue(s_obj) ;
   val = obj->descent;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoFontExtentsGetHeight (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_font_extents_t *obj;
   double val;

   obj = (cairo_font_extents_t*)getPtrValue(s_obj) ;
   val = obj->height;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoFontExtentsGetMaxXAdvance (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_font_extents_t *obj;
   double val;

   obj = (cairo_font_extents_t*)getPtrValue(s_obj) ;
   val = obj->max_x_advance;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_CairoFontExtentsGetMaxYAdvance (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   cairo_font_extents_t *obj;
   double val;

   obj = (cairo_font_extents_t*)getPtrValue(s_obj) ;
   val = obj->max_y_advance;
   _result = asRNumeric(val);

   return(_result);
} 
