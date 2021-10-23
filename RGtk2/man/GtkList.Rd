\alias{GtkList}
\alias{gtkList}
\name{GtkList}
\title{GtkList}
\description{Widget for packing a list of selectable items}
\section{Methods and Functions}{
\code{\link{gtkListNew}(show = TRUE)}\cr
\code{\link{gtkListInsertItems}(object, items, position)}\cr
\code{\link{gtkListAppendItems}(object, items)}\cr
\code{\link{gtkListPrependItems}(object, items)}\cr
\code{\link{gtkListRemoveItems}(object, items)}\cr
\code{\link{gtkListClearItems}(object, start, end)}\cr
\code{\link{gtkListSelectItem}(object, item)}\cr
\code{\link{gtkListUnselectItem}(object, item)}\cr
\code{\link{gtkListSelectChild}(object, child)}\cr
\code{\link{gtkListUnselectChild}(object, child)}\cr
\code{\link{gtkListChildPosition}(object, child)}\cr
\code{\link{gtkListSetSelectionMode}(object, mode)}\cr
\code{\link{gtkListExtendSelection}(object, scroll.type, position, auto.start.selection)}\cr
\code{\link{gtkListStartSelection}(object)}\cr
\code{\link{gtkListEndSelection}(object)}\cr
\code{\link{gtkListSelectAll}(object)}\cr
\code{\link{gtkListUnselectAll}(object)}\cr
\code{\link{gtkListScrollHorizontal}(object, scroll.type, position)}\cr
\code{\link{gtkListScrollVertical}(object, scroll.type, position)}\cr
\code{\link{gtkListToggleAddMode}(object)}\cr
\code{\link{gtkListToggleFocusRow}(object)}\cr
\code{\link{gtkListToggleRow}(object, item)}\cr
\code{\link{gtkListUndoSelection}(object)}\cr
\code{\link{gtkListEndDragSelection}(object)}\cr
\code{gtkList(show = TRUE)}
}
\section{Hierarchy}{\preformatted{GObject
   +----GInitiallyUnowned
         +----GtkObject
               +----GtkWidget
                     +----GtkContainer
                           +----GtkList}}
\section{Interfaces}{GtkList implements
 AtkImplementorIface and  \code{\link{GtkBuildable}}.}
\section{Detailed Description}{The \code{\link{GtkList}} widget is a container whose children are displayed
vertically in order, and can be selected.
The list has many selection modes, which are programmer selective and
depend on how many elements are able to be selected at the same time.
  
GtkList has been deprecated since GTK+ 2.0 and should not be used
in newly written code. Use \code{\link{GtkTreeView}} instead.}
\section{Structures}{\describe{\item{\verb{GtkList}}{
\strong{WARNING: \code{GtkList} is deprecated and should not be used in newly-written code.}
\emph{undocumented
}

}}}
\section{Convenient Construction}{\code{gtkList} is the equivalent of \code{\link{gtkListNew}}.}
\section{Signals}{\describe{
\item{\code{select-child(list, widget, user.data)}}{
The child \code{widget} has just been selected.

\describe{
\item{\code{list}}{the object which received the signal.}
\item{\code{widget}}{the newly selected child.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{selection-changed(list, user.data)}}{
The selection of the widget has just changed.

\describe{
\item{\code{list}}{the object which received the signal.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
\item{\code{unselect-child(list, widget, user.data)}}{
The child \code{widget} has just been unselected.

\describe{
\item{\code{list}}{the object which received the signal.}
\item{\code{widget}}{the newly unselected child.}
\item{\code{user.data}}{user data set when the signal handler was connected.}
}


}
}}
\section{Properties}{\describe{\item{\verb{selection-mode} [\code{\link{GtkSelectionMode}} : Read / Write]}{

  Default value: GTK_SELECTION_NONE

}}}
\references{\url{https://developer-old.gnome.org/gtk2/stable/GtkList.html}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
