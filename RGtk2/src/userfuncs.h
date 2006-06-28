#include "atkUserFuncs.h"
#include "pangoUserFuncs.h"
#include "gdkUserFuncs.h"
#include "gtkUserFuncs.h"
#include "cairoUserFuncs.h"
#ifdef HAVE_LIBGLADE
#include "libgladeUserFuncs.h"
#endif

/*** Manuals ***/

/* GLib */
void S_GCompareFunc(gconstpointer s_a, gconstpointer s_b);

/* GTK */
void S_GtkClipboardClearFunc(GtkClipboard *clipboard, gpointer user_data_or_owner);
void S_GtkSignalFunc(GtkWidget* s_child, gpointer s_data);
guint8* S_GtkTextBufferSerializeFunc(GtkTextBuffer* s_register_buffer, 
  GtkTextBuffer* s_content_buffer, GtkTextIter* s_start, GtkTextIter* s_end, 
  gsize* s_length, gpointer s_user_data);
gint S_GtkMenuPositionFunc(GtkMenu* s_menu, gint* s_x, gint* s_y, gboolean* s_push_in, gpointer s_user_data);

/* cairo */
cairo_status_t S_cairo_read_func_t(gpointer s_closure, guchar* s_data, guint s_length);
