\alias{gtkListToggleRow}
\name{gtkListToggleRow}
\title{gtkListToggleRow}
\description{
Toggles the child \code{item} of list. If the selection mode of \code{list} is
\code{GTK_SELECTION_BROWSE}, the item is selected, and the others are
unselected.
\strong{WARNING: \code{gtk_list_toggle_row} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListToggleRow(object, item)}
\arguments{
\item{\code{object}}{[\code{\link{GtkList}}] the list widget.}
\item{\code{item}}{[\code{\link{GtkWidget}}] the child to toggle.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
