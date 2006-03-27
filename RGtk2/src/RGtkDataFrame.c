#include "RGtkDataFrame.h"
#include "gobject.h"
#include "conversion.h"

#define VALID_ITER(iter, data_frame) ((iter)!= NULL && data_frame->stamp == (iter)->stamp && GPOINTER_TO_INT((iter)->user_data) < rgtk_data_frame_get_n_rows(data_frame))

static void         rgtk_data_frame_init            (RGtkDataFrame      *data_frame);
static void         rgtk_data_frame_class_init      (RGtkDataFrameClass *class);
static void         rgtk_data_frame_tree_model_init (GtkTreeModelIface *iface);
/*static void         rgtk_data_frame_drag_source_init (GtkTreeDragSourceIface *iface);
static void         rgtk_data_frame_drag_dest_init  (GtkTreeDragDestIface   *iface);*/
static void         rgtk_data_frame_sortable_init   (GtkTreeSortableIface   *iface);
static void         rgtk_data_frame_finalize        (GObject           *object);
static GtkTreeModelFlags rgtk_data_frame_get_flags  (GtkTreeModel      *tree_model);
static gint         rgtk_data_frame_get_n_columns   (GtkTreeModel      *tree_model);
static GType        rgtk_data_frame_get_column_type (GtkTreeModel      *tree_model,
						    gint               index);
static gboolean     rgtk_data_frame_get_iter        (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter,
						    GtkTreePath       *path);
static GtkTreePath *rgtk_data_frame_get_path        (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter);
static void         rgtk_data_frame_get_value       (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter,
						    gint               column,
						    GValue            *value);
static gboolean     rgtk_data_frame_iter_next       (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter);
static gboolean     rgtk_data_frame_iter_children   (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter,
						    GtkTreeIter       *parent);
static gboolean     rgtk_data_frame_iter_has_child  (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter);
static gint         rgtk_data_frame_iter_n_children (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter);
static gboolean     rgtk_data_frame_iter_nth_child  (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter,
						    GtkTreeIter       *parent,
						    gint               n);
static gboolean     rgtk_data_frame_iter_parent     (GtkTreeModel      *tree_model,
						    GtkTreeIter       *iter,
						    GtkTreeIter       *child);

static gboolean rgtk_data_frame_has_default_sort_func (GtkTreeSortable *sortable);
static void rgtk_data_frame_set_default_sort_func (GtkTreeSortable        *sortable,
                                              GtkTreeIterCompareFunc  sort_func,
                                              gpointer                user_data,
                                              GtkDestroyNotify        destroy_func);
static void rgtk_data_frame_set_sort_func (GtkTreeSortable        *sortable,
									   gint                    sort_col_id,
                                      GtkTreeIterCompareFunc  sort_func,
                                      gpointer                user_data,
                                      GtkDestroyNotify        destroy_func);							
static void rgtk_data_frame_set_sort_column_id (GtkTreeSortable *sortable,
									   gint             sort_col_id,
									   GtkSortType      order);
static gboolean rgtk_data_frame_get_sort_column_id (GtkTreeSortable *sortable,
									   gint            *sort_col_id,
									   GtkSortType     *order);
static void rgtk_data_frame_resort (RGtkDataFrame *frame);
static void rgtk_data_frame_set_sort_closure (RGtkDataFrame *frame, USER_OBJECT_ closure);

RGtkDataFrame * rgtk_data_frame_new (USER_OBJECT_ frame, USER_OBJECT_ sort_closure);
static USER_OBJECT_ rgtk_data_frame_get (RGtkDataFrame *data_frame);
static gint rgtk_data_frame_get_n_rows (RGtkDataFrame *data_frame);
static void rgtk_data_frame_set (RGtkDataFrame *data_frame,
			USER_OBJECT_ frame,
			gint *changed_rows, gint nrows, gboolean resort);
static void rgtk_data_frame_remove (RGtkDataFrame *data_frame,
			USER_OBJECT_ frame,
			gint *deleted_rows, gint nrows);


