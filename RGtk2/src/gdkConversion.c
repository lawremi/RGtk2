#include "RGtk2/gtk.h"

USER_OBJECT_
asRGdkAtom(GdkAtom val)
{
  USER_OBJECT_ ans;
  char *tmp;
  PROTECT(ans = toRPointer(GDK_ATOM_TO_POINTER(val), "GdkAtom"));
  tmp = gdk_atom_name(val);
  if(tmp) {
    setAttrib(ans, install("name"), PROTECT(asRString(tmp)));
    UNPROTECT(1);
  }
  UNPROTECT(1);
  return(ans);
}
GdkAtom
asCGdkAtom(USER_OBJECT_ s_atom)
{
    GdkAtom atom;
    if (TYPEOF(s_atom) == EXTPTRSXP)
      atom = GDK_POINTER_TO_ATOM(getPtrValue(s_atom));
    else if (IS_NUMERIC(s_atom))
      atom = _GDK_MAKE_ATOM((guint)asCNumeric(s_atom));
    else atom = gdk_atom_intern(asCString(s_atom), FALSE);
    return(atom);
}
GdkAtom*
asCGdkAtomArray(USER_OBJECT_ s_atoms)
{
    int i;
    USER_OBJECT_ s_array;
    GdkAtom *array;

    PROTECT(s_array = NEW_LIST(1));
    if (GET_LENGTH(VECTOR_ELT(s_atoms, 0)) == 1)
        SET_VECTOR_ELT(s_array, 0, s_atoms);
    else s_array = s_atoms;

    array = (GdkAtom *)R_alloc(GET_LENGTH(s_array), sizeof(GdkAtom));
    for (i = 0; i < GET_LENGTH(s_array); i++) {
        array[i] = asCGdkAtom(VECTOR_ELT(s_array, i));
    }

    UNPROTECT(1);

    return(array);
}

