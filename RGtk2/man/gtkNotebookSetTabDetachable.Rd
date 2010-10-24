\alias{gtkNotebookSetTabDetachable}
\name{gtkNotebookSetTabDetachable}
\title{gtkNotebookSetTabDetachable}
\description{Sets whether the tab can be detached from \code{notebook} to another
notebook or widget.}
\usage{gtkNotebookSetTabDetachable(object, child, detachable)}
\arguments{
\item{\verb{object}}{a \code{\link{GtkNotebook}}}
\item{\verb{child}}{a child \code{\link{GtkWidget}}}
\item{\verb{detachable}}{whether the tab is detachable or not}
}
\details{Note that 2 notebooks must share a common group identificator
(see \code{\link{gtkNotebookSetGroupId}}) to allow automatic tabs
interchange between them.
  
If you want a widget to interact with a notebook through DnD
(i.e.: accept dragged tabs from it) it must be set as a drop
destination and accept the target "GTK_NOTEBOOK_TAB". The notebook
will fill the selection with a GtkWidget** pointing to the child
widget that corresponds to the dropped tab.
\preformatted{
on_drop_zone_drag_data_received <- function(widget, context, x, y,
                                            selection_data, info, time,
                                            user_data)
{
  notebook <- context$getWidget()
  child <- selection_data$data
  # unfortunately, it's not possible to actually use 'child' - there
  # would need to be a way to derefernce it and make an externalptr
  # if you need this functionality, please let the RGtk2 maintainer know.
  # process_widget(child)
  # notebook$remove(child)
}
}
  
If you want a notebook to accept drags from other widgets,
you will have to set your own DnD code to do it.
  Since 2.10}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