GType
rgtk_data_frame_get_type (void)
{
  static GType data_frame_type = 0;

  if (!data_frame_type)
    {
      static const GTypeInfo data_frame_info =
      {
	sizeof (RGtkDataFrameClass),
	NULL,		/* base_init */
	NULL,		/* base_finalize */
        (GClassInitFunc) rgtk_data_frame_class_init,
	NULL,		/* class_finalize */
	NULL,		/* class_data */
        sizeof (RGtkDataFrame),
	0,
        (GInstanceInitFunc) rgtk_data_frame_init,
      };

      static const GInterfaceInfo tree_model_info =
      {
	(GInterfaceInitFunc) rgtk_data_frame_tree_model_init,
	NULL,
	NULL
      };
/*
      static const GInterfaceInfo drag_source_info =
      {
	(GInterfaceInitFunc) rgtk_data_frame_drag_source_init,
	NULL,
	NULL
      };

      static const GInterfaceInfo drag_dest_info =
      {
	(GInterfaceInitFunc) rgtk_data_frame_drag_dest_init,
	NULL,
	NULL
      };
*/
      static const GInterfaceInfo sortable_info =
      {
	(GInterfaceInitFunc) rgtk_data_frame_sortable_init,
	NULL,
	NULL
      };

      data_frame_type = g_type_register_static (G_TYPE_OBJECT, "RGtkDataFrame",
						&data_frame_info, 0);

      g_type_add_interface_static (data_frame_type,
				   GTK_TYPE_TREE_MODEL,
				   &tree_model_info);
      /*g_type_add_interface_static (data_frame_type,
				   GTK_TYPE_TREE_DRAG_SOURCE,
				   &drag_source_info);
      g_type_add_interface_static (data_frame_type,
				   GTK_TYPE_TREE_DRAG_DEST,
				   &drag_dest_info);*/
      g_type_add_interface_static (data_frame_type,
				   GTK_TYPE_TREE_SORTABLE,
				   &sortable_info);
    }

  return data_frame_type;
}

GObjectClass *parent_class = NULL;

static void
rgtk_data_frame_class_init (RGtkDataFrameClass *class)
{
  GObjectClass *object_class;

  parent_class = g_type_class_peek_parent (class);
  object_class = (GObjectClass*) class;

  object_class->finalize = rgtk_data_frame_finalize;
}

static void
rgtk_data_frame_tree_model_init (GtkTreeModelIface *iface)
{
  iface->get_flags = rgtk_data_frame_get_flags;
  iface->get_n_columns = rgtk_data_frame_get_n_columns;
  iface->get_column_type = rgtk_data_frame_get_column_type;
  iface->get_iter = rgtk_data_frame_get_iter;
  iface->get_path = rgtk_data_frame_get_path;
  iface->get_value = rgtk_data_frame_get_value;
  iface->iter_next = rgtk_data_frame_iter_next;
  iface->iter_children = rgtk_data_frame_iter_children;
  iface->iter_has_child = rgtk_data_frame_iter_has_child;
  iface->iter_n_children = rgtk_data_frame_iter_n_children;
  iface->iter_nth_child = rgtk_data_frame_iter_nth_child;
  iface->iter_parent = rgtk_data_frame_iter_parent;
}
/*
static void
rgtk_data_frame_drag_source_init (GtkTreeDragSourceIface *iface)
{
  iface->row_draggable = real_gtk_data_frame_row_draggable;
  iface->drag_data_delete = rgtk_data_frame_drag_data_delete;
  iface->drag_data_get = rgtk_data_frame_drag_data_get;
}

static void
rgtk_data_frame_drag_dest_init (GtkTreeDragDestIface *iface)
{
  iface->drag_data_received = rgtk_data_frame_drag_data_received;
  iface->row_drop_possible = rgtk_data_frame_row_drop_possible;
}*/

