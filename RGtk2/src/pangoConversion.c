#include "conversion.h"

PangoRectangle*
asCPangoRectangle(USER_OBJECT_ s_rect)
{
    return (PangoRectangle*)asCGdkRectangle(s_rect);
}

USER_OBJECT_
asRPangoRectangle(PangoRectangle *rect)
{
    return asRGdkRectangle((GdkRectangle*)rect);
}

USER_OBJECT_
toRPangoAttribute(PangoAttribute *attr, gboolean finalize)
{
    char *type;
    USER_OBJECT_ result;

    switch(attr->klass->type) {
         case PANGO_ATTR_LANGUAGE:
            type = "PangoAttrLanguage";
         break;
		 case PANGO_ATTR_FAMILY:
            type = "PangoAttrString";
         break;
		 case PANGO_ATTR_STYLE:
         case PANGO_ATTR_WEIGHT:
         case PANGO_ATTR_VARIANT:
         case PANGO_ATTR_STRETCH:
		 case PANGO_ATTR_UNDERLINE:
		 case PANGO_ATTR_STRIKETHROUGH:
		 case PANGO_ATTR_RISE:
		 case PANGO_ATTR_FALLBACK:
         case PANGO_ATTR_LETTER_SPACING:
         	type = "PangoAttrInt";
         break;
		 case PANGO_ATTR_SIZE:
		 case PANGO_ATTR_ABSOLUTE_SIZE:
            type = "PangoAttrSize";
         break;
		 case PANGO_ATTR_FONT_DESC:
            type = "PangoAttrFontDesc";
         break;
		 case PANGO_ATTR_FOREGROUND:
		 case PANGO_ATTR_BACKGROUND:
		 case PANGO_ATTR_UNDERLINE_COLOR:
		 case PANGO_ATTR_STRIKETHROUGH_COLOR:
            type = "PangoAttrColor";
         break;		 
		 case PANGO_ATTR_SHAPE:
            type = "PangoAttrShape";
         break;
		 case PANGO_ATTR_SCALE:
            type = "PangoAttrFloat";
         break;
	}
	
	RPointerFinalizer finalizer = NULL;
    if (finalize)
        finalizer = (RPointerFinalizer)pango_attribute_destroy;
	PROTECT(result = toRPointerWithFinalizer(attr, NULL, finalizer));
	
	char *classes[] = { type, "PangoAttribute", "RGtkObject", NULL };
    SET_CLASS(result, asRStringArray(classes));
	
	UNPROTECT(1);
	
	return(result);
}

USER_OBJECT_
asRPangoAttribute(PangoAttribute *attr)
{
    toRPangoAttribute(attr, TRUE);
}

/*
PangoMatrix*
asCPangoMatrix(USER_OBJECT_ s_matrix)
{
    PangoMatrix* matrix = (PangoMatrix *)R_alloc(1, sizeof(PangoMatrix));

    matrix->xx = asCNumeric(VECTOR_ELT(s_matrix, 0));
    matrix->xy = asCNumeric(VECTOR_ELT(s_matrix, 1));
    matrix->yx = asCNumeric(VECTOR_ELT(s_matrix, 2));
    matrix->yy = asCNumeric(VECTOR_ELT(s_matrix, 3));
    matrix->x0 = asCNumeric(VECTOR_ELT(s_matrix, 4));
    matrix->y0 = asCNumeric(VECTOR_ELT(s_matrix, 5));

    return(matrix);
}*/
