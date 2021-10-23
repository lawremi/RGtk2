#include "RGtk2/gtk.h"

gboolean
S_GdkWindowInvalidateMaybeRecurseFunc(GdkWindow* s_window, gpointer s_data)
{
        GValue params[1];

        GValue ans;

        g_value_init(&ans, G_TYPE_BOOLEAN);

        g_value_init(&params[0], GDK_TYPE_WINDOW);

        g_value_set_object(&params[0], s_window);

        g_closure_invoke(s_data, &ans, 1, params, NULL);

        return(g_value_get_boolean(&ans));
}

/* reason: the user-func is not typedef'd */
USER_OBJECT_
 S_gdk_window_invalidate_maybe_recurse ( USER_OBJECT_ s_object, USER_OBJECT_ s_region, USER_OBJECT_ s_child_func, USER_OBJECT_ s_user_data )
{
         GdkWindow* object = GDK_WINDOW(getPtrValue(s_object)) ;
         GdkRegion* region = (GdkRegion*)getPtrValue(s_region) ;
         gboolean (*child_func)(GdkWindow*, gpointer) = S_GdkWindowInvalidateMaybeRecurseFunc;
         GClosure* user_data = R_createGClosure(s_child_func, s_user_data) ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

          gdk_window_invalidate_maybe_recurse ( object, region, child_func, user_data );

        return(_result);
}

/* reason: need to hide the hints mask from the user */
USER_OBJECT_
 S_gdk_window_set_geometry_hints ( USER_OBJECT_ s_object, USER_OBJECT_ s_geometry )
{
         GdkWindow* object = GDK_WINDOW(getPtrValue(s_object)) ;
         GdkGeometry* geometry;
         GdkWindowHints flags;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        geometry = asCGdkGeometry(s_geometry, &flags);
          gdk_window_set_geometry_hints ( object, geometry, flags );

        return(_result);
}

USER_OBJECT_
 S_gdk_window_constrain_size ( USER_OBJECT_ s_geometry, USER_OBJECT_ s_width, USER_OBJECT_ s_height )
{
         GdkGeometry* geometry;
         GdkWindowHints flags;
         gint width = INTEGER_DATA(s_width)[0] ;
         gint height = INTEGER_DATA(s_height)[0] ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         gint new_width  ;
         gint new_height  ;

         geometry = asCGdkGeometry(s_geometry, &flags);
          gdk_window_constrain_size ( geometry, flags, width, height, &new_width, &new_height );

	  _result = retByVal(_result, "new.width", PROTECT(asRInteger(new_width)), "new.height", PROTECT(asRInteger(new_height)), NULL);

	  UNPROTECT(2);
        return(_result);
}

/* reason: need to compute mask on the fly, like above. */
USER_OBJECT_
 S_gdk_gc_new_with_values ( USER_OBJECT_ s_object, USER_OBJECT_ s_values )
{
         GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object)) ;
         GdkGCValues* values;
         GdkGCValuesMask values_mask;
         GdkGC* ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        values = asCGdkGCValuesWithMask(s_values, &values_mask);

         ans =  gdk_gc_new_with_values ( object, values, values_mask );
        _result = toRPointerWithRef ( ans, "GdkGC" );


        return(_result);
}
USER_OBJECT_
 S_gdk_gc_set_values ( USER_OBJECT_ s_object, USER_OBJECT_ s_values )
{
         GdkGC* object = GDK_GC(getPtrValue(s_object)) ;
         GdkGCValues* values;
         GdkGCValuesMask values_mask;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        values = asCGdkGCValuesWithMask(s_values, &values_mask) ;

          gdk_gc_set_values ( object, values, values_mask );

        return(_result);
}

USER_OBJECT_
S_gdk_drawable_class_create_gc(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_values)
{
  GdkDrawableClass* object_class = ((GdkDrawableClass*)getPtrValue(s_object_class));
  GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
  GdkGCValuesMask mask;
  GdkGCValues* values = asCGdkGCValuesWithMask(s_values, &mask);
  
  GdkGC* ans;
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  ans = object_class->create_gc(object, values, mask);

  _result = toRPointerWithFinalizer(ans, "GdkGC", (RPointerFinalizer) g_object_unref);

  return(_result);
}
USER_OBJECT_
S_gdk_gcclass_set_values(USER_OBJECT_ s_object_class, USER_OBJECT_ s_object, USER_OBJECT_ s_values)
{
  GdkGCClass* object_class = ((GdkGCClass*)getPtrValue(s_object_class));
  GdkGC* object = GDK_GC(getPtrValue(s_object));
  GdkGCValuesMask mask;
  GdkGCValues* values = asCGdkGCValuesWithMask(s_values, &mask);
  
  USER_OBJECT_ _result = NULL_USER_OBJECT;

  object_class->set_values(object, values, mask);


  return(_result);
}


