\alias{GtkList}
\alias{gtkList}
\name{GtkList}
\title{GtkList}
\description{Widget for packing a list of selectable items}
\usage{gtkList(show = TRUE)}
\section{Methods and Functions}{
\link{gtkListNew}(show = TRUE)
\link{gtkListInsertItems}(object, items, position)
\link{gtkListAppendItems}(object, items)
\link{gtkListPrependItems}(object, items)
\link{gtkListRemoveItems}(object, items)
\link{gtkListClearItems}(object, start, end)
\link{gtkListSelectItem}(object, item)
\link{gtkListUnselectItem}(object, item)
\link{gtkListSelectChild}(object, child)
\link{gtkListUnselectChild}(object, child)
\link{gtkListChildPosition}(object, child)
\link{gtkListSetSelectionMode}(object, mode)
\link{gtkListExtendSelection}(object, scroll.type, position, auto.start.selection)
\link{gtkListStartSelection}(object)
\link{gtkListEndSelection}(object)
\link{gtkListSelectAll}(object)
\link{gtkListUnselectAll}(object)
\link{gtkListScrollHorizontal}(object, scroll.type, position)
\link{gtkListScrollVertical}(object, scroll.type, position)
\link{gtkListToggleAddMode}(object)
\link{gtkListToggleFocusRow}(object)
\link{gtkListToggleRow}(object, item)
\link{gtkListUndoSelection}(object)
\link{gtkListEndDragSelection}(object)
}
\section{Hierarchy}{\preformatted{  \link{GObject}
   +----\link{GtkObject}
         +----\link{GtkWidget}
               +----\link{GtkContainer}
                     +----GtkList}}
\section{Interfaces}{GtkList implements
 AtkImplementorIface.}
\section{Detailed Description}{The \code{\link{GtkList}} widget is a container whose children are displayed
vertically in order, and can be selected.

The list has many selection modes, which are programmer selective and
depend on how many elements are able to be selected at the same time.
  
GtkList has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.}
\section{Structures}{\describe{\item{\code{GtkList}}{
\strong{WARNING: \code{GtkList} is deprecated and should not be used in newly-written code.  }


}}}
\section{Convenient Construction}{\code{gtkList} is the equivalent of \code{\link{gtkListNew}}.}
\section{Signals}{\describe{
\item{\code{select-child(list, widget, user.data)}}{
The child \code{widget} has just been selected.

\describe{
\item{\code{list}}{[\code{\link{GtkList}}] the object which received the signal.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the newly selected child.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{selection-changed(list, user.data)}}{
The selection of the widget has just changed.

\describe{
\item{\code{list}}{[\code{\link{GtkList}}] the object which received the signal.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
\item{\code{unselect-child(list, widget, user.data)}}{
The child \code{widget} has just been unselected.

\describe{
\item{\code{list}}{[\code{\link{GtkList}}] the object which received the signal.}
\item{\code{widget}}{[\code{\link{GtkWidget}}] the newly unselected child.}
\item{\code{user.data}}{[R object] user data set when the signal handler was connected.}
}

}
}}
\section{Properties}{\describe{\item{\code{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

  Default value: GTK_SELECTION_NONE

}}}
\references{\url{http://developer.gnome.org/doc/API/2.0/gtk/GtkList.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