GdkWindowAttr*
asCGdkWindowAttr(USER_OBJECT_ s_window_attr, GdkWindowAttributesType *mask)
{
	GdkWindowAttr* attr = (GdkWindowAttr*)S_alloc(1, sizeof(GdkWindowAttr));
	*mask = 0;
  
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 0)) > 0) {
		*mask |= GDK_WA_TITLE;
		attr->title = (gchar *)asCString(VECTOR_ELT(s_window_attr, 0));
	}
	attr->event_mask = asCInteger(VECTOR_ELT(s_window_attr, 1));
  if (GET_LENGTH(VECTOR_ELT(s_window_attr, 2)) > 0) {
    *mask |= GDK_WA_X;
    attr->x = asCInteger(VECTOR_ELT(s_window_attr, 2));
  }
  if (GET_LENGTH(VECTOR_ELT(s_window_attr, 3)) > 0) {
    *mask |= GDK_WA_Y;
    attr->y = asCInteger(VECTOR_ELT(s_window_attr, 3));
  }
	attr->width = asCInteger(VECTOR_ELT(s_window_attr, 4));
	attr->height = asCInteger(VECTOR_ELT(s_window_attr, 5));
	attr->wclass = asCEnum(VECTOR_ELT(s_window_attr, 6), GDK_TYPE_WINDOW_CLASS);
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 7)) > 0) {
		*mask |= GDK_WA_VISUAL;
		attr->visual = GDK_VISUAL(getPtrValue(VECTOR_ELT(s_window_attr, 7)));
	}
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 8)) > 0) {
		*mask |= GDK_WA_COLORMAP;
		attr->colormap = GDK_COLORMAP(getPtrValue(VECTOR_ELT(s_window_attr, 8)));
	}
	attr->window_type = asCEnum(VECTOR_ELT(s_window_attr, 9), GDK_TYPE_WINDOW_TYPE);
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 10)) > 0) {
		*mask |= GDK_WA_CURSOR;
		attr->cursor = (GdkCursor*)getPtrValue(VECTOR_ELT(s_window_attr, 10));
	}
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 11)) > 0) {
		*mask |= GDK_WA_WMCLASS;
		attr->wmclass_name = (gchar *)asCString(VECTOR_ELT(s_window_attr, 11));
		attr->wmclass_class = (gchar *)asCString(VECTOR_ELT(s_window_attr, 12));
	}
	if (GET_LENGTH(VECTOR_ELT(s_window_attr, 13)) > 0) {
		*mask |= GDK_WA_NOREDIR;
		attr->override_redirect = asCLogical(VECTOR_ELT(s_window_attr, 13));
	}
	return(attr);
}
GdkGeometry*
asCGdkGeometry(USER_OBJECT_ s_geom, GdkWindowHints *hints)
{
    GdkGeometry* geom = (GdkGeometry*)R_alloc(1, sizeof(GdkGeometry));
    *hints = 0;
    if (GET_LENGTH(VECTOR_ELT(s_geom, 0)) > 0) {
        *hints |= GDK_HINT_MIN_SIZE;
        geom->min_width = INTEGER_DATA(VECTOR_ELT(s_geom, 0))[0];
        geom->min_height = INTEGER_DATA(VECTOR_ELT(s_geom, 1))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_geom, 2)) > 0) {
        *hints |= GDK_HINT_MAX_SIZE;
        geom->max_width = INTEGER_DATA(VECTOR_ELT(s_geom, 2))[0];
        geom->max_height = INTEGER_DATA(VECTOR_ELT(s_geom, 3))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_geom, 4)) > 0) {
        *hints |= GDK_HINT_BASE_SIZE;
        geom->max_width = INTEGER_DATA(VECTOR_ELT(s_geom, 4))[0];
        geom->max_height = INTEGER_DATA(VECTOR_ELT(s_geom, 5))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_geom, 6)) > 0) {
        *hints |= GDK_HINT_RESIZE_INC;
        geom->width_inc = INTEGER_DATA(VECTOR_ELT(s_geom, 6))[0];
        geom->height_inc = INTEGER_DATA(VECTOR_ELT(s_geom, 7))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_geom, 8)) > 0) {
        *hints |= GDK_HINT_ASPECT;
        geom->min_aspect = NUMERIC_DATA(VECTOR_ELT(s_geom, 8))[0];
        geom->max_aspect = NUMERIC_DATA(VECTOR_ELT(s_geom, 9))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_geom, 10)) > 0) {
        *hints |= GDK_HINT_WIN_GRAVITY;
        geom->win_gravity = (GdkGravity)INTEGER_DATA(VECTOR_ELT(s_geom, 8))[0];
    }
    return(geom);
}

