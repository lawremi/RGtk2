\alias{gtkCListSetColumnVisibility}
\name{gtkCListSetColumnVisibility}
\title{gtkCListSetColumnVisibility}
\description{
Allows you to set whether a specified column in the \verb{\link{GtkCList}} should
be hidden or shown.  Note that at least one column must always be
showing, so attempting to hide the last visible column will be
ignored.
\strong{WARNING: \code{gtk_clist_set_column_visibility} is deprecated and should not be used in newly-written code.}
}
\usage{gtkCListSetColumnVisibility(object, column, visible)}
\arguments{
\item{\verb{object}}{[\verb{\link{GtkCList}}] The \verb{\link{GtkCList}} to affect.}
\item{\verb{column}}{[integer] The column to set visibility.}
\item{\verb{visible}}{[logical] \code{TRUE} or \code{FALSE}.}
}
\author{Derived by RGtkGen from GTK+ documentation}
\keyword{internal}
