#include "conversion.h"
#include "utils.h"

/* reason: hide string length (bytes) and allocate PangoLogAttr array. */
USER_OBJECT_
 S_pango_get_log_attrs (USER_OBJECT_ s_text, USER_OBJECT_ s_level, USER_OBJECT_ s_language )
{
         const char* text = asCString(s_text);
         int length = strlen(text);
         int level = asCInteger(s_level);
         PangoLanguage* language = (PangoLanguage*)getPtrValue(s_language);
         PangoLogAttr* log_attrs;
		 int attrs_len = g_utf8_strlen(text, length) + 1;
		 
         USER_OBJECT_ _result = NULL_USER_OBJECT;

         log_attrs = (PangoLogAttr*)R_alloc(attrs_len, sizeof(PangoLogAttr));
         pango_get_log_attrs(text, length, level, language, log_attrs, attrs_len);

         _result = retByVal(_result, "log_attrs", asRStructArrayWithSize(log_attrs, "PangoLogAttr", attrs_len), NULL);
         return(_result);
}

USER_OBJECT_
 S_pango_break ( USER_OBJECT_ s_text, USER_OBJECT_ s_analysis )
{
         const gchar* text = asCString(s_text);
         gint length = -1;
         PangoAnalysis* analysis = (PangoAnalysis*)getPtrValue(s_analysis) ;
         PangoLogAttr* attrs;
		 int attrs_len = g_utf8_strlen(text, length) + 1;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        attrs = ( PangoLogAttr* )R_alloc(attrs_len, sizeof( PangoLogAttr )) ;
        pango_break ( text, length, analysis, attrs, attrs_len );

        _result = retByVal(_result, "attrs", asRStructArrayWithSize(attrs, "PangoLogAttr", attrs_len), NULL);

        return(_result);
}
USER_OBJECT_
 S_pango_glyph_string_get_logical_widths ( USER_OBJECT_ s_object, USER_OBJECT_ s_text, USER_OBJECT_ s_embedding_level )
{
         PangoGlyphString* object = (PangoGlyphString*)getPtrValue(s_object) ;
         const char* text = asCString(s_text);
         int length, widths_len;
         int embedding_level = asCInteger(s_embedding_level);
         USER_OBJECT_ _result = NULL_USER_OBJECT;

         length = strlen(text);
		 widths_len = g_utf8_strlen(text, length);
         int* logical_widths = (int *)R_alloc(widths_len, sizeof(int));
          pango_glyph_string_get_logical_widths ( object, text, length, embedding_level, logical_widths );

        _result = retByVal(_result, "logical_widths", asRIntegerArrayWithSize ( logical_widths, widths_len ), NULL);

        return(_result);
}

/* reason: need to obtain size of returned arrays using specific method */
USER_OBJECT_
 S_pango_tab_array_get_tabs ( USER_OBJECT_ s_object )
{
         PangoTabArray* object = (PangoTabArray*)getPtrValue(s_object) ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;
        int size;

         PangoTabAlign* alignments = NULL ;
         gint* locations = NULL ;

          pango_tab_array_get_tabs ( object, &alignments, &locations );

          size = pango_tab_array_get_size(object);

        _result = retByVal(_result, "alignments", asRIntegerArrayWithSize ( alignments, size ), "locations", asRIntegerArrayWithSize ( locations, size ), NULL);

        return(_result);
}

/* reason: functional way to create a reference to a PangoMatrix does not exist in API */
USER_OBJECT_
S_pango_matrix_init()
{
	PangoMatrix matrix = PANGO_MATRIX_INIT;
	PangoMatrix *newMatrix = pango_matrix_copy(&matrix);
	return(toRPointerWithFinalizer(newMatrix, "PangoMatrix", (RPointerFinalizer)pango_matrix_free));
}

/* reason: should not free internal list of lines */
USER_OBJECT_
S_pango_layout_get_lines(USER_OBJECT_ s_object)
{
        PangoLayout* object = PANGO_LAYOUT(getPtrValue(s_object));

        GSList* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = pango_layout_get_lines(object);

        _result = asRGSList(ans, "PangoLayoutLine");

        return(_result);
}

/* reason: PangoFontDescription requires special allocation function */
USER_OBJECT_
S_pango_attr_iterator_get_font(USER_OBJECT_ s_object)
{
	PangoAttrIterator* object = (PangoAttrIterator*)getPtrValue(s_object);

	USER_OBJECT_ _result = NULL_USER_OBJECT;
	PangoFontDescription* desc = pango_font_description_new();
	PangoLanguage* language = NULL;
	GSList* extra_attrs = NULL;

	pango_attr_iterator_get_font(object, desc, &language, &extra_attrs);


	_result = retByVal(_result, "desc", toRPointerWithFinalizer(desc, "PangoFontDescription", (RPointerFinalizer) pango_font_description_free), "language", toRPointer(language, "PangoLanguage"), "extra_attrs", asRGSListWithFinalizer(extra_attrs, "PangoAttribute", (RPointerFinalizer) pango_attribute_destroy), NULL);
	CLEANUP(g_slist_free, extra_attrs);

	return(_result);
}