void
S_GdkPixbufDestroyNotify(guchar *pixels, gpointer data)
{
    R_ReleaseObject(data);
}

/* reason: need to preserve the pixbuf data */
USER_OBJECT_
 S_gdk_pixbuf_new_from_data ( USER_OBJECT_ s_data, USER_OBJECT_ s_colorspace, USER_OBJECT_ s_has_alpha, USER_OBJECT_ s_bits_per_sample, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_rowstride )
{
         const guchar* data = RAW(s_data);
         GdkColorspace colorspace = (GdkColorspace)INTEGER_DATA(s_colorspace)[0] ;
         gboolean has_alpha = LOGICAL_DATA(s_has_alpha)[0] ;
         int bits_per_sample = INTEGER_DATA(s_bits_per_sample)[0] ;
         int width = INTEGER_DATA(s_width)[0] ;
         int height = INTEGER_DATA(s_height)[0] ;
         int rowstride = INTEGER_DATA(s_rowstride)[0] ;
         GdkPixbufDestroyNotify destroy_fn = S_GdkPixbufDestroyNotify;
         gpointer destroy_fn_data = asCGenericData(s_data) ;
         GdkPixbuf* ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         ans =  gdk_pixbuf_new_from_data ( data, colorspace, has_alpha, bits_per_sample, width, height, rowstride, destroy_fn, destroy_fn_data );
        _result = toRPointer ( ans, "GdkPixbuf" );

        return(_result);
}

/* reason: GdkTimeCoords needs special handling */
USER_OBJECT_
 S_gdk_device_get_history ( USER_OBJECT_ s_object, USER_OBJECT_ s_window, USER_OBJECT_ s_start, USER_OBJECT_ s_stop )
{
        int i;
        USER_OBJECT_ s_events;
        GdkDevice* object = GDK_DEVICE(getPtrValue(s_object)) ;
         GdkWindow* window = GDK_WINDOW(getPtrValue(s_window)) ;
         guint32 start = (guint32)NUMERIC_DATA(s_start)[0] ;
         guint32 stop = (guint32)NUMERIC_DATA(s_stop)[0] ;
         gboolean ans ;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

         GdkTimeCoord** events = NULL ;
         gint n_events  ;
         ans =  gdk_device_get_history ( object, window, start, stop, &events, &n_events );
        _result = asRLogical ( ans );

        PROTECT(s_events = NEW_LIST(n_events));
        for (i = 0 ; i < n_events; i++) { /* could this work with asRArray eventually? */
            SET_VECTOR_ELT(s_events, i, asRGdkTimeCoord(events[i], object->num_axes));
        }
        gdk_device_free_history(events, n_events);

        _result = retByVal(_result, "events", s_events, "n.events", PROTECT(asRInteger(n_events)), NULL);

        UNPROTECT(2);
        return(_result);
}

/* reason: GdkEventClient contains a union */
USER_OBJECT_
S_GdkEventClientGetData(USER_OBJECT_ s_obj)
{
    USER_OBJECT_ _result;

    GdkEventClient *obj;
    gushort data_format;
    int size = 0, *val = NULL;

    obj = getPtrValue(s_obj);

    data_format = obj->data_format;

    if (data_format == 8) {
        size = 20;
        val = (int *)obj->data.b;
    } else if (data_format == 16) {
        size = 10;
        val = (int *)obj->data.s;
    } else if (data_format == 32) {
        size = 5;
        val = (int *)obj->data.l;
    } else {
	Rf_error("Unknown data_format %d in GdkEventClient", data_format);
    }

    _result = asRIntegerArrayWithSize(val, size);

    return(_result);
}

/* reason: we have to calculate the size of the pixel data (also don't free the array) */
USER_OBJECT_
S_gdk_pixbuf_get_pixels(USER_OBJECT_ s_object)
{
    GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
    int size;

    guchar* ans;
    USER_OBJECT_ _result = NULL_USER_OBJECT;

    ans = gdk_pixbuf_get_pixels(object);

    size = gdk_pixbuf_get_rowstride(object)*gdk_pixbuf_get_height(object);
    _result = asRIntegerArrayWithSize(ans, size);

    return(_result);
}

