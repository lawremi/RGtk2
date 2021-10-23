#include "RGtk2/cairo.h"

USER_OBJECT_
asRCairoPath(cairo_path_t *path)
{
	static gchar *pathNames[] = { "status", "data", NULL };
	
	cairo_path_data_t *data;
	gint i, j;
	USER_OBJECT_ s_path, s_data;
	
	PROTECT(s_path = NEW_LIST(2));
	SET_VECTOR_ELT(s_path, 0, asREnum(path->status, CAIRO_TYPE_STATUS));
	
	for (i = 0, j = 0; i < path->num_data; i++, j++) {
		i += path->data[i].header.length;
	}
	
	s_data = NEW_LIST(j);
	SET_VECTOR_ELT(s_path, 1, s_data);
	
	for (i = 0, j = 0; i < path->num_data; i+= data->header.length, j++) {
		USER_OBJECT_ s_data_el = NULL_USER_OBJECT;
		data = &path->data[i];
		switch(data->header.type) {
		case CAIRO_PATH_MOVE_TO:
		case CAIRO_PATH_LINE_TO:
			PROTECT(s_data_el = NEW_INTEGER(2));
			INTEGER_DATA(s_data_el)[0] = data[1].point.x;
			INTEGER_DATA(s_data_el)[1] = data[1].point.y;
		break;
		case CAIRO_PATH_CURVE_TO:
			PROTECT(s_data_el = NEW_INTEGER(6));
			INTEGER_DATA(s_data_el)[0] = data[1].point.x;
			INTEGER_DATA(s_data_el)[1] = data[1].point.y;
			INTEGER_DATA(s_data_el)[2] = data[2].point.x;
			INTEGER_DATA(s_data_el)[3] = data[2].point.y;
			INTEGER_DATA(s_data_el)[4] = data[3].point.x;
			INTEGER_DATA(s_data_el)[5] = data[3].point.y;
		break;
		case CAIRO_PATH_CLOSE_PATH:
			PROTECT(s_data_el = NEW_INTEGER(0));
		break;
		default:
		    Rf_error("Converting Cairo path: did not understand type %d", data->header.type);
		}
		setAttrib(s_data_el, install("type"),
			  PROTECT(asRInteger(data->header.type)));
		UNPROTECT(2);
		SET_VECTOR_ELT(s_data, j, s_data_el);
	}
	
	SET_NAMES(s_path, asRStringArray(pathNames));
	
	UNPROTECT(1);
	
	return(s_path);
}

/** the cairo people say that we shouldn't do this - oh well */
cairo_path_t *
asCCairoPath(USER_OBJECT_ s_path)
{
	cairo_path_t *path;
	cairo_path_data_t *element;
	GSList *data = NULL, *cur;
	gint i,j;
	
	/* init path structure */
	path = (cairo_path_t*)R_alloc(1, sizeof(cairo_path_t));
	
	/* set status code */
	path->status = CAIRO_STATUS_SUCCESS;
	
	/* for each path element, create points according to type and store in list */
	for (i = 0; i < GET_LENGTH(s_path); i++) {
		USER_OBJECT_ s_element = VECTOR_ELT(s_path, i);
		int points = 0, len;
		cairo_path_data_type_t type = asCEnum(getAttrib(s_element, install("type")),
      CAIRO_TYPE_PATH_DATA_TYPE);
		/* how many points do we need for this type of element? */
		switch(type) {
			case CAIRO_PATH_MOVE_TO:
			case CAIRO_PATH_LINE_TO:
				points = 1;
			break;
			case CAIRO_PATH_CURVE_TO:
				points = 3;
			break;
			case CAIRO_PATH_CLOSE_PATH:
				points = 0;
			break;
			default:
			    Rf_error("Converting Cairo path: did not understand type %d", type);
		}
		len = points + 1; /* have to include header */
		element = (cairo_path_data_t*)R_alloc(len, sizeof(cairo_path_data_t));
		/* define header element */
		element[0].header.type = type;
		element[0].header.length = len;
		data = g_slist_append(data, &element[0]); /* add header to list */
		for (j = 1; j < len; j++) { /* define points */
			element[j].point.x = INTEGER_DATA(s_element)[2*j];
			element[j].point.y = INTEGER_DATA(s_element)[2*j+1];
			data = g_slist_append(data, &element[j]); /* add point to list */
		}
	}
	
	/* initialize the path's data array */
	path->num_data = g_slist_length(data);
	path->data = (cairo_path_data_t*)R_alloc(path->num_data, sizeof(cairo_path_data_t));
	
	/* copy list into array */
	cur = data;
	for(i = 0; i < path->num_data; i++) {
		path->data[i] = ((cairo_path_data_t*)cur->data)[0];
		cur = g_slist_next(cur);
	}

	return(path);	
}