GdkGCValues*
asCGdkGCValues(USER_OBJECT_ s_values)
{
  GdkGCValuesMask mask;
  return asCGdkGCValuesWithMask(s_values, &mask);
}
GdkGCValues*
asCGdkGCValuesWithMask(USER_OBJECT_ s_values, GdkGCValuesMask *mask)
{
    GdkGCValues* values = (GdkGCValues*)R_alloc(1, sizeof(GdkGCValues));
    *mask = 0;
    if (GET_LENGTH(VECTOR_ELT(s_values, 0)) > 0) {
        *mask |= GDK_GC_FOREGROUND;
        values->foreground = *asCGdkColor(VECTOR_ELT(s_values, 0));
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 1)) > 0) {
        *mask |= GDK_GC_BACKGROUND;
        values->background = *asCGdkColor(VECTOR_ELT(s_values, 1));
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 2)) > 0) {
        *mask |= GDK_GC_FONT;
        values->font = (GdkFont*)getPtrValue(VECTOR_ELT(s_values, 2));
    } 
    if (GET_LENGTH(VECTOR_ELT(s_values, 3)) > 0) {
        *mask |= GDK_GC_FUNCTION;
        values->function = (GdkFunction)INTEGER_DATA(VECTOR_ELT(s_values, 3))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 4)) > 0) {
        *mask |= GDK_GC_FILL;
        values->fill = (GdkFill)INTEGER_DATA(VECTOR_ELT(s_values, 4))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 5)) > 0) {
        *mask |= GDK_GC_TILE;
        values->tile = (GdkPixmap*)getPtrValue(VECTOR_ELT(s_values, 5));
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 6)) > 0) {
        *mask |= GDK_GC_TILE;
        values->stipple = (GdkPixmap*)getPtrValue(VECTOR_ELT(s_values, 6));
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 7)) > 0) {
        *mask |= GDK_GC_CLIP_MASK;
        values->clip_mask = (GdkPixmap*)getPtrValue(VECTOR_ELT(s_values, 7));
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 8)) > 0) {
        *mask |= GDK_GC_SUBWINDOW;
        values->subwindow_mode = (GdkSubwindowMode)INTEGER_DATA(VECTOR_ELT(s_values, 8))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 9)) > 0) {
        *mask |= GDK_GC_TS_X_ORIGIN;
        values->ts_x_origin = INTEGER_DATA(VECTOR_ELT(s_values, 9))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 10)) > 0) {
        *mask |= GDK_GC_TS_Y_ORIGIN;
        values->ts_y_origin = INTEGER_DATA(VECTOR_ELT(s_values, 10))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 11)) > 0) {
        *mask |= GDK_GC_CLIP_X_ORIGIN;
        values->clip_x_origin = INTEGER_DATA(VECTOR_ELT(s_values, 11))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 12)) > 0) {
        *mask |= GDK_GC_CLIP_Y_ORIGIN;
        values->clip_y_origin = INTEGER_DATA(VECTOR_ELT(s_values, 12))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 13)) > 0) {
        *mask |= GDK_GC_EXPOSURES;
        values->graphics_exposures = INTEGER_DATA(VECTOR_ELT(s_values, 13))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 14)) > 0) {
        *mask |= GDK_GC_LINE_WIDTH;
        values->line_width = INTEGER_DATA(VECTOR_ELT(s_values, 14))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 15)) > 0) {
        *mask |= GDK_GC_LINE_STYLE;
        values->line_style = (GdkLineStyle)INTEGER_DATA(VECTOR_ELT(s_values, 15))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 16)) > 0) {
        *mask |= GDK_GC_CAP_STYLE;
        values->cap_style = (GdkCapStyle)INTEGER_DATA(VECTOR_ELT(s_values, 16))[0];
    }
    if (GET_LENGTH(VECTOR_ELT(s_values, 17)) > 0) {
        *mask |= GDK_GC_JOIN_STYLE;
        values->join_style = (GdkJoinStyle)INTEGER_DATA(VECTOR_ELT(s_values, 17))[0];
    }
	
	return(values);
}

