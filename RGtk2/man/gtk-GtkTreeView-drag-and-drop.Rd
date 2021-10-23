\alias{gtk-GtkTreeView-drag-and-drop}
\alias{GtkTreeDragSource}
\alias{GtkTreeDragDest}
\name{gtk-GtkTreeView-drag-and-drop}
\title{GtkTreeView drag-and-drop}
\description{Interfaces for drag-and-drop support in GtkTreeView}
\section{Methods and Functions}{
\code{\link{gtkTreeDragSourceDragDataDelete}(object, path)}\cr
\code{\link{gtkTreeDragSourceDragDataGet}(object, path)}\cr
\code{\link{gtkTreeDragSourceRowDraggable}(object, path)}\cr
\code{\link{gtkTreeDragDestDragDataReceived}(object, dest, selection.data)}\cr
\code{\link{gtkTreeDragDestRowDropPossible}(object, dest.path, selection.data)}\cr
\code{\link{gtkTreeSetRowDragData}(object, tree.model, path)}\cr
\code{\link{gtkTreeGetRowDragData}(object)}\cr
}
\section{Hierarchy}{\preformatted{
GInterface
   +----GtkTreeDragSource
GInterface
   +----GtkTreeDragDest
}}
\section{Implementations}{GtkTreeDragSource is implemented by
 \code{\link{GtkListStore}},  \code{\link{GtkTreeModelFilter}},  \code{\link{GtkTreeModelSort}} and  \code{\link{GtkTreeStore}}.  
GtkTreeDragDest is implemented by
 \code{\link{GtkListStore}} and  \code{\link{GtkTreeStore}}.}
\section{Detailed Description}{GTK+ supports Drag-and-Drop in tree views with a high-level and a low-level
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
\section{Structures}{\describe{
\item{\verb{GtkTreeDragSource}}{
\emph{undocumented
}

}
\item{\verb{GtkTreeDragDest}}{
\emph{undocumented
}

}
}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/gtk2-GtkTreeView-drag-and-drop.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
