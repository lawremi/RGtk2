#include "RGtk2/gtk.h"

#define R_GTK_TYPE_DATA_FRAME	       (r_gtk_data_frame_get_type ())
#define R_GTK_DATA_FRAME(obj)	       (G_TYPE_CHECK_INSTANCE_CAST ((obj), R_GTK_TYPE_DATA_FRAME, RGtkDataFrame))
#define R_GTK_DATA_FRAME_CLASS(klass)    (G_TYPE_CHECK_CLASS_CAST ((klass), R_GTK_TYPE_DATA_FRAME, RGtkDataFrameClass))
#define R_GTK_IS_DATA_FRAME(obj)	       (G_TYPE_CHECK_INSTANCE_TYPE ((obj), R_GTK_TYPE_DATA_FRAME))
#define R_GTK_IS_DATA_FRAME_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), R_GTK_TYPE_DATA_FRAME))
#define R_GTK_DATA_FRAME_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj), R_GTK_TYPE_DATA_FRAME, RGtkDataFrameClass))

typedef struct _RGtkDataFrame       RGtkDataFrame;
typedef struct _RGtkDataFrameClass  RGtkDataFrameClass;

struct _RGtkDataFrame
{
  GObject parent;

  /*< private >*/
  gint stamp;
  USER_OBJECT_ frame;
  
  USER_OBJECT_ sort_closure;
  USER_OBJECT_ factors;
  
  gint            sort_id;
  GtkSortType     sort_order;
  
  gint nrows;
};

struct _RGtkDataFrameClass
{
  GObjectClass parent_class;
};
