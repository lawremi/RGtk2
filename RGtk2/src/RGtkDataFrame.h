#include "RGtk2.h"

#define RGTK_TYPE_DATA_FRAME	       (rgtk_data_frame_get_type ())
#define RGTK_DATA_FRAME(obj)	       (G_TYPE_CHECK_INSTANCE_CAST ((obj), RGTK_TYPE_DATA_FRAME, RGtkDataFrame))
#define RGTK_DATA_FRAME_CLASS(klass)    (G_TYPE_CHECK_CLASS_CAST ((klass), RGTK_TYPE_DATA_FRAME, RGtkDataFrameClass))
#define RGTK_IS_DATA_FRAME(obj)	       (G_TYPE_CHECK_INSTANCE_TYPE ((obj), RGTK_TYPE_DATA_FRAME))
#define RGTK_IS_DATA_FRAME_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), RGTK_TYPE_DATA_FRAME))
#define RGTK_DATA_FRAME_GET_CLASS(obj)  (G_TYPE_INSTANCE_GET_CLASS ((obj), RGTK_TYPE_DATA_FRAME, RGtkDataFrameClass))

typedef struct _RGtkDataFrame       RGtkDataFrame;
typedef struct _RGtkDataFrameClass  RGtkDataFrameClass;

struct _RGtkDataFrame
{
  GObject parent;

  /*< private >*/
  gint stamp;
  USER_OBJECT_ frame;
};

struct _RGtkDataFrameClass
{
  GObjectClass parent_class;
};
