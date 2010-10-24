\alias{gtkListSetSelectionMode}
\name{gtkListSetSelectionMode}
\title{gtkListSetSelectionMode}
\description{
Set the list selection mode. The selection mode can be any value in
\code{\link{GtkSelectionMode}}:
\describe{
\item{\verb{GTK_SELECTION_SINGLE}}{Zero or one element may be selected.}
\item{\verb{GTK_SELECTION_BROWSE}}{Exactly one element is always selected (this can be false after you have
changed the selection mode).}
\item{\verb{GTK_SELECTION_MULTIPLE}}{Any number of elements may be selected. Clicks toggle the state of an
item.}
\item{\verb{GTK_SELECTION_EXTENDED}}{Any number of elements may be selected. Click-drag selects a range of
elements; the Ctrl key may be used to enlarge the selection, and
Shift key to select between the focus and the child pointed to.}
}
\strong{WARNING: \code{gtk_list_set_selection_mode} is deprecated and should not be used in newly-written code.}
}
\usage{gtkListSetSelectionMode(object, mode)}
\arguments{
\item{\verb{object}}{the list widget.}
\item{\verb{mode}}{the new selection mode.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