/* reason: GdkBitmap is an arbitrary pointer as defined by the API, but in this
	case we know it is a GObject (and so this is its constructor)
*/
/*USER_OBJECT_
S_gdk_bitmap_create_from_data(USER_OBJECT_ s_drawable, USER_OBJECT_ s_data, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
        GdkDrawable* drawable = GET_LENGTH(s_drawable) == 0 ? NULL : GDK_DRAWABLE(getPtrValue(s_drawable));
        const guchar* data = (const guchar*)asCArray(s_data, guchar, asCInteger);
        gint width = (gint)asCInteger(s_width);
        gint height = (gint)asCInteger(s_height);

        GdkBitmap* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gdk_bitmap_create_from_data(drawable, data, width, height);

        _result = toRPointerWithFinalizer(ans, "GdkBitmap", (RPointerFinalizer) g_object_unref);

        return(_result);
}*/

/* reason: GdkWindowAttr needs mask handling */
USER_OBJECT_
S_gdk_window_new(USER_OBJECT_ s_parent, USER_OBJECT_ s_attributes)
{
        GdkWindow* parent = GDK_WINDOW(getPtrValue(s_parent));
		GdkWindowAttributesType attributes_mask;
        GdkWindowAttr* attributes = asCGdkWindowAttr(s_attributes, &attributes_mask);
        
        GdkWindow* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gdk_window_new(parent, attributes, (gint)attributes_mask);

		/* note that finalization will not free the GdkWindow, since it must be explicitly freed
			independent of the reference count */
        _result = toRPointerWithFinalizer(ans, "GdkWindow", (RPointerFinalizer) g_object_unref);

        return(_result);
}

/* reason: if dest is provided, we need to ref it on the way back, since we don't own it */
USER_OBJECT_
S_gdk_pixbuf_get_from_drawable(USER_OBJECT_ s_dest, USER_OBJECT_ s_src, USER_OBJECT_ s_cmap, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
        GdkPixbuf* dest = s_dest == NULL_USER_OBJECT ? NULL : GDK_PIXBUF(getPtrValue(s_dest));
        GdkDrawable* src = GDK_DRAWABLE(getPtrValue(s_src));
        GdkColormap* cmap = s_cmap == NULL_USER_OBJECT ? NULL : GDK_COLORMAP(getPtrValue(s_cmap));
        int src_x = (int)asCInteger(s_src_x);
        int src_y = (int)asCInteger(s_src_y);
        int dest_x = (int)asCInteger(s_dest_x);
        int dest_y = (int)asCInteger(s_dest_y);
        int width = (int)asCInteger(s_width);
        int height = (int)asCInteger(s_height);

        GdkPixbuf* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height);
        
        if (!dest)
          _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer)g_object_unref);
        else _result = toRPointerWithRef(ans, "GdkPixbuf");

        return(_result);
}
USER_OBJECT_
S_gdk_pixbuf_get_from_image(USER_OBJECT_ s_src, USER_OBJECT_ s_cmap, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
        GdkImage* src = GDK_IMAGE(getPtrValue(s_src));
        GdkColormap* cmap = GDK_COLORMAP(getPtrValue(s_cmap));
        int src_x = (int)asCInteger(s_src_x);
        int src_y = (int)asCInteger(s_src_y);
        int dest_x = (int)asCInteger(s_dest_x);
        int dest_y = (int)asCInteger(s_dest_y);
        int width = (int)asCInteger(s_width);
        int height = (int)asCInteger(s_height);

        GdkPixbuf* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;
        GdkPixbuf* dest = NULL;

        ans = gdk_pixbuf_get_from_image(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height);

        _result = toRPointerWithFinalizer(ans, "GdkPixbuf", (RPointerFinalizer) g_object_unref);

        return(_result);
}

/* THE FOLLOWING FUNCTIONS COULD BE AUTOGENERATED IF THERE WAS A WAY TO SPECIFY OWNERSHIP OF RETURN-BY-REF */