static void
rgtk_data_frame_sortable_init (GtkTreeSortableIface *iface)
{
  iface->get_sort_column_id = rgtk_data_frame_get_sort_column_id;
  iface->set_sort_column_id = rgtk_data_frame_set_sort_column_id;
  iface->set_sort_func = rgtk_data_frame_set_sort_func;
  iface->set_default_sort_func = rgtk_data_frame_set_default_sort_func;
  iface->has_default_sort_func = rgtk_data_frame_has_default_sort_func;
}

static void
rgtk_data_frame_init (RGtkDataFrame *data_frame)
{
  data_frame->stamp = g_random_int ();
  data_frame->frame = NULL;
  data_frame->sort_closure = NULL;
  data_frame->sort_id = -1;
  data_frame->sort_order = GTK_SORT_DESCENDING;
}

USER_OBJECT_
R_rgtk_data_frame_new(USER_OBJECT_ s_frame, USER_OBJECT_ s_sort_closure) {
	RGtkDataFrame *ans;
	ans = rgtk_data_frame_new(s_frame, s_sort_closure);
	return(toRPointer(ans, "RGtkDataFrame"));
}

/**
 * rgtk_data_frame_new:
 * @frame: an R data frame object
 *
 * Creates a new RGtk2 data frame from an existing R data frame.
 *
 * Return value: a new #RGtkDataFrame
**/
RGtkDataFrame *
rgtk_data_frame_new(USER_OBJECT_ frame, USER_OBJECT_ sort_closure)
{
	RGtkDataFrame *retval;
    retval = g_object_new (RGTK_TYPE_DATA_FRAME, NULL);
	rgtk_data_frame_set(retval, frame, NULL, 0, 0);
	rgtk_data_frame_set_sort_closure(retval, sort_closure);
	return retval;
}

static void
rgtk_data_frame_finalize (GObject *object)
{
	RGtkDataFrame *data_frame = RGTK_DATA_FRAME (object);
	
	R_ReleaseObject(data_frame->frame);
	R_ReleaseObject(data_frame->sort_closure);
	
   /* must chain up */
   (* parent_class->finalize) (object);
}

/* Fulfill the GtkTreeModel requirements */
static GtkTreeModelFlags
rgtk_data_frame_get_flags (GtkTreeModel *tree_model)
{
  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), 0);

  return GTK_TREE_MODEL_LIST_ONLY;
}

static gint
rgtk_data_frame_get_n_columns (GtkTreeModel *tree_model)
{
  RGtkDataFrame *data_frame = (RGtkDataFrame *) tree_model;

  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), 0);

  return GET_LENGTH(data_frame->frame);
}

static GType
rgtk_data_frame_get_column_type (GtkTreeModel *tree_model,
				gint          index)
{
  RGtkDataFrame *data_frame = (RGtkDataFrame *) tree_model;
  GType type;
  
  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), G_TYPE_INVALID);
  g_return_val_if_fail (index < GET_LENGTH (RGTK_DATA_FRAME (tree_model)->frame) &&
			index >= 0, G_TYPE_INVALID);

  type = getSValueGType(VECTOR_ELT(data_frame->frame, index));
  return type;
}

static gboolean
rgtk_data_frame_get_iter (GtkTreeModel *tree_model,
			 GtkTreeIter  *iter,
			 GtkTreePath  *path)
{
  RGtkDataFrame *data_frame = (RGtkDataFrame *) tree_model;
  gint i;
  
  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), FALSE);
  g_return_val_if_fail (gtk_tree_path_get_depth (path) > 0, FALSE);

  i = gtk_tree_path_get_indices (path)[0];

  if (i >= rgtk_data_frame_get_n_rows(data_frame))
    return FALSE;

  iter->stamp = data_frame->stamp;
  iter->user_data = GINT_TO_POINTER(i);
  
  return TRUE;
}

