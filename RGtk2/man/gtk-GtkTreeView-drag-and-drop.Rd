\alias{gtk-GtkTreeView-drag-and-drop}
\alias{GtkTreeDragSource}
\alias{GtkTreeDragDest}
\name{gtk-GtkTreeView-drag-and-drop}
\title{GtkTreeView drag-and-drop}
\description{Interfaces for drag-and-drop support in GtkTreeView}
\usage{
\link{gtkTreeDragSourceDragDataDelete}(object, path)
\link{gtkTreeDragSourceDragDataGet}(object, path)
\link{gtkTreeDragSourceRowDraggable}(object, path)
\link{gtkTreeDragDestDragDataReceived}(object, dest, selection.data)
\link{gtkTreeDragDestRowDropPossible}(object, dest.path, selection.data)
\link{gtkTreeSetRowDragData}(object, tree.model, path)
\link{gtkTreeGetRowDragData}(object)
}
\details{GTK+ supports Drag-and-Drop in tree views with a high-level and a low-level 
API.
  
The low-level API consists of the GTK+ DND API, augmented by some treeview 
utility functions: \code{\link{gtkTreeViewSetDragDestRow}},
\code{\link{gtkTreeViewGetDragDestRow}}, \code{\link{gtkTreeViewGetDestRowAtPos}}, 
\code{\link{gtkTreeViewCreateRowDragIcon}}, \code{\link{gtkTreeSetRowDragData}} and
\code{\link{gtkTreeGetRowDragData}}. This API leaves a lot of flexibility, but
nothing is done automatically, and implementing advanced features like
hover-to-open-rows or autoscrolling on top of this API is a lot of work.
  
On the other hand, if you write to the high-level API, then all the 
bookkeeping of rows is done for you, as well as things like hover-to-open 
and auto-scroll, but your models have to implement the 
\code{\link{GtkTreeDragSource}} and \code{\link{GtkTreeDragDest}} interfaces.}
\section{Hierarchy}{\preformatted{
  GInterface
   +----GtkTreeDragSource
  GInterface
   +----GtkTreeDragDest
}}
\section{Structures}{\describe{
\item{\code{GtkTreeDragSource}}{\emph{undocumented
}}
\item{\code{GtkTreeDragDest}}{\emph{undocumented
}}
}}
\section{Implementations}{GtkTreeDragSource is implemented by
 \code{\link{GtkTreeModelSort}},  \code{\link{GtkTreeStore}},  \code{\link{GtkListStore}} and  \code{\link{GtkTreeModelFilter}}.  
GtkTreeDragDest is implemented by
 \code{\link{GtkTreeStore}} and  \code{\link{GtkListStore}}.}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/gtk-GtkTreeView-drag-and-drop.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