USER_OBJECT_
asRGdkGCValues(GdkGCValues *values)
{
    USER_OBJECT_ s_values;
	static char *names[] = { "foreground", "background", "font", "function", "fill", "tile", "stipple", 
		"clip.mask", "subwindow.mode", "ts.x.origin", "ts.y.origin", "clip.x.origin", "clip.y.origin", 
		"graphics.exposures", "line.width", "line.style", "cap.style", "join.style", NULL };

    PROTECT(s_values = NEW_LIST(18));

    SET_VECTOR_ELT(s_values, 0, asRGdkColor(&values->foreground));
    SET_VECTOR_ELT(s_values, 1, asRGdkColor(&values->background));
    SET_VECTOR_ELT(s_values, 2, toRGdkFont(values->font));
    SET_VECTOR_ELT(s_values, 3, toRPointer(&values->function, "GdkFunction"));
    SET_VECTOR_ELT(s_values, 4, asREnum(values->fill, GDK_TYPE_FILL));
    SET_VECTOR_ELT(s_values, 5, toRPointerWithRef(values->tile, "GdkPixmap"));
    SET_VECTOR_ELT(s_values, 6, toRPointerWithRef(values->stipple, "GdkPixmap"));
    SET_VECTOR_ELT(s_values, 7, toRPointerWithRef(values->clip_mask, "GdkPixmap"));
    SET_VECTOR_ELT(s_values, 8, asREnum(values->subwindow_mode, GDK_TYPE_SUBWINDOW_MODE));
    SET_VECTOR_ELT(s_values, 9, asRInteger(values->ts_x_origin));
    SET_VECTOR_ELT(s_values, 10, asRInteger(values->ts_y_origin));
    SET_VECTOR_ELT(s_values, 11, asRInteger(values->clip_x_origin));
    SET_VECTOR_ELT(s_values, 12, asRInteger(values->clip_y_origin));
    SET_VECTOR_ELT(s_values, 13, asRInteger(values->graphics_exposures));
    SET_VECTOR_ELT(s_values, 14, asRInteger(values->line_width));
    SET_VECTOR_ELT(s_values, 15, asREnum(values->line_style, GDK_TYPE_LINE_STYLE));
    SET_VECTOR_ELT(s_values, 16, asREnum(values->cap_style, GDK_TYPE_CAP_STYLE));
    SET_VECTOR_ELT(s_values, 17, asREnum(values->join_style, GDK_TYPE_JOIN_STYLE));

	SET_NAMES(s_values, asRStringArray(names));
	
    UNPROTECT(1);

    return(s_values);
}

USER_OBJECT_
asRGdkTimeCoord(GdkTimeCoord* coord, int num_axes)
{
    USER_OBJECT_ s_coord;
	static char *names[] = { "time", "axes", NULL };

    PROTECT(s_coord = NEW_LIST(2));

    SET_VECTOR_ELT(s_coord, 0, asRNumeric(coord->time));
    SET_VECTOR_ELT(s_coord, 1, asRNumericArrayWithSize(coord->axes, num_axes));
	
	SET_NAMES(s_coord, asRStringArray(names));

    UNPROTECT(1);

    return(s_coord);
}

GdkRectangle*
asCGdkRectangle(USER_OBJECT_ s_rect)
{
    GdkRectangle* rect;

    rect = (GdkRectangle*)R_alloc(1, sizeof(GdkRectangle));

    rect->x = INTEGER_DATA(VECTOR_ELT(s_rect, 0))[0];
    rect->y = INTEGER_DATA(VECTOR_ELT(s_rect, 1))[0];
    rect->width = INTEGER_DATA(VECTOR_ELT(s_rect, 2))[0];
    rect->height = INTEGER_DATA(VECTOR_ELT(s_rect, 3))[0];

    return(rect);
}

USER_OBJECT_
asRGdkRectangle(GdkRectangle *rect)
{
    USER_OBJECT_ s_rect;
	static char *names[] = { "x", "y", "width", "height", NULL };

    PROTECT(s_rect = NEW_LIST(4));

    SET_VECTOR_ELT(s_rect, 0, asRInteger(rect->x));
    SET_VECTOR_ELT(s_rect, 1, asRInteger(rect->y));
    SET_VECTOR_ELT(s_rect, 2, asRInteger(rect->width));
    SET_VECTOR_ELT(s_rect, 3, asRInteger(rect->height));
	
	SET_NAMES(s_rect, asRStringArray(names));

    UNPROTECT(1);

    return(s_rect);
}

GdkSpan*
asCGdkSpan(USER_OBJECT_ s_span)
{
    GdkSpan* span;

    span = (GdkSpan*)R_alloc(1, sizeof(GdkSpan));

    span->x = INTEGER_DATA(VECTOR_ELT(s_span, 0))[0];
    span->y = INTEGER_DATA(VECTOR_ELT(s_span, 1))[0];
    span->width = INTEGER_DATA(VECTOR_ELT(s_span, 2))[0];

    return(span);
}

