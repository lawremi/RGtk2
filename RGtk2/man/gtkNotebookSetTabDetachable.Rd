\alias{gtkNotebookSetTabDetachable}
\name{gtkNotebookSetTabDetachable}
\title{gtkNotebookSetTabDetachable}
\description{Sets whether the tab can be detached from \code{notebook} to another
notebook or widget.}
\usage{gtkNotebookSetTabDetachable(object, child, detachable)}
\arguments{
\item{\code{object}}{[\code{\link{GtkNotebook}}]  a \code{\link{GtkNotebook}}}
\item{\code{child}}{[\code{\link{GtkWidget}}]  a child \code{\link{GtkWidget}}}
\item{\code{detachable}}{[logical]  whether the tab is detachable or not}
}
\details{Note that 2 notebooks must share a common group identificator
(see \code{\link{gtkNotebookSetGroupId}}) to allow automatic tabs
interchange between them.
  
If you want a widget to interact with a notebook through DnD
(i.e.: accept dragged tabs from it) it must be set as a drop
destination and accept the target "GTK\_NOTEBOOK\_TAB". The notebook
will fill the selection with a GtkWidget** pointing to the child
widget that corresponds to the dropped tab.
  
\preformatted{ static void
 on_drop_zone_drag_data_received (GtkWidget        *widget,
                                  GdkDragContext   *context,
                                  gint              x,
                                  gint              y,
                                  GtkSelectionData *selection_data,
                                  guint             info,
                                  guint             time,
                                  gpointer          user_data)
 {
   GtkWidget *notebook;
   GtkWidget **child;
   
   notebook = gtk_drag_get_source_widget (context);
   child = (void*) selection_data->data;
   
   process_widget (*child);
   gtk_container_remove (GTK_CONTAINER (notebook), *child);
 }
}
  
If you want a notebook to accept drags from other widgets,
you will have to set your own DnD code to do it.  

  Since  2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