/* reason: don't free the depths array */
USER_OBJECT_
S_gdk_query_depths()
{

        USER_OBJECT_ _result = NULL_USER_OBJECT;
        gint* depths = NULL;
        gint count;

        gdk_query_depths(&depths, &count);


        _result = retByVal(_result, "depths", PROTECT(asRIntegerArrayWithSize(depths, count)), "count", PROTECT(asRInteger(count)), NULL);

	UNPROTECT(2);
        return(_result);
}

/* reason: don't free the types array */
USER_OBJECT_
S_gdk_query_visual_types()
{

        USER_OBJECT_ _result = NULL_USER_OBJECT;
        GdkVisualType* visual_types = NULL;
        gint count;

        gdk_query_visual_types(&visual_types, &count);


        _result = retByVal(_result, "visual.types", PROTECT(asREnumArrayWithSize(visual_types, GDK_TYPE_VISUAL_TYPE, count)), "count", PROTECT(asRInteger(count)), NULL);

	UNPROTECT(2);
        return(_result);
}

/* reason: don't ref the newly created GdkPixmap/GdkBitmap */
USER_OBJECT_
S_gdk_pixbuf_render_pixmap_and_mask(USER_OBJECT_ s_object, USER_OBJECT_ s_alpha_threshold)
{
        GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
        int alpha_threshold = (int)asCInteger(s_alpha_threshold);

        USER_OBJECT_ _result = NULL_USER_OBJECT;
        GdkPixmap* pixmap_return = NULL;
        GdkBitmap* mask_return = NULL;

        gdk_pixbuf_render_pixmap_and_mask(object, &pixmap_return, &mask_return, alpha_threshold);


        _result = retByVal(_result, "pixmap.return", PROTECT(toRPointerWithFinalizer(pixmap_return, "GdkPixmap", (RPointerFinalizer)g_object_unref)), "mask.return", PROTECT(toRPointerWithFinalizer(mask_return, "GdkBitmap", (RPointerFinalizer) g_object_unref)), NULL);

	UNPROTECT(2);
        return(_result);
}
USER_OBJECT_
S_gdk_pixbuf_render_pixmap_and_mask_for_colormap(USER_OBJECT_ s_object, USER_OBJECT_ s_colormap, USER_OBJECT_ s_alpha_threshold)
{
        GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
        GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));
        int alpha_threshold = (int)asCInteger(s_alpha_threshold);

        USER_OBJECT_ _result = NULL_USER_OBJECT;
        GdkPixmap* pixmap_return = NULL;
        GdkBitmap* mask_return = NULL;

        gdk_pixbuf_render_pixmap_and_mask_for_colormap(object, colormap, &pixmap_return, &mask_return, alpha_threshold);


        _result = retByVal(_result, "pixmap.return", PROTECT(toRPointerWithFinalizer(pixmap_return, "GdkPixmap", (RPointerFinalizer)g_object_unref)), "mask.return", PROTECT(toRPointerWithFinalizer(mask_return, "GdkBitmap", (RPointerFinalizer)g_object_unref)), NULL);

	UNPROTECT(2);
        return(_result);
}
/* reason: when a color is allocated, the pixel field is set, so we must return the color as part of a list */
USER_OBJECT_
S_gdk_colormap_alloc_color(USER_OBJECT_ s_object, USER_OBJECT_ s_color, USER_OBJECT_ s_writeable, USER_OBJECT_ s_best_match)
{
	GdkColormap* object = GDK_COLORMAP(getPtrValue(s_object));
	GdkColor* color = asCGdkColor(s_color);
	gboolean writeable = (gboolean)asCLogical(s_writeable);
	gboolean best_match = (gboolean)asCLogical(s_best_match);

	gboolean ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gdk_colormap_alloc_color(object, color, writeable, best_match);

	_result = retByVal(PROTECT(asRLogical(ans)), "color",
			   PROTECT(asRGdkColor(color)), NULL);

	UNPROTECT(2);
	return(_result);
}
/* reason: as above, the pixel field is set when found, must return it */
USER_OBJECT_
S_gdk_rgb_find_color(USER_OBJECT_ s_colormap, USER_OBJECT_ s_color)
{
        GdkColormap* colormap = GDK_COLORMAP(getPtrValue(s_colormap));
        GdkColor* color = asCGdkColor(s_color);

        USER_OBJECT_ _result = NULL_USER_OBJECT;

        gdk_rgb_find_color(colormap, color);

		_result = asRGdkColor(color);
		
        return(_result);
}