USER_OBJECT_
asRGdkSpan(GdkSpan * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "x", "y", "width", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 3));

  SET_VECTOR_ELT(s_obj, 0, asRInteger(obj->x));
  SET_VECTOR_ELT(s_obj, 1, asRInteger(obj->y));
  SET_VECTOR_ELT(s_obj, 2, asRInteger(obj->width));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GdkSpan"));

  UNPROTECT(1);

  return(s_obj);
}

GdkRgbCmap*
asCGdkRgbCmap(USER_OBJECT_ s_cmap)
{
    int i;
    GdkRgbCmap* cmap;

    cmap = (GdkRgbCmap*)R_alloc(1, sizeof(GdkRgbCmap));

    for (i = 0; i < GET_LENGTH(s_cmap); i++)
        cmap->colors[i] = (guint32)NUMERIC_DATA(s_cmap)[i];

    cmap->n_colors = GET_LENGTH(s_cmap);

    return(cmap);
}
USER_OBJECT_
asRGdkRgbCmap(GdkRgbCmap *map)
{
    return(asRNumericArrayWithSize(map->colors, map->n_colors));
}

GdkKeymapKey*
asCGdkKeymapKey(USER_OBJECT_ s_key)
{
    GdkKeymapKey* key;

    key = (GdkKeymapKey*)R_alloc(1, sizeof(GdkKeymapKey));

    key->keycode = NUMERIC_DATA(VECTOR_ELT(s_key, 0))[0];
    key->group = INTEGER_DATA(VECTOR_ELT(s_key, 1))[0];
    key->level = INTEGER_DATA(VECTOR_ELT(s_key, 2))[0];

    return(key);
}
USER_OBJECT_
asRGdkKeymapKey(GdkKeymapKey* key)
{
    USER_OBJECT_ s_key;
	static char *names[] = { "keycode", "group", "level", NULL };

    PROTECT(s_key = NEW_LIST(3));

    SET_VECTOR_ELT(s_key, 0, asRNumeric(key->keycode));
    SET_VECTOR_ELT(s_key, 1, asRInteger(key->group));
    SET_VECTOR_ELT(s_key, 2, asRInteger(key->level));
	
	SET_NAMES(s_key, asRStringArray(names));

    UNPROTECT(1);

    return(s_key);
}

GdkPoint*
asCGdkPoint(USER_OBJECT_ s_point)
{
    GdkPoint* point;

    point = (GdkPoint*)R_alloc(1, sizeof(GdkPoint));

    point->x = INTEGER_DATA(VECTOR_ELT(s_point,0))[0];
    point->y = INTEGER_DATA(VECTOR_ELT(s_point,1))[0];

    return(point);
}
USER_OBJECT_
asRGdkPoint(GdkPoint *point)
{
    USER_OBJECT_ s_point;
	static char *names[] = { "x", "y", NULL };

    PROTECT(s_point = NEW_LIST(2));

    SET_VECTOR_ELT(s_point, 0, asRInteger(point->x));
    SET_VECTOR_ELT(s_point, 1, asRInteger(point->y));

	SET_NAMES(s_point, asRStringArray(names));
	
    UNPROTECT(1);

    return(s_point);
}

GdkSegment*
asCGdkSegment(USER_OBJECT_ s_segment)
{
    GdkSegment* segment;

    segment = (GdkSegment*)R_alloc(1, sizeof(GdkSegment));

    segment->x1 = INTEGER_DATA(VECTOR_ELT(s_segment,0))[0];
    segment->y1 = INTEGER_DATA(VECTOR_ELT(s_segment,1))[0];
    segment->x2 = INTEGER_DATA(VECTOR_ELT(s_segment,2))[0];
    segment->y2 = INTEGER_DATA(VECTOR_ELT(s_segment,3))[0];

    return(segment);
}