static GtkTreePath *
rgtk_data_frame_get_path (GtkTreeModel *tree_model,
			 GtkTreeIter  *iter)
{
  GtkTreePath *path;
  gint row;

  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), NULL);
  g_return_val_if_fail (iter->stamp == RGTK_DATA_FRAME (tree_model)->stamp, NULL);

  row = GPOINTER_TO_INT(iter->user_data);
  
  if (row >= rgtk_data_frame_get_n_rows(RGTK_DATA_FRAME(tree_model)))
	  return(NULL);
  
  path = gtk_tree_path_new ();
  gtk_tree_path_append_index (path, row);
  
  return path;
}

static void
rgtk_data_frame_get_value (GtkTreeModel *tree_model,
			  GtkTreeIter  *iter,
			  gint          column,
			  GValue       *value)
{
  RGtkDataFrame *data_frame = (RGtkDataFrame*)tree_model;
  
  if (!VALID_ITER (iter, RGTK_DATA_FRAME(tree_model)))
	  g_debug("row: %d", GPOINTER_TO_INT(iter->user_data));
  g_return_if_fail (RGTK_IS_DATA_FRAME (tree_model));
  g_return_if_fail (column < GET_LENGTH(RGTK_DATA_FRAME (tree_model)->frame));
  g_return_if_fail (VALID_ITER (iter, RGTK_DATA_FRAME(tree_model)));

  initGValueFromVector(VECTOR_ELT(data_frame->frame, column),
  	GPOINTER_TO_INT(iter->user_data), value);
}

static gboolean
rgtk_data_frame_iter_next (GtkTreeModel  *tree_model,
			  GtkTreeIter   *iter)
{
  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), FALSE);
  g_return_val_if_fail (RGTK_DATA_FRAME (tree_model)->stamp == iter->stamp, FALSE);
  iter->user_data = GINT_TO_POINTER(GPOINTER_TO_INT(iter->user_data) + 1);

  return GPOINTER_TO_INT(iter->user_data) < rgtk_data_frame_get_n_rows(RGTK_DATA_FRAME(tree_model));
}

static gboolean
rgtk_data_frame_iter_children (GtkTreeModel *tree_model,
			      GtkTreeIter  *iter,
			      GtkTreeIter  *parent)
{
  RGtkDataFrame *data_frame;
  
  /* this is a list, nodes have no children */
  if (parent)
    return FALSE;

  data_frame = RGTK_DATA_FRAME (tree_model);

  if (rgtk_data_frame_get_n_rows(data_frame) > 0)
    {
      iter->stamp = data_frame->stamp;
      iter->user_data = GINT_TO_POINTER(0);
      return TRUE;
    }
  else
    return FALSE;
}

static gboolean
rgtk_data_frame_iter_has_child (GtkTreeModel *tree_model,
			       GtkTreeIter  *iter)
{
  return FALSE;
}

static gint
rgtk_data_frame_iter_n_children (GtkTreeModel *tree_model,
				GtkTreeIter  *iter)
{
  RGtkDataFrame *data_frame;

  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), -1);

  data_frame = RGTK_DATA_FRAME (tree_model);
  
  if (iter == NULL)
    return rgtk_data_frame_get_n_rows(data_frame);

  g_return_val_if_fail (data_frame->stamp == iter->stamp, -1);
  return 0;
}

static gboolean
rgtk_data_frame_iter_nth_child (GtkTreeModel *tree_model,
			       GtkTreeIter  *iter,
			       GtkTreeIter  *parent,
			       gint          n)
{
  RGtkDataFrame *data_frame;
  
  g_return_val_if_fail (RGTK_IS_DATA_FRAME (tree_model), FALSE);

  data_frame = RGTK_DATA_FRAME (tree_model);
  
  if (parent)
    return FALSE;

  if (n >= rgtk_data_frame_get_n_rows(data_frame))
    return FALSE;

  iter->stamp = data_frame->stamp;
  iter->user_data = GINT_TO_POINTER(n);
  return TRUE;
}

static gboolean
rgtk_data_frame_iter_parent (GtkTreeModel *tree_model,
			    GtkTreeIter  *iter,
			    GtkTreeIter  *child)
{
  return FALSE;
}