cairo_glyph_t *
asCCairoGlyph(USER_OBJECT_ s_glyph)
{
	cairo_glyph_t *glyph = (cairo_glyph_t *)R_alloc(1, sizeof(cairo_glyph_t));
	
	glyph->index = asCNumeric(VECTOR_ELT(s_glyph, 0));
	glyph->x = asCNumeric(VECTOR_ELT(s_glyph, 1));
	glyph->y = asCNumeric(VECTOR_ELT(s_glyph, 2));
	
	return(glyph);
}

USER_OBJECT_
asRCairoGlyph(cairo_glyph_t * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "index", "x", "y", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 3));

  SET_VECTOR_ELT(s_obj, 0, asRNumeric(obj->index));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->x));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->y));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("CairoGlyph"));

  UNPROTECT(1);

  return(s_obj);
}

#if CAIRO_CHECK_VERSION(1,4,0)
USER_OBJECT_
asRCairoRectangle(cairo_rectangle_t * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "x", "y", "width", "height", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 4));

  SET_VECTOR_ELT(s_obj, 0, asRNumeric(obj->x));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->y));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->width));
  SET_VECTOR_ELT(s_obj, 3, asRNumeric(obj->height));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("CairoRectangle"));

  UNPROTECT(1);

  return(s_obj);
}

USER_OBJECT_
asRCairoRectangleList(cairo_rectangle_list_t *list)
{
  static gchar *listNames[] = { "status", "rectangles", NULL };
  guint i;
  USER_OBJECT_ s_list, s_rects;
  
  PROTECT(s_list = NEW_LIST(2));
  
  SET_VECTOR_ELT(s_list, 0, asREnum(list->status, CAIRO_TYPE_STATUS));
  
  PROTECT(s_rects = NEW_LIST(list->num_rectangles));
  for (i = 0; i < list->num_rectangles; i++)
    SET_VECTOR_ELT(s_rects, i, asRCairoRectangle(list->rectangles+i));
  
  SET_VECTOR_ELT(s_list, 1, s_rects);
  
  SET_NAMES(s_list, asRStringArray(listNames));
  SET_CLASS(s_list, asRString("CairoRectangleList"));
  
  UNPROTECT(2);
  return(s_list);
}
#endif

#if CAIRO_CHECK_VERSION(1, 8, 0)
cairo_text_cluster_t *
asCCairoTextCluster(USER_OBJECT_ s_obj)
{
  cairo_text_cluster_t * obj;

  obj = ((cairo_text_cluster_t *)R_alloc(1, sizeof(cairo_text_cluster_t)));

  obj->num_bytes = ((int)asCInteger(VECTOR_ELT(s_obj, 0)));
  obj->num_glyphs = ((int)asCInteger(VECTOR_ELT(s_obj, 1)));

  return(obj);
}
USER_OBJECT_
asRCairoTextCluster(cairo_text_cluster_t * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "num_bytes", "num_glyphs", NULL };
  
  PROTECT(s_obj = allocVector(VECSXP, 2));
  
  SET_VECTOR_ELT(s_obj, 0, asRInteger(obj->num_bytes));
  SET_VECTOR_ELT(s_obj, 1, asRInteger(obj->num_glyphs));
  
  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("CairoTextCluster"));
  
  UNPROTECT(1);
  
  return(s_obj);
}
#endif

cairo_font_extents_t *
asCCairoFontExtents(USER_OBJECT_ s_obj)
{
  cairo_font_extents_t * obj;

  obj = ((cairo_font_extents_t *)R_alloc(1, sizeof(cairo_font_extents_t)));

  obj->ascent = ((double)asCNumeric(VECTOR_ELT(s_obj, 0)));
  obj->descent = ((double)asCNumeric(VECTOR_ELT(s_obj, 1)));
  obj->height = ((double)asCNumeric(VECTOR_ELT(s_obj, 2)));
  obj->max_x_advance = ((double)asCNumeric(VECTOR_ELT(s_obj, 3)));
  obj->max_y_advance = ((double)asCNumeric(VECTOR_ELT(s_obj, 4)));

  return(obj);
}

USER_OBJECT_
asRCairoFontExtents(cairo_font_extents_t * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "ascent", "descent", "height", "max_x_advance", "max_y_advance", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 5));

  SET_VECTOR_ELT(s_obj, 0, asRNumeric(obj->ascent));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->descent));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->height));
  SET_VECTOR_ELT(s_obj, 3, asRNumeric(obj->max_x_advance));
  SET_VECTOR_ELT(s_obj, 4, asRNumeric(obj->max_y_advance));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("CairoFontExtents"));

  UNPROTECT(1);

  return(s_obj);
}