USER_OBJECT_
asRGdkSegment(GdkSegment * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "x1", "y1", "x2", "y2", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 4));

  SET_VECTOR_ELT(s_obj, 0, asRInteger(obj->x1));
  SET_VECTOR_ELT(s_obj, 1, asRInteger(obj->y1));
  SET_VECTOR_ELT(s_obj, 2, asRInteger(obj->x2));
  SET_VECTOR_ELT(s_obj, 3, asRInteger(obj->y2));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GdkSegment"));

  UNPROTECT(1);

  return(s_obj);
}

GdkColor*
asCGdkColor(USER_OBJECT_ s_color)
{
    GdkColor* color;
    int offset = 0;

    color = (GdkColor*)R_alloc(1, sizeof(GdkColor));

    if (GET_LENGTH(s_color) == 4) {
        offset = 1;
        color->pixel = asCNumeric(VECTOR_ELT(s_color, 0));
    }

    color->red = asCInteger(VECTOR_ELT(s_color, 0+offset));
    color->green = asCInteger(VECTOR_ELT(s_color, 1+offset));
    color->blue = asCInteger(VECTOR_ELT(s_color, 2+offset));
	
	/*Rprintf("rgb: %d %d %d\n", color->red, color->green, color->blue);*/
	
    return(color);
}
USER_OBJECT_
asRGdkColor(const GdkColor* color)
{
    USER_OBJECT_ s_color;
	static char *names[] = { "pixel", "red", "green", "blue", NULL };

    PROTECT(s_color = NEW_LIST(4));

    SET_VECTOR_ELT(s_color, 0, asRNumeric(color->pixel));
    SET_VECTOR_ELT(s_color, 1, asRInteger(color->red));
    SET_VECTOR_ELT(s_color, 2, asRInteger(color->green));
    SET_VECTOR_ELT(s_color, 3, asRInteger(color->blue));

	SET_NAMES(s_color, asRStringArray(names));
	
    UNPROTECT(1);

    return(s_color);
}

USER_OBJECT_
asRGdkNativeWindow(GdkNativeWindow window)
{
    #ifdef GDK_NATIVE_WINDOW_POINTER
    return(toRPointer(window, "GdkNativeWindow"));
    #else
    return(asRNumeric(window));
    #endif
}

GdkNativeWindow
asCGdkNativeWindow(USER_OBJECT_ s_window)
{
    #ifdef GDK_NATIVE_WINDOW_POINTER
    return((GdkNativeWindow)getPtrValue(s_window));
    #else
    return(NUMERIC_DATA(s_window)[0]);
    #endif
}