USER_OBJECT_
R_rgtk_data_frame_get(USER_OBJECT_ s_data_frame)
{
	RGtkDataFrame *data_frame = RGTK_DATA_FRAME(getPtrValue(s_data_frame));
	return(rgtk_data_frame_get(data_frame));
}

static USER_OBJECT_
rgtk_data_frame_get (RGtkDataFrame *data_frame)
{
	g_return_val_if_fail (RGTK_IS_DATA_FRAME (data_frame), NULL_USER_OBJECT);
	return(data_frame->frame);
}

USER_OBJECT_
R_rgtk_data_frame_set (USER_OBJECT_ s_data_frame, USER_OBJECT_ s_frame, USER_OBJECT_ s_changed_rows, USER_OBJECT_ s_resort)
{
	RGtkDataFrame *data_frame = RGTK_DATA_FRAME(getPtrValue(s_data_frame));
	gint *changed_rows = asCArray(s_changed_rows, gint, asCInteger);
	gint nrows = GET_LENGTH(s_changed_rows);
	gboolean resort = asCLogical(s_resort);
	
	rgtk_data_frame_set(data_frame, s_frame, changed_rows, nrows, resort);
	
	return NULL_USER_OBJECT;
}

static void
rgtk_data_frame_set (RGtkDataFrame *data_frame,
			USER_OBJECT_ frame,
			gint *changed_rows, gint nrows, gboolean resort)
{
	gint i, old_nrows;
  gint frame_nrows = GET_LENGTH(getAttrib(frame, install("row.names")));
	GtkTreeIter iter;
	
	g_return_if_fail (RGTK_IS_DATA_FRAME (data_frame));
	g_return_if_fail (frame != NULL);
	
	old_nrows = rgtk_data_frame_get_n_rows(data_frame);
	
	R_ReleaseObject(data_frame->frame);
	R_PreserveObject(frame);
	
	data_frame->frame = frame;
	data_frame->stamp = data_frame->stamp++;

	for (i = 0; i < nrows; i++) {
		gint row = changed_rows[i];
		GtkTreePath *path = gtk_tree_path_new_from_indices(row, -1);
		gtk_tree_model_get_iter(GTK_TREE_MODEL(data_frame), &iter, path);
		if (row < old_nrows)
			gtk_tree_model_row_changed(GTK_TREE_MODEL(data_frame), path, &iter);
		else gtk_tree_model_row_inserted(GTK_TREE_MODEL(data_frame), path, &iter);
		gtk_tree_path_free(path);
	}
  if (old_nrows > frame_nrows) {
    GtkTreePath *path = gtk_tree_path_new_from_indices(frame_nrows, -1);
    for (i = frame_nrows; i < old_nrows; i++)
      gtk_tree_model_row_deleted(GTK_TREE_MODEL(data_frame), path);
    gtk_tree_path_free(path);
  }
	if (data_frame->sort_id != -1 && resort)
		rgtk_data_frame_resort(data_frame);
}

static void rgtk_data_frame_set_sort_closure(RGtkDataFrame *frame, USER_OBJECT_ closure)
{
	g_return_if_fail (RGTK_IS_DATA_FRAME (frame));
	g_return_if_fail (TYPEOF(closure) == CLOSXP);
	if (frame->sort_closure)
		R_ReleaseObject(frame->sort_closure);
	R_PreserveObject(closure);
	frame->sort_closure = closure;
}

static void
rgtk_data_frame_remove (RGtkDataFrame *data_frame,
			USER_OBJECT_ frame,
			gint *deleted_rows, gint nrows)
{
	gint i;
	
	g_return_if_fail (RGTK_IS_DATA_FRAME (data_frame));
	g_return_if_fail (frame != NULL);
	
	data_frame->frame = frame;
	data_frame->stamp = data_frame->stamp++;
	
	for (i = 0; i < nrows; i++) {
		GtkTreePath *path = gtk_tree_path_new_from_indices(deleted_rows[i], -1);
		gtk_tree_model_row_deleted(GTK_TREE_MODEL (data_frame), path);
		gtk_tree_path_free (path);
	}
}

