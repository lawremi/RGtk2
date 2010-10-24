\alias{gtkListUndoSelection}
\name{gtkListUndoSelection}
\title{gtkListUndoSelection}
\description{
Restores the selection in the last state, only if selection mode is
\verb{GTK_SELECTION_EXTENDED}. If this function is called twice, the selection is
cleared. This function sometimes gives stranges "last states".
\strong{WARNING: \code{gtk_list_undo_selection} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListUndoSelection(object)}
\arguments{\item{\verb{object}}{the list widget.}}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