/* reason: the rowstride is incorrectly identified as the buffer length */
USER_OBJECT_
S_gdk_draw_rgb_image(USER_OBJECT_ s_object, USER_OBJECT_ s_gc, USER_OBJECT_ s_x, USER_OBJECT_ s_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height, USER_OBJECT_ s_dith, USER_OBJECT_ s_rgb_buf, USER_OBJECT_ s_rowstride)
{
	GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
	GdkGC* gc = GDK_GC(getPtrValue(s_gc));
	gint x = (gint)asCInteger(s_x);
	gint y = (gint)asCInteger(s_y);
	gint width = (gint)asCInteger(s_width);
	gint height = (gint)asCInteger(s_height);
	GdkRgbDither dith = (GdkRgbDither)asCEnum(s_dith, GDK_TYPE_RGB_DITHER);
	guchar* rgb_buf = (guchar*)asCArray(s_rgb_buf, guchar, asCInteger);
	gint rowstride = (gint)asCInteger(s_rowstride);

	USER_OBJECT_ _result = NULL_USER_OBJECT;

	gdk_draw_rgb_image(object, gc, x, y, width, height, dith, rgb_buf, rowstride);


	return(_result);
}

/* reason: if image is NULL, a new GdkImage is allocated, otherwise image is modified */
USER_OBJECT_
S_gdk_drawable_copy_to_image(USER_OBJECT_ s_object, USER_OBJECT_ s_image, USER_OBJECT_ s_src_x, USER_OBJECT_ s_src_y, USER_OBJECT_ s_dest_x, USER_OBJECT_ s_dest_y, USER_OBJECT_ s_width, USER_OBJECT_ s_height)
{
        GdkDrawable* object = GDK_DRAWABLE(getPtrValue(s_object));
        GdkImage* image = GET_LENGTH(s_image) == 0 ? NULL : GDK_IMAGE(getPtrValue(s_image));
        gint src_x = (gint)asCInteger(s_src_x);
        gint src_y = (gint)asCInteger(s_src_y);
        gint dest_x = (gint)asCInteger(s_dest_x);
        gint dest_y = (gint)asCInteger(s_dest_y);
        gint width = (gint)asCInteger(s_width);
        gint height = (gint)asCInteger(s_height);

        GdkImage* ans;
        USER_OBJECT_ _result = NULL_USER_OBJECT;

        ans = gdk_drawable_copy_to_image(object, image, src_x, src_y, dest_x, dest_y, width, height);

		if (image)
			_result = toRPointerWithRef(ans, "GdkImage");
		else _result = toRPointerWithFinalizer(ans, "GdkImage", (RPointerFinalizer)g_object_unref);

        return(_result);
}
/* reason: need to treat data as raw */
USER_OBJECT_
S_gdk_pixbuf_save_to_bufferv(USER_OBJECT_ s_object, USER_OBJECT_ s_type, USER_OBJECT_ s_option_keys, USER_OBJECT_ s_option_values)
{
        GdkPixbuf* object = GDK_PIXBUF(getPtrValue(s_object));
        const char* type = (const char*)asCString(s_type);
        char** option_keys = (char**)asCStringArray(s_option_keys);
        char** option_values = (char**)asCStringArray(s_option_values);
		gint i;

        USER_OBJECT_ _result = NULL_USER_OBJECT;
        gchar* buffer = NULL;
        gsize buffer_size;
        GError* error = NULL;

        gdk_pixbuf_save_to_bufferv(object, &buffer, &buffer_size, type, option_keys, option_values, &error);

		PROTECT(_result = allocVector(RAWSXP, buffer_size));
		
		for (i = 0; i < buffer_size; i++)
			RAW(_result)[i] = (Rbyte)buffer[i];
		
		_result = retByVal(NULL_USER_OBJECT, "buffer", _result, "buffer.size", PROTECT(asRNumeric(buffer_size)), "error", PROTECT(asRGError(error)), NULL);
        CLEANUP(g_error_free, error);
		CLEANUP(g_free, buffer);
		
		UNPROTECT(3);
        return(_result);
}
/* reason: needed to get the GdkPixbuf error quark */
USER_OBJECT_
S_gdk_pixbuf_error_quark()
{

	GQuark ans;
	USER_OBJECT_ _result = NULL_USER_OBJECT;

	ans = gdk_pixbuf_error_quark();

	_result = asRGQuark(ans);

	return(_result);
}