static gint
rgtk_data_frame_get_n_rows (RGtkDataFrame *data_frame)
{
	gint nrows;
	if (!data_frame->frame)
		return(0);
	nrows = GET_LENGTH(getAttrib(data_frame->frame, install("row.names")));
	return(nrows);
}

/* attempt at GtkTreeSortable implementation */

static gboolean
rgtk_data_frame_get_sort_column_id (GtkTreeSortable *sortable,
									   gint            *sort_col_id,
									   GtkSortType     *order)
{
    RGtkDataFrame *frame;

    g_return_val_if_fail ( sortable != NULL        , FALSE );
    g_return_val_if_fail ( RGTK_IS_DATA_FRAME(sortable), FALSE );

    frame = RGTK_DATA_FRAME(sortable);

    if (sort_col_id)
      *sort_col_id = frame->sort_id;

    if (order)
      *order =  frame->sort_order;

    return TRUE;
}
  
static void
rgtk_data_frame_set_sort_column_id (GtkTreeSortable *sortable,
									   gint             sort_col_id,
									   GtkSortType      order)
{
	RGtkDataFrame *frame;

	g_return_if_fail ( sortable != NULL );
    g_return_if_fail ( RGTK_IS_DATA_FRAME(sortable) );

    frame = RGTK_DATA_FRAME(sortable);

    if (frame->sort_id == sort_col_id && frame->sort_order == order)
      return;

    frame->sort_id = sort_col_id;
    frame->sort_order  = order;

	if (sort_col_id != -1)
		rgtk_data_frame_resort(frame);

    /* emit "sort-column-changed" signal to tell any tree views
     *  that the sort column has changed (so the little arrow
     *  in the column header of the sort column is drawn
     *  in the right column)                                     */

    gtk_tree_sortable_sort_column_changed(sortable);
}
  
static void
rgtk_data_frame_set_sort_func (GtkTreeSortable        *sortable,
									   gint                    sort_col_id,
                                      GtkTreeIterCompareFunc  sort_func,
                                      gpointer                user_data,
                                      GtkDestroyNotify        destroy_func)
{
    g_warning ("%s is not supported by the RGtkDataModel model.\n", __FUNCTION__);
}


static void
rgtk_data_frame_set_default_sort_func (GtkTreeSortable        *sortable,
                                              GtkTreeIterCompareFunc  sort_func,
                                              gpointer                user_data,
                                              GtkDestroyNotify        destroy_func)
{
    g_warning ("%s is not supported by the RGtkDataModel model.\n", __FUNCTION__);
}


static gboolean
rgtk_data_frame_has_default_sort_func (GtkTreeSortable *sortable)
{
	return FALSE;
}

static void
rgtk_data_frame_resort(RGtkDataFrame *frame) {
	USER_OBJECT_ e, val, tmp, envir = R_GlobalEnv;
	int errorOccurred = 0;
	
	g_return_if_fail (frame->sort_id != -1);
	g_return_if_fail (RGTK_IS_DATA_FRAME (frame));
	
	PROTECT(e = allocVector(LANGSXP, 4));
	SETCAR(e, frame->sort_closure);
	tmp = CDR(e);
	SETCAR(tmp, toRPointer(frame, "RGtkDataFrame"));
	tmp = CDR(tmp);
	SETCAR(tmp, asRInteger(frame->sort_id));
	tmp = CDR(tmp);
	SETCAR(tmp, asRLogical(frame->sort_order == GTK_SORT_DESCENDING));
	
	val = R_tryEval(e, envir, &errorOccurred);
	
	if (!errorOccurred) {
		GtkTreePath *path = gtk_tree_path_new ();
		rgtk_data_frame_set(frame, VECTOR_ELT(val,0), NULL, 0, 0);
		gtk_tree_model_rows_reordered (GTK_TREE_MODEL (frame),
				 path, NULL, INTEGER_DATA(VECTOR_ELT(val,1)));
	}
	
	UNPROTECT(1);
}

