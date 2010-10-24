\alias{gtkCListSetSelectionMode}
\name{gtkCListSetSelectionMode}
\title{gtkCListSetSelectionMode}
\description{
Sets the selection mode for the specified CList.  This allows you to
set whether only one or more than one item can be selected at a time
in the widget.  Note that setting the widget's selection mode to one
of GTK_SELECTION_BROWSE or GTK_SELECTION_SINGLE will cause all the
items in the \code{\link{GtkCList}} to become deselected.
\strong{WARNING: \code{gtk_clist_set_selection_mode} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetSelectionMode(object, mode)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{mode}}{The GtkSelectionMode type to set for this CList.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