/* determines the 'class' from the event type, copying if we don't own it */
USER_OBJECT_
toRGdkEvent(GdkEvent *event, gboolean own)
{
    char *type;
    /*USER_OBJECT_ classes;*/
    USER_OBJECT_ result;

    switch(event->type) {
         case GDK_EXPOSE:
            type = "GdkEventExpose";
            break;
         case GDK_MOTION_NOTIFY:
            type = "GdkEventMotion";
            break;
         case GDK_BUTTON_PRESS:
         case GDK_2BUTTON_PRESS:
         case GDK_3BUTTON_PRESS:
         case GDK_BUTTON_RELEASE:
            type = "GdkEventButton";
            break;
         case GDK_KEY_PRESS	:
         case GDK_KEY_RELEASE:
            type = "GdkEventKey";
            break;
         case GDK_ENTER_NOTIFY:
         case GDK_LEAVE_NOTIFY:
            type = "GdkEventCrossing";
            break;
         case GDK_FOCUS_CHANGE:
            type = "GdkEventFocus";
            break;
         case GDK_CONFIGURE:
            type = "GdkEventConfigure";
            break;
         case GDK_PROPERTY_NOTIFY:
            type = "GdkEventProperty";
            break;
         case GDK_SELECTION_CLEAR:
         case GDK_SELECTION_REQUEST:
         case GDK_SELECTION_NOTIFY:
            type = "GdkEventSelection";
            break;
         case GDK_PROXIMITY_IN:
         case GDK_PROXIMITY_OUT:
            type = "GdkEventProximity";
            break;
         case GDK_DRAG_ENTER:
         case GDK_DRAG_LEAVE:
         case GDK_DRAG_MOTION:
         case GDK_DRAG_STATUS:
         case GDK_DROP_START:
         case GDK_DROP_FINISHED:
            type = "GdkEventDND";
            break;
         case GDK_CLIENT_EVENT:
            type = "GdkEventClient";
            break;
         case GDK_VISIBILITY_NOTIFY:
            type = "GdkEventVisibility";
            break;
         case GDK_NO_EXPOSE:
            type = "GdkEventNoExpose";
            break;
         case GDK_SCROLL:
            type = "GdkEventScroll";
            break;
         case GDK_WINDOW_STATE:
            type = "GdkEventWindowState";
            break;
         case GDK_SETTING:
            type = "GdkEventSetting";
            break;
         case GDK_OWNER_CHANGE:
            type = "GdkEventOwnerChanged";
            break;
		 case GDK_GRAB_BROKEN:
		 	type = "GdkEventGrabBroken";
			break;
         default:
            type = "GdkEventAny";
    }

    if (!own)
      event = gdk_event_copy(event);
    
    PROTECT(result = toRPointerWithFinalizer(event, NULL, (RPointerFinalizer)gdk_event_free));

    char *classes[] = { type, "GdkEventAny", "GdkEvent", "RGtkObject" };
    SET_CLASS(result, asRStringArrayWithSize(classes, 4));

    UNPROTECT(1);

    return(result);
}
/* makes a wrapped GdkEvent, assuming we own it */
USER_OBJECT_
asRGdkEvent(GdkEvent *event)
{
    return(toRGdkEvent(event, TRUE));
}

USER_OBJECT_
toRGdkFont(GdkFont *font)
{
	if (font)
		gdk_font_ref(font);
	return(toRPointerWithFinalizer(font, "GdkFont", (RPointerFinalizer)gdk_font_unref));
}

GdkTrapezoid *
asCGdkTrapezoid(USER_OBJECT_ s_trapezoid)
{
	GdkTrapezoid *trapezoid = (GdkTrapezoid *)R_alloc(1, sizeof(GdkTrapezoid));
	
	trapezoid->y1 = asCNumeric(VECTOR_ELT(s_trapezoid, 0));
	trapezoid->x11 = asCNumeric(VECTOR_ELT(s_trapezoid, 1));
	trapezoid->x21 = asCNumeric(VECTOR_ELT(s_trapezoid, 2));
	trapezoid->y2 = asCNumeric(VECTOR_ELT(s_trapezoid, 3));
	trapezoid->x12 = asCNumeric(VECTOR_ELT(s_trapezoid, 4));
	trapezoid->x22 = asCNumeric(VECTOR_ELT(s_trapezoid, 5));
	
	return(trapezoid);
}

USER_OBJECT_
asRGdkTrapezoid(GdkTrapezoid * obj)
{
  USER_OBJECT_ s_obj;
  static gchar * names[] = { "y1", "x11", "x21", "y2", "x12", "x22", NULL };

  PROTECT(s_obj = allocVector(VECSXP, 6));

  SET_VECTOR_ELT(s_obj, 0, asRNumeric(obj->y1));
  SET_VECTOR_ELT(s_obj, 1, asRNumeric(obj->x11));
  SET_VECTOR_ELT(s_obj, 2, asRNumeric(obj->x21));
  SET_VECTOR_ELT(s_obj, 3, asRNumeric(obj->y2));
  SET_VECTOR_ELT(s_obj, 4, asRNumeric(obj->x12));
  SET_VECTOR_ELT(s_obj, 5, asRNumeric(obj->x22));

  SET_NAMES(s_obj, asRStringArray(names));
  SET_CLASS(s_obj, asRString("GdkTrapezoid"));

  UNPROTECT(1);

  return(s_obj);
}
