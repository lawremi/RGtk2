#include "RGtk.h"

	void
S_GdkFilterFunc(GdkXEvent* s_xevent, GdkEvent* s_event, gpointer s_data); 

	void
S_GdkEventFunc(GdkEvent* s_event, gpointer s_data); 

	void
S_GdkInputFunction(gpointer s_data, gint s_source, GdkInputCondition s_condition); 

	gboolean
S_GdkPixbufSaveFunc(const gchar* s_buf, gsize s_count, GError** s_error, gpointer s_data); 

