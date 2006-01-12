#include "conversion.h"


#include "RGtk2.h"

USER_OBJECT_
S_PangoColorGetRed (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoColor *obj;
   guint16 val;

   obj = (PangoColor*)getPtrValue(s_obj) ;
   val = obj->red;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoColorGetGreen (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoColor *obj;
   guint16 val;

   obj = (PangoColor*)getPtrValue(s_obj) ;
   val = obj->green;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoColorGetBlue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoColor *obj;
   guint16 val;

   obj = (PangoColor*)getPtrValue(s_obj) ;
   val = obj->blue;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphStringGetNumGlyphs (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphString *obj;
   gint val;

   obj = (PangoGlyphString*)getPtrValue(s_obj) ;
   val = obj->num_glyphs;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphStringGetGlyphs (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphString *obj;
   PangoGlyphInfo* val;

   obj = (PangoGlyphString*)getPtrValue(s_obj) ;
   val = obj->glyphs;
   _result = toRPointer(val, "PangoGlyphInfo");

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphStringGetLogClusters (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphString *obj;
   gint* val;

   obj = (PangoGlyphString*)getPtrValue(s_obj) ;
   val = obj->log_clusters;
   _result = asRIntegerArray(val);

   return(_result);
} 
USER_OBJECT_
S_PangoItemGetOffset (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoItem *obj;
   gint val;

   obj = (PangoItem*)getPtrValue(s_obj) ;
   val = obj->offset;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoItemGetLength (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoItem *obj;
   gint val;

   obj = (PangoItem*)getPtrValue(s_obj) ;
   val = obj->length;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoItemGetNumChars (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoItem *obj;
   gint val;

   obj = (PangoItem*)getPtrValue(s_obj) ;
   val = obj->num_chars;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoItemGetAnalysis (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoItem *obj;
   PangoAnalysis val;

   obj = (PangoItem*)getPtrValue(s_obj) ;
   val = obj->analysis;
   _result = toRPointer(&val, "PangoAnalysis");

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetLayout (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   PangoLayout* val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->layout;
   _result = toRPointerWithRef(val, "PangoLayout");

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetStartIndex (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   gint val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->start_index;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetLength (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   gint val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->length;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetRuns (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   GSList* val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->runs;
   _result = asRGSListWithFinalizer(val, "PangoGlyphItem", (RPointerFinalizer) pango_glyph_item_free);

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetIsParagraphStart (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   guint val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->is_paragraph_start;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLayoutLineGetResolvedDir (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLayoutLine *obj;
   guint val;

   obj = (PangoLayoutLine*)getPtrValue(s_obj) ;
   val = obj->resolved_dir;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAnalysisGetFont (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAnalysis *obj;
   PangoFont* val;

   obj = (PangoAnalysis*)getPtrValue(s_obj) ;
   val = obj->font;
   _result = toRPointerWithRef(val, "PangoFont");

   return(_result);
} 
USER_OBJECT_
S_PangoAnalysisGetLevel (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAnalysis *obj;
   guint8 val;

   obj = (PangoAnalysis*)getPtrValue(s_obj) ;
   val = obj->level;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAnalysisGetLanguage (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAnalysis *obj;
   PangoLanguage* val;

   obj = (PangoAnalysis*)getPtrValue(s_obj) ;
   val = obj->language;
   _result = toRPointer(val, "PangoLanguage");

   return(_result);
} 
USER_OBJECT_
S_PangoAnalysisGetExtraAttrs (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAnalysis *obj;
   GSList* val;

   obj = (PangoAnalysis*)getPtrValue(s_obj) ;
   val = obj->extra_attrs;
   _result = asRGSListConv(val, (ElementConverter)asRPangoAttribute);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsLineBreak (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_line_break;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsMandatoryBreak (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_mandatory_break;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsCharBreak (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_char_break;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsWhite (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_white;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsCursorPosition (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_cursor_position;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsWordStart (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_word_start;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsWordEnd (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_word_end;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsSentenceBoundary (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_sentence_boundary;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsSentenceStart (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_sentence_start;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetIsSentenceEnd (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->is_sentence_end;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoLogAttrGetBackspaceDeletesCharacter (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoLogAttr *obj;
   guint val;

   obj = (PangoLogAttr*)getPtrValue(s_obj) ;
   val = obj->backspace_deletes_character;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttributeGetKlass (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttribute *obj;
   const PangoAttrClass* val;

   obj = (PangoAttribute*)getPtrValue(s_obj) ;
   val = obj->klass;
   _result = toRPointer(val, "PangoAttrClass");

   return(_result);
} 
USER_OBJECT_
S_PangoAttributeGetStartIndex (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttribute *obj;
   guint val;

   obj = (PangoAttribute*)getPtrValue(s_obj) ;
   val = obj->start_index;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttributeGetEndIndex (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttribute *obj;
   guint val;

   obj = (PangoAttribute*)getPtrValue(s_obj) ;
   val = obj->end_index;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrClassGetType (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrClass *obj;
   PangoAttrType val;

   obj = (PangoAttrClass*)getPtrValue(s_obj) ;
   val = obj->type;
   _result = asREnum(val, PANGO_TYPE_ATTR_TYPE);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphItemGetItem (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphItem *obj;
   PangoItem* val;

   obj = (PangoGlyphItem*)getPtrValue(s_obj) ;
   val = obj->item;
   _result = toRPointer(val, "PangoItem");

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphItemGetGlyphs (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphItem *obj;
   PangoGlyphString* val;

   obj = (PangoGlyphItem*)getPtrValue(s_obj) ;
   val = obj->glyphs;
   _result = toRPointer(val, "PangoGlyphString");

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphInfoGetGlyph (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphInfo *obj;
   PangoGlyph val;

   obj = (PangoGlyphInfo*)getPtrValue(s_obj) ;
   val = obj->glyph;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphInfoGetGeometry (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphInfo *obj;
   PangoGlyphGeometry val;

   obj = (PangoGlyphInfo*)getPtrValue(s_obj) ;
   val = obj->geometry;
   _result = toRPointer(&val, "PangoGlyphGeometry");

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphInfoGetAttr (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphInfo *obj;
   PangoGlyphVisAttr val;

   obj = (PangoGlyphInfo*)getPtrValue(s_obj) ;
   val = obj->attr;
   _result = toRPointer(&val, "PangoGlyphVisAttr");

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphGeometryGetWidth (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphGeometry *obj;
   PangoGlyphUnit val;

   obj = (PangoGlyphGeometry*)getPtrValue(s_obj) ;
   val = obj->width;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphGeometryGetXOffset (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphGeometry *obj;
   PangoGlyphUnit val;

   obj = (PangoGlyphGeometry*)getPtrValue(s_obj) ;
   val = obj->x_offset;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphGeometryGetYOffset (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphGeometry *obj;
   PangoGlyphUnit val;

   obj = (PangoGlyphGeometry*)getPtrValue(s_obj) ;
   val = obj->y_offset;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoGlyphVisAttrGetIsClusterStart (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoGlyphVisAttr *obj;
   guint val;

   obj = (PangoGlyphVisAttr*)getPtrValue(s_obj) ;
   val = obj->is_cluster_start;
   _result = asRNumeric(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrStringGetValue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrString *obj;
   char* val;

   obj = (PangoAttrString*)getPtrValue(s_obj) ;
   val = obj->value;
   _result = asRString(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrLanguageGetValue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrLanguage *obj;
   PangoLanguage* val;

   obj = (PangoAttrLanguage*)getPtrValue(s_obj) ;
   val = obj->value;
   _result = toRPointer(val, "PangoLanguage");

   return(_result);
} 
USER_OBJECT_
S_PangoAttrColorGetColor (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrColor *obj;
   PangoColor val;

   obj = (PangoAttrColor*)getPtrValue(s_obj) ;
   val = obj->color;
   _result = toRPointer(&val, "PangoColor");

   return(_result);
} 
USER_OBJECT_
S_PangoAttrIntGetValue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrInt *obj;
   int val;

   obj = (PangoAttrInt*)getPtrValue(s_obj) ;
   val = obj->value;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrFloatGetValue (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrFloat *obj;
   float val;

   obj = (PangoAttrFloat*)getPtrValue(s_obj) ;
   val = obj->value;
   _result = toRPointer(&val, "Float");

   return(_result);
} 
USER_OBJECT_
S_PangoAttrFontDescGetDesc (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrFontDesc *obj;
   PangoFontDescription* val;

   obj = (PangoAttrFontDesc*)getPtrValue(s_obj) ;
   val = obj->desc;
   _result = toRPointer(val, "PangoFontDescription");

   return(_result);
} 
USER_OBJECT_
S_PangoAttrShapeGetInkRect (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrShape *obj;
   PangoRectangle val;

   obj = (PangoAttrShape*)getPtrValue(s_obj) ;
   val = obj->ink_rect;
   _result = asRPangoRectangle(&val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrShapeGetLogicalRect (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrShape *obj;
   PangoRectangle val;

   obj = (PangoAttrShape*)getPtrValue(s_obj) ;
   val = obj->logical_rect;
   _result = asRPangoRectangle(&val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrSizeGetSize (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrSize *obj;
   int val;

   obj = (PangoAttrSize*)getPtrValue(s_obj) ;
   val = obj->size;
   _result = asRInteger(val);

   return(_result);
} 
USER_OBJECT_
S_PangoAttrSizeGetAbsolute (USER_OBJECT_ s_obj)
{
   USER_OBJECT_ _result;

   PangoAttrSize *obj;
   guint val;

   obj = (PangoAttrSize*)getPtrValue(s_obj) ;
   val = obj->absolute;
   _result = asRNumeric(val);

   return(_result);
} 
