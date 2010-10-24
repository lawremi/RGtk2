\alias{gtkCListColumnTitleActive}
\name{gtkCListColumnTitleActive}
\title{gtkCListColumnTitleActive}
\description{
Sets the specified column in the \code{\link{GtkCList}} to become selectable.  You can
then respond to events from the user clicking on a title button, and take
appropriate action.
\strong{WARNING: \code{gtk_clist_column_title_active} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListColumnTitleActive(object, column)}
\arguments{
\item{\verb{object}}{The \code{\link{GtkCList}} to affect.}
\item{\verb{column}}{The column to make active, counting from 0.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
